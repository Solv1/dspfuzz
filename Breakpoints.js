// Import the DSS packages into our namespace to save on typing
importPackage(Packages.com.ti.debug.engine.scripting)
importPackage(Packages.com.ti.ccstudio.scripting.environment)
importPackage(Packages.java.lang)
importPackage(Packages.java.util)

// Create our scripting environment object - which is the main entry point into any script and
// the factory for creating other Scriptable ervers and Sessions
var script = ScriptingEnvironment.instance()
var bus_error; 

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

function set_breakpoints(){
	print("LOG: Setting Breakpoints in program")
	error = debugSession.symbol.getAddress("the_void")
	bpBusError = debugSession.breakpoint.add(error) // Adds a breakpoint at the void
}

function reload_and_run(){
	
	var corpus_address = debugSession.symbol.getAddress("seed_corpus")
	
	var data = debugSession.memory.readData(Memory.Page.PROGRAM, corpus_address, 16, 128, false)

	var x
	for (x in data)
	{
		print("data[" + x + "]=0x" + Long.toHexString(data[x]))
	}

	debugSession.target.reset()
	print("LOG: Reloading target after crash")
	debugSession.memory.loadProgram("DSP_Fuzzer.out")
	set_breakpoints()
	debugSession.target.run()
}

function check_for_errors(pc){

	if (pc == error){
		// var error_type_address = debugSession.symbol.getAddress("isError")
		// var seed_address = debugSession.symbol.getAddress("seed_corpus")

		// var data = debugSession.memory.readWord(1, seed_address ,258, false); //1 is for DATA Memory Page
		// for(var i = 0; i < data.length; i++){
		// 	hexString = data[i].toString(16)
		// 	print(hexString)
		// }
		// var error_type = debugSession.memory.readWord(1, error_type_address ,1, false); //1 is for DATA Memory Page
		// if(error_type == 3){
		// 	print("LOG: Found a bus error...")
		// }
		// else if(error_type == 4){
		// 	print("LOG: Found a data log error...")
		// }
		reload_and_run() //Reloads the program and runs starting with out intial seed...
		
	}
}

//Handles Passed In breakpoints
//argument_handler(arguments);

// Create a log file in the current directory to log script execution
script.traceBegin("BreakpointsTestLog.xml", "DefaultStylesheet.xsl")

// Set our TimeOut
script.setScriptTimeout(15000000)

// Log everything
script.traceSetConsoleLevel(TraceLevel.INFO)
script.traceSetFileLevel(TraceLevel.INFO)

// Get the Debug Server and start a Debug Session
debugServer = script.getServer("DebugServer.1")
debugServer.setConfig("USBSTK5515_BOARD.ccxml");
debugSession = debugServer.openSession(".*")
debugSession.target.connect()

// Start the Clock
//script.traceWrite("Enabling clock...");
debugSession.clock.enable()
			
// Get the name of our ISA - used to build the path to the OUT file
//var isaName = Target.ISA.lookupISA(debugSession.getMajorISA())
var isaName = "../examples/C55"

debugSession.memory.loadProgram("DSP_Fuzzer.out")

//Sets Breakpoints in the Acutal Program

//print("Exit at " + exit_address)
set_breakpoints()

//Restart our Target
debugSession.target.restart()
debugSession.target.run()
var mutator = debugSession.symbol.getAddress("mutator")
while(1){
	var pc = debugSession.expression.evaluate("PC")
	check_for_errors(pc)
	
}


// We Should Never Get Here
print("ERROR: THIS IS BAD")
script.traceEnd()
