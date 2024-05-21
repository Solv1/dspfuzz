import jpype
import jpype.imports
from jpype.types import *

jpype.startJVM(classpath=['/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.ccstudio.scripting.environment_3.1.0.jar:/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/dss.jar:/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.debug.engine_1.0.0.jar'])

from com.ti.debug.engine.scripting import *
from com.ti.ccstudio.scripting.environment import *

script = ScriptingEnvironment.instance()

script.traceBegin("BreakpointsTestLog.xml", "DefaultStylesheet.xsl")

# Set our TimeOut
script.setScriptTimeout(1500000000)

# Log everything
script.traceSetConsoleLevel(TraceLevel.INFO)
script.traceSetFileLevel(TraceLevel.INFO)

# Get the Debug Server and start a Debug Session
debugServer = script.getServer("DebugServer.1")
debugServer.setConfig("USBSTK5515_BOARD.ccxml");
debugSession = debugServer.openSession(".*")
debugSession.target.connect()
debugSession.clock.enable()
