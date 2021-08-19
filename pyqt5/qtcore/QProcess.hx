package pyqt5.qtcore;

import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QProcess;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QSignal;

typedef Q_PID = Int;

@:pythonImport("PyQt5.QtCore", "QProcess")
@:native("QProcess")
extern class QProcess extends QIODevice {
	@:overload(function(program:QString):Int {})
	static function execute(program:QString, arguments:QStringList):Int;
	@:overload(function(program:QString, arguments:QStringList):Bool {})
	@:overload(function(program:QString):Bool {})
	static function startDetached(program:QString, arguments:QStringList, workingDirectory:QString, ?pid:Int):Bool;
	static function systemEnvironment():QStringList;
	static function nullDevice():QString;

	var started:QSignal0;
	var finished:QSignal2<Int, QProcessExitStatus>;
	var stateChanged:QSignal1<QProcessProcessState>;
	var readyReadStandardOutput:QSignal0;
	var readyReadStandardError:QSignal0;
	var errorOccurred:QSignal1<QProcessProcessError>;

	function new(?parent:QObject);

	@:overload(function(command:QString, ?mode:QIODeviceOpenMode):Void {})
	@:overload(function(?mode:QIODeviceOpenMode):Void {})
	function start(program:QString, arguments:QStringList, ?mode:QIODeviceOpenMode):Void;
	function readChannel():QProcessProcessChannel;
	function setReadChannel(channel:QProcessProcessChannel):Void;
	function closeReadChannel(channel:QProcessProcessChannel):Void;
	function closeWriteChannel():Void;
	function workingDirectory():QString;
	function setWorkingDirectory(dir:QString):Void;
	function error():QProcessProcessError;
	function state():QProcessProcessState;
	function pid():Q_PID;
	function waitForStarted(?msecs:Int):Bool;
	function waitForReadyRead(?msecs:Int):Bool;
	function waitForBytesWritten(?msecs:Int):Bool;
	function waitForFinished(?msecs:Int):Bool;
	function readAllStandardOutput():QByteArray;
	function readAllStandardError():QByteArray;
	function exitCode():Int;
	function exitStatus():QProcessExitStatus;
	function bytesAvailable():Int;
	function bytesToWrite():Int;
	function isSequential():Bool;
	function canReadLine():Bool;
	function close():Void;
	function atEnd():Bool;
	function startDetached(?pid:Int):Bool;
	function processChannelMode():QProcessProcessChannelMode;
	function setProcessChannelMode(mode:QProcessProcessChannelMode):Void;
	function setStandardInputFile(fileName:QString):Void;
	function setStandardOutputFile(fileName:QString, ?mode:QIODeviceOpenMode):Void;
	function setStandardErrorFile(fileName:QString, ?mode:QIODeviceOpenMode):Void;
	function setStandardOutputProcess(destination:QProcess):Void;
	function terminate():Void;
	function kill():Void;
	function setProcessState(state:QProcessProcessState):Void;
	function setupChildProcess():Void;
	function readData(maxlen:Int, ?v:Int):Dynamic;
	function writeData(data:Int, len:Int):Int;
	function setProcessEnvironment(environment:QProcessEnvironment):Void;
	function processEnvironment():QProcessEnvironment;
	function program():QString;
	function setProgram(program:QString):Void;
	function arguments():QStringList;
	function setArguments(arguments:QStringList):Void;
	function open(?mode:QIODeviceOpenMode):Bool;
	function inputChannelMode():QProcessInputChannelMode;
	function setInputChannelMode(mode:QProcessInputChannelMode):Void;
	function processId():Int;
}

@:pythonImport("PyQt5.QtCore", "ExitStatus")
@:native("QProcess.ExitStatus")
extern enum abstract QProcessExitStatus(Int) from Int to Int {
	var NormalExit;
	var CrashExit;
}

@:pythonImport("PyQt5.QtCore", "ProcessError")
@:native("QProcess.ProcessError")
extern enum abstract QProcessProcessError(Int) from Int to Int {
	var FailedToStart;
	var Crashed;
	var Timedout;
	var ReadError;
	var WriteError;
	var UnknownError;
}

@:pythonImport("PyQt5.QtCore", "ProcessState")
@:native("QProcess.ProcessState")
extern enum abstract QProcessProcessState(Int) from Int to Int {
	var NotRunning;
	var Starting;
	var Running;
}

@:pythonImport("PyQt5.QtCore", "ProcessChannel")
@:native("QProcess.ProcessChannel")
extern enum abstract QProcessProcessChannel(Int) from Int to Int {
	var StandardOutput;
	var StandardError;
}

@:pythonImport("PyQt5.QtCore", "ProcessChannelMode")
@:native("QProcess.ProcessChannelMode")
extern enum abstract QProcessProcessChannelMode(Int) from Int to Int {
	var SeparateChannels;
	var MergedChannels;
	var ForwardedChannels;
	var ForwardedOutputChannel;
	var ForwardedErrorChannel;
}

@:pythonImport("PyQt5.QtCore", "InputChannelMode")
@:native("QProcess.InputChannelMode")
extern enum abstract QProcessInputChannelMode(Int) from Int to Int {
	var ManagedInputChannel;
	var ForwardedInputChannel;
}

@:pythonImport("PyQt5.QtCore", "QProcessEnvironment")
@:native("QProcessEnvironment")
extern class QProcessEnvironment {
	static function systemEnvironment():QProcessEnvironment;

	@:overload(function():QProcessEnvironment {})
	function new(other:QProcessEnvironment);

	function isEmpty():Bool;
	function clear():Void;
	function contains(name:QString):Bool;
	@:overload(function(e:QProcessEnvironment):Void {})
	function insert(name:QString, value:QString):Void;
	function remove(name:QString):Void;
	function value(name:QString, ?defaultValue:QString):QString;
	function toStringList():QStringList;
	function keys():QStringList;
	function swap(other:QProcessEnvironment):Void;
}

