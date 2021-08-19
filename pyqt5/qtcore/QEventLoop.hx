package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QThread;

typedef QEventLoopProcessEventsFlags = QFlags<QEventLoopProcessEventsFlag>;

@:pythonImport("PyQt5.QtCore", "QEventLoop")
@:native("QEventLoop")
extern class QEventLoop extends QObject {
	function new(?parent:QObject);

	@:overload(function(flags:QEventLoopProcessEventsFlags, maximumTime:Int):Void {})
	function processEvents(?flags:QEventLoopProcessEventsFlags):Bool;
	function exec(?flags:QFlags<QEventLoopProcessEventsFlag>):Int;
	function exit(?returnCode:Int):Void;
	function isRunning():Bool;
	function wakeUp():Void;
	function quit():Void;
	function event(event:QEvent):Bool;
}

@:pythonImport("PyQt5.QtCore", "ProcessEventsFlag")
@:native("QEventLoop.ProcessEventsFlag")
extern enum abstract QEventLoopProcessEventsFlag(Int) from Int to Int {
	var AllEvents;
	var ExcludeUserInputEvents;
	var ExcludeSocketNotifiers;
	var WaitForMoreEvents;
	var X11ExcludeTimers;
}

@:pythonImport("PyQt5.QtCore", "QEventLoopLocker")
@:native("QEventLoopLocker")
extern class QEventLoopLocker {
	@:overload(function():QEventLoopLocker {})
	@:overload(function(loop:QEventLoop):QEventLoopLocker {})
	@:overload(function(thread:QThread):QEventLoopLocker {})
	function new(?v:QEventLoopLocker);
}

