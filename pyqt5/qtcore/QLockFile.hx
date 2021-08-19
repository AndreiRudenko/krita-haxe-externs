package pyqt5.qtcore;

import pyqt5.qtcore.QString;

@:pythonImport("PyQt5.QtCore", "QLockFile")
@:native("QLockFile")
extern class QLockFile {
	@:overload(function(fileName:QString):QLockFile {})
	function new(?v:QLockFile);

	function lock():Bool;
	function tryLock(?timeout:Int):Bool;
	function unlock():Void;
	function setStaleLockTime(?v:Int):Void;
	function staleLockTime():Int;
	function isLocked():Bool;
	function getLockInfo(pid:Int, hostname:QString, appname:QString):Bool;
	function removeStaleLockFile():Bool;
	function error():QLockFileLockError;
}

@:pythonImport("PyQt5.QtCore", "LockError")
@:native("QLockFile.LockError")
extern enum abstract QLockFileLockError(Int) from Int to Int {
	var NoError;
	var LockFailedError;
	var PermissionError;
	var UnknownError;
}

