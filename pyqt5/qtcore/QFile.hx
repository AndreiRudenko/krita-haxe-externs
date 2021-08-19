package pyqt5.qtcore;

import pyqt5.qtcore.QFileDevice;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QIODevice;

@:pythonImport("PyQt5.QtCore", "QFile")
@:native("QFile")
extern class QFile extends QFileDevice {
	static function encodeName(fileName:QString):QByteArray;
	@:overload(function(localFileName:Int):QString {})
	static function decodeName(localFileName:QByteArray):QString;
	static function exists(fileName:QString):Bool;
	static function symLinkTarget(fileName:QString):QString;
	static function remove(fileName:QString):Bool;
	static function rename(oldName:QString, newName:QString):Bool;
	static function link(oldname:QString, newName:QString):Bool;
	static function copy(fileName:QString, newName:QString):Bool;
	static function resize(filename:QString, sz:Int):Bool;
	static function permissions(filename:QString):QFileDevicePermissions;
	static function setPermissions(filename:QString, permissionSpec:QFileDevicePermissions):Bool;
	static function moveToTrash(fileName:QString, pathInTrash:QString):Bool;

	@:overload(function():QFile {})
	@:overload(function(name:QString):QFile {})
	@:overload(function(parent:QObject):QFile {})
	function new(name:QString, parent:QObject);

	function fileName():QString;
	function setFileName(name:QString):Void;
	function exists():Bool;
	function symLinkTarget():QString;
	function remove():Bool;
	function rename(newName:QString):Bool;
	function link(newName:QString):Bool;
	function copy(newName:QString):Bool;
	@:overload(function(fd:Int, ioFlags:QIODeviceOpenMode, ?handleFlags:QFileDeviceFileHandleFlags):Bool {})
	function open(flags:QIODeviceOpenMode):Bool;
	function size():Int;
	function resize(sz:Int):Bool;
	function permissions():QFileDevicePermissions;
	function setPermissions(permissionSpec:QFileDevicePermissions):Bool;
	function moveToTrash():Bool;
}

