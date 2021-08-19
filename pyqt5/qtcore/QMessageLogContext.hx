package pyqt5.qtcore;


@:pythonImport("PyQt5.QtCore", "QMessageLogContext")
@:native("QMessageLogContext")
extern enum abstract QMessageLogContextQtMsgType(Int) from Int to Int {
	var QtDebugMsg;
	var QtWarningMsg;
	var QtCriticalMsg;
	var QtFatalMsg;
	var QtSystemMsg;
	var QtInfoMsg;
}

@:pythonImport("PyQt5.QtCore", "QMessageLogContext")
@:native("QMessageLogContext")
extern class QMessageLogContext {
}

@:pythonImport("PyQt5.QtCore", "QMessageLogger")
@:native("QMessageLogger")
extern class QMessageLogger {
	@:overload(function(?v:QMessageLogger):QMessageLogger {})
	@:overload(function():QMessageLogger {})
	@:overload(function(file:Int, line:Int, function_:Int):QMessageLogger {})
	function new(file:Int, line:Int, function_:Int, category:Int);

	function debug(msg:Int):Void;
	function warning(msg:Int):Void;
	function critical(msg:Int):Void;
	function fatal(msg:Int):Void;
	function info(msg:Int):Void;
}

