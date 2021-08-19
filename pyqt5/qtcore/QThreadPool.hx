package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QRunnable;

@:pythonImport("PyQt5.QtCore", "QThreadPool")
@:native("QThreadPool")
extern class QThreadPool extends QObject {
	static function globalInstance():QThreadPool;

	function new(?parent:QObject);

	@:overload(function(functionToRun:Dynamic->Void, ?priority:Int):Void {})
	function start(runnable:QRunnable, ?priority:Int):Void;
	@:overload(function(functionToRun:Dynamic->Void):Bool {})
	function tryStart(runnable:QRunnable):Bool;
	function tryTake(runnable:QRunnable):Bool;
	function expiryTimeout():Int;
	function setExpiryTimeout(expiryTimeout:Int):Void;
	function maxThreadCount():Int;
	function setMaxThreadCount(maxThreadCount:Int):Void;
	function activeThreadCount():Int;
	function reserveThread():Void;
	function releaseThread():Void;
	function waitForDone(?msecs:Int):Bool;
	function clear():Void;
	function cancel(runnable:QRunnable):Void;
	function setStackSize(stackSize:UInt):Void;
	function stackSize():UInt;
}

