// Import the DSS packages into our namespace to save on typing

(function(global) {
    var timer = new java.util.Timer();
    var counter = 1;
    var ids = {};

    global.setTimeout = function(fn, delay) {
        var id = counter;
        counter += 1;
        ids[id] = new JavaAdapter(java.util.TimerTask, { run : fn });
        timer.schedule(ids[id], delay);
        return id;
    };

    global.clearTimeout = function(id) {
        ids[id].cancel();
        timer.purge();
        delete ids[id];
    };

    global.setInterval = function(fn, delay) {
        var id = counter;
        counter += 1;
        ids[id] = new JavaAdapter(java.util.TimerTask, { run : fn });
        timer.schedule(ids[id], delay, delay);
        return id;
    };

    global.clearInterval = global.clearTimeout;

    // exports object in case of "isCommonJS"
    global.exports = {};

})(this);
importPackage(Packages.com.ti.debug.engine.scripting)
importPackage(Packages.com.ti.ccstudio.scripting.environment)
importPackage(Packages.java.lang)
importPackage(Packages.java.util)
// importPackage(Packages.java.util.timer)
// importPackage(Packages.java.util.timertask)
// importClass(Packages.java.lang.Object)
importClass(java.util.Timer)
importPackage(java.util.Window)
importClass(java.util.TimerTask, java.lang.System)
importPackage(Packages.java.io)
importPackage(Packages.java.toString)
// importPackage(Packages.java.io.FileInputStream)
// importPackage(Packages.java.io.ByteArrayOutputStream)
// importPackage(Packages.java.io.IOException)


// Create our scripting environment object - which is the main entry point into any script and
// the factory for creating other Scriptable ervers and Sessions
var script = ScriptingEnvironment.instance()

var seed_dir = "./seeds/";
var results = "./resutls/";
var local_pool_size = 15 
var global_pool_size = 0

var seed_size = 128
var coverage_size = 200
var lp_refresh_address;
var crash_void_address;
var coverage_bubble_address;
var amount_of_crashes = 0;
var current_program = "DSPFuzz.out"
var asm_in_memory;
var sanity_id = null;


var start_time = java.lang.System.currentTimeMillis()

var iterations = 0



function padStart(str, targetLength, padChar) {
    // If the string is already the target length or longer, return it as is
    if (str.length >= targetLength) {
        return str;
    }
    
    // Calculate the number of characters to pad
    var paddingLength = targetLength - str.length;
    var padding = '';
    
    // Create the padding manually
    while (paddingLength > 0) {
        padding += padChar;
        paddingLength--;
    }
    return padding + str;
}

