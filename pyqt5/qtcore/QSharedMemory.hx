package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;

@:pythonImport("PyQt5.QtCore", "QSharedMemory")
@:native("QSharedMemory")
extern class QSharedMemory extends QObject {
	@:overload(function(?parent:QObject):QSharedMemory {})
	function new(key:QString, ?parent:QObject);

	function setKey(key:QString):Void;
	function key():QString;
	function create(size:Int, ?mode:QSharedMemoryAccessMode):Bool;
	function size():Int;
	function attach(?mode:QSharedMemoryAccessMode):Bool;
	function isAttached():Bool;
	function detach():Bool;
	function data():Dynamic;
	function constData():Dynamic;
	function lock():Bool;
	function unlock():Bool;
	function error():QSharedMemorySharedMemoryError;
	function errorString():QString;
	function setNativeKey(key:QString):Void;
	function nativeKey():QString;
}

@:pythonImport("PyQt5.QtCore", "QSharedMemory")
@:native("QSharedMemory")
extern enum abstract QSharedMemoryAccessMode(Int) from Int to Int {
	var ReadOnly;
	var ReadWrite;
}

@:pythonImport("PyQt5.QtCore", "QSharedMemory")
@:native("QSharedMemory")
extern enum abstract QSharedMemorySharedMemoryError(Int) from Int to Int {
	var NoError;
	var PermissionDenied;
	var InvalidSize;
	var KeyError;
	var AlreadyExists;
	var NotFound;
	var LockError;
	var OutOfResources;
	var UnknownError;
}

