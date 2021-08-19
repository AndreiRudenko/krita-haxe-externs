package pyqt5.qtcore;

import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QFileInfo;
import pyqt5.qtcore.QChar;

typedef QDirFilters = QFlags<QDirFilter>;
typedef QDirSortFlags = QFlags<QDirSortFlag>;

@:pythonImport("PyQt5.QtCore", "QDir")
@:native("QDir")
extern class QDir {
	static function nameFiltersFromString(nameFilter:QString):QStringList;
	static function isRelativePath(path:QString):Bool;
	static function isAbsolutePath(path:QString):Bool;
	static function drives():QFileInfoList;
	static function separator():QChar;
	static function setCurrent(path:QString):Bool;
	static function current():QDir;
	static function currentPath():QString;
	static function home():QDir;
	static function homePath():QString;
	static function root():QDir;
	static function rootPath():QString;
	static function temp():QDir;
	static function tempPath():QString;
	@:overload(function(filter:QString, fileName:QString):Bool {})
	static function match(filters:QStringList, fileName:QString):Bool;
	static function cleanPath(path:QString):QString;
	static function toNativeSeparators(pathName:QString):QString;
	static function fromNativeSeparators(pathName:QString):QString;
	static function setSearchPaths(prefix:QString, searchPaths:QStringList):Void;
	static function addSearchPath(prefix:QString, path:QString):Void;
	static function searchPaths(prefix:QString):QStringList;
	static function listSeparator():QChar;

	@:overload(function(?v:QDir):QDir {})
	@:overload(function(?path:QString):QDir {})
	function new(path:QString, nameFilter:QString, sort:QFlags<QDirSortFlag>);

	function setPath(path:QString):Void;
	function path():QString;
	function absolutePath():QString;
	function canonicalPath():QString;
	function dirName():QString;
	function filePath(fileName:QString):QString;
	function absoluteFilePath(fileName:QString):QString;
	function relativeFilePath(fileName:QString):QString;
	function cd(dirName:QString):Bool;
	function cdUp():Bool;
	function nameFilters():QStringList;
	function setNameFilters(nameFilters:QStringList):Void;
	function filter():QDirFilters;
	function setFilter(filter:QDirFilters):Void;
	function sorting():QDirSortFlags;
	function setSorting(sort:QDirSortFlags):Void;
	function count():UInt;
	@:overload(function(nameFilters:QStringList, ?filters:QDirFilters, ?sort:QDirSortFlags):QStringList {})
	function entryList(?filters:QDirFilters, ?sort:QDirSortFlags):QStringList;
	@:overload(function(nameFilters:QStringList, ?filters:QDirFilters, ?sort:QDirSortFlags):QFileInfoList {})
	function entryInfoList(?filters:QDirFilters, ?sort:QDirSortFlags):QFileInfoList;
	function mkdir(dirName:QString):Bool;
	function rmdir(dirName:QString):Bool;
	function mkpath(dirPath:QString):Bool;
	function rmpath(dirPath:QString):Bool;
	function isReadable():Bool;
	@:overload(function(name:QString):Bool {})
	function exists():Bool;
	function isRoot():Bool;
	function isRelative():Bool;
	function isAbsolute():Bool;
	function makeAbsolute():Bool;
	function remove(fileName:QString):Bool;
	function rename(oldName:QString, newName:QString):Bool;
	function refresh():Void;
	function removeRecursively():Bool;
	function swap(other:QDir):Void;
	function isEmpty(?filters:QDirFilters):Bool;
}

@:pythonImport("PyQt5.QtCore", "QDir")
@:native("QDir")
extern enum abstract QDirFilter(Int) from Int to Int {
	var Dirs;
	var Files;
	var Drives;
	var NoSymLinks;
	var AllEntries;
	var TypeMask;
	var Readable;
	var Writable;
	var Executable;
	var PermissionMask;
	var Modified;
	var Hidden;
	var System;
	var AccessMask;
	var AllDirs;
	var CaseSensitive;
	var NoDotAndDotDot;
	var NoFilter;
	var NoDot;
	var NoDotDot;
}

@:pythonImport("PyQt5.QtCore", "QDir")
@:native("QDir")
extern enum abstract QDirSortFlag(Int) from Int to Int {
	var Name;
	var Time;
	var Size;
	var Unsorted;
	var SortByMask;
	var DirsFirst;
	var Reversed;
	var IgnoreCase;
	var DirsLast;
	var LocaleAware;
	var Type;
	var NoSort;
}

