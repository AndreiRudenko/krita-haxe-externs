package pyqt5.qtcore;

import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QDir;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QFileInfo;

typedef QDirIteratorIteratorFlags = QFlags<QDirIteratorIteratorFlag>;

@:pythonImport("PyQt5.QtCore", "QDirIterator")
@:native("QDirIterator")
extern class QDirIterator {
	@:overload(function(dir:QDir, ?flags:QFlags<QDirIteratorIteratorFlag>):QDirIterator {})
	@:overload(function(path:QString, ?flags:QFlags<QDirIteratorIteratorFlag>):QDirIterator {})
	@:overload(function(path:QString, filters:QFlags<QDirFilter>, ?flags:QFlags<QDirIteratorIteratorFlag>):QDirIterator {})
	@:overload(function(path:QString, nameFilters:QStringList, ?filters:QFlags<QDirFilter>, ?flags:QFlags<QDirIteratorIteratorFlag>):QDirIterator {})
	function new(?v:QDirIterator);

	function next():QString;
	function hasNext():Bool;
	function fileName():QString;
	function filePath():QString;
	function fileInfo():QFileInfo;
	function path():QString;
}

@:pythonImport("PyQt5.QtCore", "IteratorFlag")
@:native("QDirIterator.IteratorFlag")
extern enum abstract QDirIteratorIteratorFlag(Int) from Int to Int {
	var NoIteratorFlags;
	var FollowSymlinks;
	var Subdirectories;
}

