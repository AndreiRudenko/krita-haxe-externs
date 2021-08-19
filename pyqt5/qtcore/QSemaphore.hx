package pyqt5.qtcore;


@:pythonImport("PyQt5.QtCore", "QSemaphore")
@:native("QSemaphore")
extern class QSemaphore {
	@:overload(function(?n:Int):QSemaphore {})
	function new(?v:QSemaphore);

	function acquire(?n:Int):Void;
	@:overload(function(n:Int, timeout:Int):Bool {})
	function tryAcquire(?n:Int):Bool;
	function release(?n:Int):Void;
	function available():Int;
}

@:pythonImport("PyQt5.QtCore", "QSemaphoreReleaser")
@:native("QSemaphoreReleaser")
extern class QSemaphoreReleaser {
	@:overload(function():QSemaphoreReleaser {})
	function new(sem:QSemaphore, ?n:Int);

	function swap(other:QSemaphoreReleaser):Void;
	function semaphore():QSemaphore;
	function cancel():QSemaphore;
}

