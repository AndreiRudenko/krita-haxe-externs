package pyqt5.qtcore;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.QFile;
import pyqt5.qtcore.QDir;
import pyqt5.qtcore.QFileDevice;
import pyqt5.qtcore.QDateTime;
import pyqt5.qtcore.QList;

typedef QFileInfoList = QList<QFileInfo>;

@:pythonImport("PyQt5.QtCore", "QFileInfo")
@:native("QFileInfo")
extern class QFileInfo {
	static function exists(file:QString):Bool;

	@:overload(function():QFileInfo {})
	@:overload(function(file:QString):QFileInfo {})
	@:overload(function(file:QFile):QFileInfo {})
	@:overload(function(dir:QDir, file:QString):QFileInfo {})
	function new(fileinfo:QFileInfo);

	@:overload(function(file:QFile):Void {})
	@:overload(function(dir:QDir, file:QString):Void {})
	function setFile(file:QString):Void;
	function exists():Bool;
	function refresh():Void;
	function filePath():QString;
	function absoluteFilePath():QString;
	function canonicalFilePath():QString;
	function fileName():QString;
	function baseName():QString;
	function completeBaseName():QString;
	function suffix():QString;
	function completeSuffix():QString;
	function path():QString;
	function absolutePath():QString;
	function canonicalPath():QString;
	function dir():QDir;
	function absoluteDir():QDir;
	function isReadable():Bool;
	function isWritable():Bool;
	function isExecutable():Bool;
	function isHidden():Bool;
	function isRelative():Bool;
	function isAbsolute():Bool;
	function makeAbsolute():Bool;
	function isFile():Bool;
	function isDir():Bool;
	function isSymLink():Bool;
	function isRoot():Bool;
	function owner():QString;
	function ownerId():UInt;
	function group():QString;
	function groupId():UInt;
	function permission(permissions:QFileDevicePermissions):Bool;
	function permissions():QFileDevicePermissions;
	function size():Int;
	function created():QDateTime;
	function lastModified():QDateTime;
	function lastRead():QDateTime;
	function caching():Bool;
	function setCaching(on:Bool):Void;
	function symLinkTarget():QString;
	function bundleName():QString;
	function isBundle():Bool;
	function isNativePath():Bool;
	function swap(other:QFileInfo):Void;
	function birthTime():QDateTime;
	function metadataChangeTime():QDateTime;
	function fileTime(time:QFileDeviceFileTime):QDateTime;
	function isSymbolicLink():Bool;
	function isShortcut():Bool;
	function isJunction():Bool;
}

