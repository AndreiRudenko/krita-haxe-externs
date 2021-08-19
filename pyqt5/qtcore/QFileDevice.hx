package pyqt5.qtcore;

import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QDateTime;

typedef QFileDevicePermissions = QFlags<QFileDevicePermission>;
typedef QFileDeviceFileHandleFlags = QFlags<QFileDeviceFileHandleFlag>;

@:pythonImport("PyQt5.QtCore", "QFileDevice")
@:native("QFileDevice")
extern class QFileDevice extends QIODevice {
	function error():QFileDeviceFileError;
	function unsetError():Void;
	function close():Void;
	function isSequential():Bool;
	function handle():Int;
	function fileName():QString;
	function pos():Int;
	function seek(offset:Int):Bool;
	function atEnd():Bool;
	function flush():Bool;
	function size():Int;
	function resize(sz:Int):Bool;
	function permissions():QFileDevicePermissions;
	function setPermissions(permissionSpec:QFileDevicePermissions):Bool;
	function map(offset:Int, size:Int, ?flags:QFileDeviceMemoryMapFlags):Void;
	function unmap(address:Void):Bool;
	function readData(maxlen:Int, ?v:Int):Dynamic;
	function writeData(data:Int, len:Int):Int;
	function readLineData(maxlen:Int, ?v:Int):Dynamic;
	function fileTime(time:QFileDeviceFileTime):QDateTime;
	function setFileTime(newDate:QDateTime, fileTime:QFileDeviceFileTime):Bool;
}

@:pythonImport("PyQt5.QtCore", "QFileDevice")
@:native("QFileDevice")
extern enum abstract QFileDeviceFileError(Int) from Int to Int {
	var NoError;
	var ReadError;
	var WriteError;
	var FatalError;
	var ResourceError;
	var OpenError;
	var AbortError;
	var TimeOutError;
	var UnspecifiedError;
	var RemoveError;
	var RenameError;
	var PositionError;
	var ResizeError;
	var PermissionsError;
	var CopyError;
}

@:pythonImport("PyQt5.QtCore", "QFileDevice")
@:native("QFileDevice")
extern enum abstract QFileDevicePermission(Int) from Int to Int {
	var ReadOwner;
	var WriteOwner;
	var ExeOwner;
	var ReadUser;
	var WriteUser;
	var ExeUser;
	var ReadGroup;
	var WriteGroup;
	var ExeGroup;
	var ReadOther;
	var WriteOther;
	var ExeOther;
}

@:pythonImport("PyQt5.QtCore", "QFileDevice")
@:native("QFileDevice")
extern enum abstract QFileDeviceFileHandleFlag(Int) from Int to Int {
	var AutoCloseHandle;
	var DontCloseHandle;
}

@:pythonImport("PyQt5.QtCore", "QFileDevice")
@:native("QFileDevice")
extern enum abstract QFileDeviceMemoryMapFlags(Int) from Int to Int {
	var NoOptions;
	var MapPrivateOption;
}

@:pythonImport("PyQt5.QtCore", "QFileDevice")
@:native("QFileDevice")
extern enum abstract QFileDeviceFileTime(Int) from Int to Int {
	var FileAccessTime;
	var FileBirthTime;
	var FileMetadataChangeTime;
	var FileModificationTime;
}