function argument_handler(args){
	//Loop through the arguments and parse both the functions and branches
	//TODO: IMPLEMENT THIS SECTION.
	for(var i = 0; i < args.length; i++){
		if(args[i] === "-l"){		
			continue;
		}
		else if(args[i] === "-b"){
			continue;
		}
		else if(args[i] =="-o"){
			continue
		}
		else if(args[i] == "-i"){
			continue
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
	debugServer.setConfig("USBSTK5515_SIM.ccxml");
	debugSession = debugServer.openSession(".*")
	debugSession.target.connect()
	debugSession.clock.enable()

	// Start the Clock
	//script.traceWrite("Enabling clock...");

	// refresh_global_pool()
	
	// Get the name of our ISA - used to build the path to the OUT file
	//var isaName = Target.ISA.lookupISA(debugSession.getMajorISA())
	var isaName = "../examples/C55"

	debugSession.memory.loadProgram(current_program)	
}

function refresh_global_pool(){
	//Seeds are stored in a seeds dir.
	try{
		var dir = new File(seed_dir)
		listofSeeds = dir.list()
		// for ( var i = 0; i < listofSeeds.length; i++){
		// 	print(listofSeeds[i])
		// }
		num_of_seeds = listofSeeds.length
	}
	catch (Exception){
		print("DSERROR: No seed directory present.")
	}
	//See if we are out of seeds if so quit..
	//TODO: Handle the case if we are lacking seeds to load onto the board.
	// if(local_pool_size >= listofSeeds.length){
	// 	print("DSERROR: Seed Starvation")
	// 	debugServer.stop();
	// 	java.lang.System.exit(-1);
	// }
	return num_of_seeds
}

function seed_reader(id){
	var current_seed = []

	refresh_global_pool()

	//Seeds are stored in a seeds dir and then label 1->X
	var file = new File(seed_dir + id)
	var scanner  = new Scanner(file)
	while(scanner.hasNextLine()){
		current_seed.push(scanner.nextLine())
	}
	scanner.close()

	return current_seed
}

function set_intial_breakpoints(){

	//Adds a breakpoint at the void
    crash_void_address = debugSession.symbol.getAddress('crash_void')
    debugSession.breakpoint.add(crash_void_address) 
	print(crash_void_address)

	//Coverage map address
	coverage_map_address = debugSession.symbol.getAddress('coverage_map')

    //Adds a breakpoint before deqeuing the next seed.
    lp_refresh_address = debugSession.symbol.getAddress('dequeue_seed')
    lp_refresh_id = debugSession.breakpoint.add(lp_refresh_address)
	print(lp_refresh_address)

    //Adds a breakpoint if we have a coverage increasing input.
    coverage_bubble_address = debugSession.symbol.getAddress('bubble_coverage')
    coverage_bubble_id = debugSession.breakpoint.add(coverage_bubble_address)
	print(coverage_bubble_address)

	print('-----Inital Breakpoints Set------')
	// debugSession.target.run()

	

}

function pull_statistics(){
	end_time = java.lang.System.currentTimeMillis()

	it_address = debugSession.symbol.getAddress('iterations')
	stage_cycle_address = debugSession.symbol.getAddress('stage_cycles')
    stage_cycles = debugSession.memory.readData(0, stage_cycle_address, 16)

    mutation_amount_address = debugSession.symbol.getAddress('mutation_degression')
    mutation_amount = debugSession.memory.readData(0,mutation_amount_address, 16)
    mutation_amount = 100 / mutation_amount 

    if(stage_cycles < 2){
        print("Effective Mutaton: bitflip 1/1 |Mutation Percentage: ",mutation_amount)
	}
    else if(stage_cycles < 4){
        print("Effective Mutaton: bitflip 2/1 |Mutation Percentage: ",mutation_amount)
	}
    else if(stage_cycles < 6){
        print("Effective Mutaton: bitflip 4/1 |Mutation Percentage: ",mutation_amount)
	}
    else if(stage_cycles < 8){
        print("Effective Mutaton: byteflip 1/1 |Mutation Percentage: ",mutation_amount)
	}
    else if(stage_cycles < 10){
        print("Effective Mutaton: bitflip 2/1 |Mutation Percentage: ",mutation_amount)
	}
    else if(stage_cycles < 12){
        print("Effective Mutaton: bitflip 4/1 |Mutation Percentage: ",mutation_amount)
	}
    else if(stage_cycles < 48){
        print("Effective Mutaton: arith-add |Mutation Percentage: ",mutation_amount)
	}
    else if(stage_cycles < 48){
        print("Effective Mutaton: arith-sub |Mutation Percentage: ",mutation_amount)
	}
    else if(stage_cycles > 47){
        print("Effective Mutation: random |Mutation Percentage: ",mutation_amount)
	}
	
	//Read the number of iterations
	try{
		iterations = debugSession.memory.readData(1, it_address ,16)
	}
	catch(error){
		print('ERROR: Problem trying to read the number of iterations.')
	}


	var elapsed_time = end_time - start_time

	print('Total number of iterations: ' + (iterations))
	print('Elapsed since the start: ' + elapsed_time/1000)
    print('Average throughput time: ' + ((elapsed_time/1000)/iterations))
}

// const fs = require('fs');
// const binascii = require('binascii');

// function _readRawBinary(binPath) {
//     var rawBinary = [];
// 	// var file = new File("./"+binPath);
// 	// var scanner  = new Scanner(file);
// 	// while(scanner.hasNextLine()){
// 	// 	rawBinary.push(padStart((scanner.nextLine()).toString(16), 2, '0'))
// 	// }
// 	var fileInputStream = new FileInputStream("./"+binPath); 
// 	var  byteArrayOutputStream = new ByteArrayOutputStream()
// 	try{
// 	// Read the file byte by byte and write to ByteArrayOutputStream
// 		while ((byteData = fileInputStream.read()) != -1) {
// 			byteArrayOutputStream.write(byteData);
// 		}

// 		// Convert the output stream to a byte array
// 		var byteArray = byteArrayOutputStream.toByteArray();

// 		// Print the byte array in hexadecimal format
// 		for (b : byteArray) {
// 			print("%02x ", b);
// 		}
// 	}
// 	catch(e) {
// 		e.printStackTrace();
// 	}
//    	var byteData;


//     // let buffer = fs.readFileSync(binPath);

//     // for (let i = 0; i < buffer.length; i++) {
//     //     rawBinary.push(buffer[i].toString(16).padStart(2, '0'));
//     // }
// 	print(byteArray)
//     return byteArray;
// }

// function findCalls(binPath, disasm) {
//     /**
//      * Searches binary file for our distinct byte value for our instrumentation i.e 0x6c014b19.
//      * When the beginning of a call is found its offset from the first call made in the program is saved along with the byte number to uninstrument later.
//      *
//      * @param {string} binPath - Path to the binary we are going to search.
//      * @param {number} disasm - Distinct byte value to search.
//      * @returns {Object} A dictionary -> offset: byte number
//      */

//     var rawBinary = [];
//     var callFunctionStarts = [];
//     var coverageLocations = {};

//     var flag1 = false;
//     var flag2 = false;
//     var flag3 = false;
// 	var bytes;
// 	var count;

//     // var byte1 = ((disasm >> 24) & 0xFF).toString(16).padStart(2, '0');
//     // print(byte1);
//     // var byte2 = ((disasm >> 16) & 0xFF).toString(16).padStart(2, '0');
//     // print(byte2);
//     // var byte3 = ((disasm >> 8) & 0xFF).toString(16).padStart(2, '0');
//     // print(byte3);
//     // var byte4 = (disasm & 0xFF).toString(16).padStart(2, '0');
//     // print(byte4);
// 	var byte1 = padStart(((disasm >> 24) & 0xFF).toString(16),2,'0');
//     print(byte1);
//     var byte2 = padStart(((disasm >> 16) & 0xFF).toString(16),2,'0');
//     print(byte2);
//     var byte3 = padStart(((disasm >> 8) & 0xFF).toString(16),2,'0');
//     print(byte3);
//     var byte4 = padStart(((disasm & 0xFF) & 0xFF).toString(16),2,'0');
//     print(byte4);
//     rawBinary = _readRawBinary(binPath);
// 	print(rawBinary)
//     rawBinary.forEach(bytes, count);{
//         if (bytes === byte1) {
//             flag1 = true;
//         } else if (bytes === byte2 && flag1) {
//             flag2 = true;
//         } else if (bytes === byte3 && flag2) {
//             flag3 = true;
//         } else if (bytes === byte4 && flag3) {
//             callFunctionStarts.push(count - 3);
//             flag1 = false;
//             flag2 = false;
//             flag3 = false;
//         } else {
//             flag1 = false;
//             flag2 = false;
//             flag3 = false;
//         }
//     }

//     for (var x = 0; x < callFunctionStarts.length; x++) {
//         coverageLocations[callFunctionStarts[x] - callFunctionStarts[0]] = callFunctionStarts[x];
//     }

//     return coverageLocations;
// }

// function uninstrument(coverageDict, coverageMap) {
//     /**
//      * Adds NOP's to provided binary file based on coverage map information.
//      * @param {Object} coverageDict - Dictionary containing coverage information.
//      * @param {Array} coverageMap - Array containing uncovered map locations.
//      * @returns {Object|null} New coverage dictionary after uninstrumentation.
//      */

//     if (!coverageDict){
// 		return null;
// 	}
//     var missingCoverage = false;
//     var rawBin = _readRawBinary(current_program);
//     var uncoverage = coverageMap;

//     if (!uncoverage){
// 		return null;
// 	}

//     var newCoverage = coverageDict;

//     print('-----Old Coverage-----\n', coverageDict);
//     print('-----Found Coverage-----\n', uncoverage);

//     uncoverage.forEach(offset); {
//         if (offset in coverageDict) {
//             var byteNumber = coverageDict[offset];

//             for (var x = byteNumber; x < byteNumber + 4; x++) {
//                 rawBin[x] = '20'; // NOP operation in hex
//             }

//             delete newCoverage[offset];
//         } else {
//             console.log('DSLOG: Coverage not found: ', offset);
//             missingCoverage = true;
//         }
//     }

//     var buffer = Buffer.from(rawBin.map(hex,parseInt(hex, 16)));
//     fs.writeFileSync('./DSPFuzz.out', buffer);

//     if (missingCoverage) return null;

//     console.log('-----New Coverage-----\n', newCoverage);
//     return newCoverage;
// }

function pull_coverage(address){
	for(i = 0; i< COVERAGE_SIZE; i++){
		var cov = 0
		coverage_map = []

        //Pull the coverage map when we find new coverage
        try{
            cov = debugSession.memory.readData(1,coverage_map_address + x, 16)
		}
        catch(Exception){
            //Sleep for a second and try again.
            print('ERROR: Failed to read memory.. sleeping and trying again.')
            
            cov = debugSession.memory.readData(1,coverage_map_address + x, 16)
		}
        //clear the coverage map when we find new coverage 
        try{
            debugSession.memory.writeData(1, coverage_map_address + x, 0, 16)
		}
        catch(Exception){
            print('ERROR: Failed to writting memory.. sleeping and trying again.')
            
            debugSession.memory.writeData(1, coverage_map_address + x, 0, 16)
		}
        //bin_cov = "{0:016b}".format(cov)
        coverage_map.append(cov)
	}
	return coverage_map
}

function crash_reload_and_run(){
	
	if(timeout_id){
		clearTimeout(timeout_id)
		timeout_id = null;
	}
	print("-----Crashing Test Case Found-----")

	//Pull timing statistics here
	// pull_statistics()
	amount_of_crashes++;
	print('You are here')
	//Lets get some addresses for the current seed
	current_seed_pointer_address = debugSession.symbol.getAddress('current_input')
    print('-----Current Seed Address -->', current_seed_pointer_address)
	try {
		current_seed_address = debugSession.memory.readData(1, current_seed_pointer_address , 32)	
	}
	catch (error) {
		current_seed_address = debugSession.memory.readData(1, current_seed_pointer_address , 32)
	}
    print('-----Current Seed Pointer -->', current_seed_address)

	//Pull the crashing test case into the crash directory
	pull_seed(current_seed_address, amount_of_crashes, results_dir+'crashes/', true)

	//Reset target
	debugSession.target.reset()
	print("-----Reloading target after crash-----")

	//Load Fuzzer Back Into Program
	debugSession.memory.loadProgram("DSPFuzz.out")

	print("-----Running target-----")

	//set breakpoints again and run
	set_intial_breakpoints()

	//Reschedule the timer.
	//Reschedule the timer.
	timeout = calculate_timeout(refresh_global_pool(),local_pool_size)
	var timeout_id = setTimeout(local_pool_refresh_handler, timeout)
	// timeout = calculate_timeout(refresh_global_pool(),local_pool_size)
	// local_pool_timer = new Timer(timeout, local_pool_refresh_handler());
	// local_pool_timer.setRepeats(false)
	// local_pool_timer.start()


}

function current_seed_to_global_pool(){
/*
*	Pulls current coverage increasing test case and the coverage list from the DSP.
*
*/

	if(timeout_id){
		clearTimeout(timeout_id)
		timeout_id = null;
	}
	
	pull_statistics()

	print("-------Found coverage-increasing input-------")

	//Lets get some addresses for the current seed
	current_seed_pointer_address = debugSession.symbol.getAddress('current_input')
    print('-----Current Seed Address -->', current_seed_pointer_address)
    current_seed_address = debugSession.memory.readData(1, current_seed_pointer_address , 32)
    print('-----Current Seed Pointer -->', current_seed_address)

	cov = pull_coverage(coverage_map_address)

	//Uninsturment the binary here
	//test_dict = uninstrument(coverage_dict, cov)

	if(test_dict != null){
		coverage_dict = test_dict
		global_pool_size = refresh_global_pool() + 1

		//Pull seed from the input buffer and store it in the global seed pool
		pull_seed(current_seed_address, global_pool_size, seed_dir,false)
		write_local_pool()
		//Reschedule the timer.
		//Reschedule the timer.
		timeout = calculate_timeout(refresh_global_pool(),local_pool_size)
		timeout_id = setTimeout(local_pool_refresh_handler, timeout)
		// timeout = calculate_timeout(refresh_global_pool(),local_pool_size)
		// local_pool_timer = new Timer(timeout, local_pool_refresh_handler());
		// local_pool_timer.setRepeats(false)
		// local_pool_timer.start()
	}
	else{
		print('-----Found a trouble seed-----')
		crash_reload_and_run()
	}
}


function pull_seed(seed_address, seed_id, dir, isCrash){
	var seed;
	var date = new Date().toLocaleString();
	if(isCrash){
		var file = new File(dir+ date)
	}
	else{
		var file = new File(dir + seed_id)
	}
	// var date = new Date().toLocaleString();
	for(var i = 0; i < SEED_SIZE; i++){
		
		try {
			seed = (debugSession.memory.readData(1, seed_address + i, 16))
		} catch (error) {
			print('ERROR: Memory read error wait a second and try again.')
			seed = (debugSession.memory.readData(1, seed_address + i, 16))
		}

		if(i === 0){
			file.write(seed)
		}
		else{
			file.write('\n' + seed)
		}
	}

}



function write_local_pool(){
/* Writes the local to a DSP target.
	@Arguments: None
	@Return: None
*/

	var i = 0
	pool_address = debugSession.symbol.getAddress("local_pool")
	pool_tracker_address = debugSession.symbol.getAddress('current_seed_num')

	num_of_seeds = refresh_global_pool() //Refresh scripts index of avaiable seeds from the global seed pool 
	if( num_of_seeds < local_pool_size){
		for(i = 0; i < num_of_seeds; i++){

			var seed_to_be_loaded = seed_reader(i)
			debugSession.memory.writeData(1, pool_address, seed_to_be_loaded, 16)
			pool_address = pool_address + seed_size;

		}
	}
	else if(num_of_seeds >= local_pool_size){
		for(i = 0; i < num_of_seeds; i++){
			//TODO: Make sure there are no repeat seeds in the local pool.
			var seed_to_be_loaded = seed_reader(Math.random % local_pool_size)
			debugSession.memory.writeData(1, pool_address, seed_to_be_loaded, 16)
			pool_address = pool_address + seed_size;
		}
	}

	debugSession.memory.writeData(1, pool_tracker_address, num_of_seeds, 16)
	
	print('-----Local Pool Written-----')

}

function calculate_timeout(gp, lp){
/* calculate_timeout 
*  Arguments: gp: current global pool size
*  lp: set local pool size
*  Return: a timeout value in milliseconds.
*/
	if(gp <= lp){
		return 60000 //Timeout in milliseconds
	}
	else{
		return Math.max(90000, 1200000 - (gp * 15000))
	}
}

// class local_pool_refresh_handler extends TimerTask(){

// 	public void run(){

// 	if(local_pool_timer){
// 		local_pool_timer.cancel();
// 		local_pool_timer.purge();
// 	}
// 	var lp_refresh_id = debugSession.breakpoint.add(lp_refresh_address);
// 	}
// }
function local_pool_refresh_handler(){
/*
*	Sets our corpusWaiting flag to true and waits till the DSP is ready to refresh the local pool.    
*	Arguments: None
*	Return: None
*/
if(timeout_id){
	clearTimeout(timeout_id)
	timeout_id = null;
}
	debugSession.target.halt()
	lp_refresh_id = debugSession.breakpoint.add(lp_refresh_address)
	pull_statistics()
	debugSession.target.runAsynch()

	print("-----Starting Sanity Check------")
	// var sanity_timer = new Timer(60000, local_pool_refresh_handler());
	// sanity_timer.setRepeats(false)
	// sanity_timer.start()
	// var sanity_id = setTimeout(crash_reload_and_run(), 600000)
}

function refresh_local_pool(){

	if(timeout_id){
		clearTimeout(timeout_id)
		timeout_id = null;
	}
	// if(local_pool_timer){
	// 	local_pool_timer.cancel()
	// 	local_pool_timer.purge()
	// }
	// if(sanity_id){
	// 	clearTimeout(sanity_id)
	// 	sanity_id = null;
	// }
	
	write_local_pool()
	//Remove the breakpoint until next refresh
	debugSession.breakpoint.remove(lp_refresh_id )

	//Reschedule the timer.
	timeout = calculate_timeout(refresh_global_pool(),local_pool_size)
	timeout_id = setTimeout(local_pool_refresh_handler, timeout)
	// local_pool_timer = new Timer(timeout, local_pool_refresh_handler());
	// local_pool_timer.setRepeats(false)
	// local_pool_timer.start()


}
function findCoverageCall() {
/**
 * Locates the asm instructions for a call to the coverage logging function.
 * This is done once at the start to find what the call is.
 */

    var sutAddressVar = debugSession.symbol.getAddress('sut_start_address');
    var sutAddress = debugSession.memory.readData(1, sutAddressVar, 32);

    if (sutAddress % 2) {
        var firstPart = debugSession.memory.readData(1, Math.floor(sutAddress / 2), 32);
        var secondPart = debugSession.memory.readData(1, Math.floor(sutAddress / 2) + 1, 32);

        var fpHex = firstPart.toString(16);
        var spHex = secondPart.toString(16);
        print(fpHex);
        print(spHex);

        var result1 = fpHex.slice(-1);    // Equivalent to fp_hex[7:]
        var result2 = spHex.slice(0, 4);  // Equivalent to sp_hex[2:6]
        asmInMem = "0x" + result1 + result2;

        print(asmInMem);
    } else {
        asmInMem = debugSession.memory.readData(1, Math.floor(sutAddress / 2), 32);
        print(asmInMem.toString(16));
    }

    asmInMem = 1812024589;  // Hardcoded instruction (likely for testing purposes)
    print(asmInMem.toString(16));
}

function device_listener(){
/***	
*	After connection is established poll device to see if the following conditons are met: Timeout, Crash, or Coverage increasing seed needs to be bubbled up.
*	Arguments: None
*	Return: This function should never return. 
***/

	while(1){
		
		// if(sanity_id){
		// 	clearTimeout(sanity_id)
		// 	sanity_id = null;
		// }
		//Add sanity_check here

		// if(!(debugSession.target.waitForHalt())){
		// 	print("Checking")
		// 	continue;
		// }
		debugSession.target.waitForHalt()
		var pc = debugSession.expression.evaluate("PC")
		print(pc)
		print(coverage_bubble_address)
		if (pc === crash_void_address){
			crash_reload_and_run()
		}
		if(pc === coverage_bubble_address){
			current_seed_to_global_pool()
		}
		if(pc === lp_refresh_address){
			refresh_local_pool()
		}
		try {
			debugSession.target.runAsynch()	
		} catch (error) {
			crash_reload_and_run()
		}

	}		
}



setup()
set_intial_breakpoints()
// write_local_pool()
findCoverageCall()
//findCalls(current_program, asm_in_memory)


// var timers = new Timers()
// timers.install()
// var task = new local_pool_refresh_handler();
timeout = calculate_timeout(refresh_global_pool(),local_pool_size)
// var local_pool_timer = new Timer(timeout, local_pool_refresh_handler());
// local_pool_timer.setRepeats(false)
// local_pool_timer.start()
// local_pool_timer.schedule(local_pool_refresh_handler(), timeout);
var timeout_id = setTimeout(local_pool_refresh_handler, timeout)
print('-----Starting Test------')

device_listener()

// We Should Never Get Here
print("ERROR: THIS IS BAD")
script.traceEnd()
