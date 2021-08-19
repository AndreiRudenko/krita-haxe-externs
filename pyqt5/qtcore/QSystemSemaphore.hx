package pyqt5.qtcore;

import pyqt5.qtcore.QString;

@:pythonImport("PyQt5.QtCore", "QSystemSemaphore")
@:native("QSystemSemaphore")
extern class QSystemSemaphore {
	@:overload(function(key:QString, ?initialValue:Int, ?mode:QSystemSemaphoreAccessMode):QSystemSemaphore {})
	function new(?v:QSystemSemaphore);

	function setKey(key:QString, ?initialValue:Int, ?mode:QSystemSemaphoreAccessMode):Void;
	function key():QString;
	function acquire():Bool;
	function release(?n:Int):Bool;
	function error():QSystemSemaphoreSystemSemaphoreError;
	function errorString():QString;
}

@:pythonImport("PyQt5.QtCore", "QSystemSemaphore")
@:native("QSystemSemaphore")
extern enum abstract QSystemSemaphoreAccessMode(Int) from Int to Int {
	var Open;
	var Create;
}

@:pythonImport("PyQt5.QtCore", "QSystemSemaphore")
@:native("QSystemSemaphore")
extern enum abstract QSystemSemaphoreSystemSemaphoreError(Int) from Int to Int {
	var NoError;
	var PermissionDenied;
	var KeyError;
	var AlreadyExists;
	var NotFound;
	var OutOfResources;
	var UnknownError;
}

