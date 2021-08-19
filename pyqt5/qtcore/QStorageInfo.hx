package pyqt5.qtcore;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.QDir;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QList;

@:pythonImport("PyQt5.QtCore", "QStorageInfo")
@:native("QStorageInfo")
extern class QStorageInfo {
	static function mountedVolumes():QList<QStorageInfo>;
	static function root():QStorageInfo;

	@:overload(function():QStorageInfo {})
	@:overload(function(path:QString):QStorageInfo {})
	@:overload(function(dir:QDir):QStorageInfo {})
	function new(other:QStorageInfo);

	function swap(other:QStorageInfo):Void;
	function setPath(path:QString):Void;
	function rootPath():QString;
	function device():QByteArray;
	function fileSystemType():QByteArray;
	function name():QString;
	function displayName():QString;
	function bytesTotal():Int;
	function bytesFree():Int;
	function bytesAvailable():Int;
	function isReadOnly():Bool;
	function isReady():Bool;
	function isValid():Bool;
	function refresh():Void;
	function isRoot():Bool;
	function blockSize():Int;
	function subvolume():QByteArray;
}

