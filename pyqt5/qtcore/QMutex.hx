package pyqt5.qtcore;


@:pythonImport("PyQt5.QtCore", "QMutexLocker")
@:native("QMutexLocker")
extern class QMutexLocker {
	@:overload(function(m:QMutex):QMutexLocker {})
	@:overload(function(m:QRecursiveMutex):QMutexLocker {})
	function new(?v:QMutexLocker);

	function unlock():Void;
	function relock():Void;
	function mutex():QMutex;
}

@:pythonImport("PyQt5.QtCore", "QMutex")
@:native("QMutex")
extern class QMutex {
	@:overload(function(?mode:QMutexRecursionMode):QMutex {})
	function new(?v:QMutex);

	function lock():Void;
	function tryLock(?timeout:Int):Bool;
	function unlock():Void;
	function isRecursive():Bool;
}

@:pythonImport("PyQt5.QtCore", "RecursionMode")
@:native("QMutex.RecursionMode")
extern enum abstract QMutexRecursionMode(Int) from Int to Int {
	var NonRecursive;
	var Recursive;
}

@:pythonImport("PyQt5.QtCore", "QRecursiveMutex")
@:native("QRecursiveMutex")
extern class QRecursiveMutex extends QMutex {
	function new();
}

