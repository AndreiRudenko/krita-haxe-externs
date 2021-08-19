package pyqt5.qtcore;


@:pythonImport("PyQt5.QtCore", "QReadWriteLock")
@:native("QReadWriteLock")
extern class QReadWriteLock {
	@:overload(function(?recursionMode:QReadWriteLockRecursionMode):QReadWriteLock {})
	function new(?v:QReadWriteLock);

	function lockForRead():Void;
	@:overload(function(timeout:Int):Bool {})
	function tryLockForRead():Bool;
	function lockForWrite():Void;
	@:overload(function(timeout:Int):Bool {})
	function tryLockForWrite():Bool;
	function unlock():Void;
}

@:pythonImport("PyQt5.QtCore", "RecursionMode")
@:native("QReadWriteLock.RecursionMode")
extern enum abstract QReadWriteLockRecursionMode(Int) from Int to Int {
	var NonRecursive;
	var Recursive;
}

@:pythonImport("PyQt5.QtCore", "QReadLocker")
@:native("QReadLocker")
extern class QReadLocker {
	@:overload(function(areadWriteLock:QReadWriteLock):QReadLocker {})
	function new(?v:QReadLocker);

	function unlock():Void;
	function relock():Void;
	function readWriteLock():QReadWriteLock;
}

@:pythonImport("PyQt5.QtCore", "QWriteLocker")
@:native("QWriteLocker")
extern class QWriteLocker {
	@:overload(function(areadWriteLock:QReadWriteLock):QWriteLocker {})
	function new(?v:QWriteLocker);

	function unlock():Void;
	function relock():Void;
	function readWriteLock():QReadWriteLock;
}

