// Import the DSS packages into our namespace to save on typing
importPackage(Packages.com.ti.debug.engine.scripting)
importPackage(Packages.com.ti.ccstudio.scripting.environment)
importPackage(Packages.java.lang)
importPackage(Packages.java.util)
// importPackage(Packages.java.util.timer)
// importPackage(Packages.java.util.timertask)
importClass(java.util.Timer)
importClass(java.util.TimerTask, java.lang.System)
importPackage(Packages.java.io)

// Create our scripting environment object - which is the main entry point into any script and
// the factory for creating other Scriptable ervers and Sessions
var script = ScriptingEnvironment.instance()
var bus_error; 

var listofSeeds = [];
var seed_dir = "./seeds/";
var local_pool_size = 15 //Hard coded for now need to change this to be an argument



function argument_handler(args){
	fun_flag = false
	branch_flag = false
	//Loop through the arguments and parse both the functions and branches
	for(var i = 0; i < args.length; i++){
		if(args[i] === "-f"){
			//Everything until the -b is a function name
			fun_flag = true		
			continue;
		}
		else if(args[i] === "-b"){
			fun_flag = false
			branch_flag = true 
			//print("Branch Flag hit")
			continue;
		}
		if(fun_flag){
			functions.push(args[i])
		}
		else if(branch_flag){
			branches.push(args[i])
		} 
	}
}

function setup(){
	// Create a log file in the current directory to log script execution
	script.traceBegin("BreakpointsTestLog.xml", "DefaultStylesheet.xsl")

	// Set our TimeOut
	script.setScriptTimeout(1500000000)

	// Log everything
	script.traceSetConsoleLevel(TraceLevel.INFO)
	script.traceSetFileLevel(TraceLevel.INFO)

	// Get the Debug Server and start a Debug Session
	debugServer = script.getServer("DebugServer.1")
	debugServer.setConfig("USBSTK5515_BOARD.ccxml");
	debugSession = debugServer.openSession(".*")
	debugSession.target.connect()
	debugSession.clock.enable()

	// Start the Clock
	//script.traceWrite("Enabling clock...");

	find_seeds()
	
	// Get the name of our ISA - used to build the path to the OUT file
	//var isaName = Target.ISA.lookupISA(debugSession.getMajorISA())
	var isaName = "../examples/C55"

	debugSession.memory.loadProgram("DSP_Fuzzer.out")	
}

function find_seeds(){
	//Seeds are stored in a seeds dir.
	try{
		var dir = new File(seed_dir)
		listofSeeds = dir.list()
		for ( var i = 0; i < listofSeeds.length; i++){
			print(listofSeeds[i])
		}
	}
	catch (Exception){
		print("DSERROR: No seed directory present.")
	}
	//See if we are out of seeds if so quit..
	//TODO: Handle the case if we are lacking seeds to load onto the board.
	if(local_pool_size >= listofSeeds.length){
		print("DSERROR: Seed Starvation")
		debugServer.stop();
		java.lang.System.exit(-1);
	}
}

function seed_reader(){
	var current_seed = []

	var random_number = Math.floor(Math.random() * local_pool_size)
	//Seeds are stored in a seeds dir and then label 1->X
	var file = new File(seed_dir + listofSeeds[random_number])
	var scanner  = new Scanner(file)
	while(scanner.hasNextLine()){
		current_seed.push(scanner.nextLine())
	}
	scanner.close()

	return current_seed
}

function set_breakpoints(){

	print("DSLOG: Setting Breakpoints in program")
	error = debugSession.symbol.getAddress("the_void")
	bpBusError = debugSession.breakpoint.add(error) // Adds a breakpoint at the void

	var corpusRefreshAddress = debugSession.symbol.getAddress("refresh_seed_corpus")
	debugSession.breakpoint.add(corpusRefreshAddress) //Set a breakpoint at the refresh_seed_corpus address.
}

function crash_reload_and_run(){
	//I assume thatseeds will be managed by this script in the background as the fuzzer runs.
	//TODO: manage seeds that come from the fuzzer. 

	//Reset target
	debugSession.target.reset()
	print("DSLOG: Reloading target after crash")

	//Load Fuzzer Back Into Program
	debugSession.memory.loadProgram("DSP_Fuzzer.out")

	//Set Breakpoints needed for crash detection-
	set_breakpoints()

	//Set breakpoint for seed refresh and let the fuzzer do its start up reoutine
	debugSession.target.run()

	check_for_refresh();

}



function check_for_errors(pc){

	//Reloads the program and runs starting with out intial seed...
	if (pc == error){
		crash_reload_and_run() 
	}
}

function check_for_refresh(){

	seed_reader()
	var time = java.lang.System.currentTimeMillis()

	//Every half of a second check for a seed refresh....
	if(time % 1000 == 0){ 
		print("DSLOG: We are in the seed refresh segment.")
		print(debugSession.memory.readData(1, corpusWaitingAddress,16))
		debugSession.memory.writeData(1,corpusWaitingAddress, 1, 16) //Set corpus waiting to true and wait for the fuzzer to sit in the while loop.
	}


	var refresh = debugSession.memory.readData(1, corpusWaitingAddress,16)
	//Refresh the corpus and then set corpusWaiting to false.
	if(refresh === 1){ 
		
		//TODO: Add argument for size of the corpus right now it is hard coded to be 15
		//TODO: Add the argument for seed size right now it is hard coded to be 514

		var i = 0
		var corpus = debugSession.symbol.getAddress("seed_corpus")
		find_seeds() //Refresh scripts index of avaiable seeds from the global seed pool 

		while( i < local_pool_size){

			var seed_to_be_loaded = seed_reader()
			debugSession.memory.writeData(1, corpus, seed_to_be_loaded, 16)
			corpus = corpus + 514
			i++
		}
		
		debugSession.memory.writeData(1,corpusWaitingAddress, 0, 16) //Set corpusWaiting to false.

		debugSession.target.run() //Continue execution.

	}


}
function main_loop(){
	while(1){
		
		var pc = debugSession.expression.evaluate("PC")
		check_for_errors(pc)
		check_for_refresh()
		
	}
}



setup()
var corpusWaitingAddress =  debugSession.symbol.getAddress("corpusWaiting")
set_breakpoints()
main_loop()

// We Should Never Get Here
print("ERROR: THIS IS BAD")
script.traceEnd()
