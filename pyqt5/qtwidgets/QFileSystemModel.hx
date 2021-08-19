package pyqt5.qtwidgets;

import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtcore.QDir;
import pyqt5.qtwidgets.QFileIconProvider;
import pyqt5.qtcore.QDateTime;
import pyqt5.qtcore.QFileDevice;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QFileInfo;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QGlobal;

typedef QFileSystemModelOptions = QFlags<QFileSystemModelOption>;

@:pythonImport("PyQt5.QtWidgets", "QFileSystemModel")
@:native("QFileSystemModel")
extern class QFileSystemModel extends QAbstractItemModel {
	var fileRenamed:QSignal3<QString, QString, QString>;
	var rootPathChanged:QSignal1<QString>;
	var directoryLoaded:QSignal1<QString>;

	function new(?parent:QObject);

	@:overload(function(path:QString, ?column:Int):QModelIndex {})
	function index(row:Int, column:Int, ?parent:QModelIndex):QModelIndex;
	function parent(child:QModelIndex):QModelIndex;
	function hasChildren(?parent:QModelIndex):Bool;
	function canFetchMore(parent:QModelIndex):Bool;
	function fetchMore(parent:QModelIndex):Void;
	function rowCount(?parent:QModelIndex):Int;
	function columnCount(?parent:QModelIndex):Int;
	function myComputer(?role:Int):QVariant;
	function data(index:QModelIndex, ?role:Int):QVariant;
	function setData(index:QModelIndex, value:QVariant, ?role:Int):Bool;
	function headerData(section:Int, orientation:QtOrientation, ?role:Int):QVariant;
	function flags(index:QModelIndex):QtItemFlags;
	function sort(column:Int, ?order:QtSortOrder):Void;
	function mimeTypes():QStringList;
	function mimeData(indexes:QModelIndexList):QMimeData;
	function dropMimeData(data:QMimeData, action:QtDropAction, row:Int, column:Int, parent:QModelIndex):Bool;
	function supportedDropActions():QtDropActions;
	function setRootPath(path:QString):QModelIndex;
	function rootPath():QString;
	function rootDirectory():QDir;
	function setIconProvider(provider:QFileIconProvider):Void;
	function iconProvider():QFileIconProvider;
	function setFilter(filters:QDirFilters):Void;
	function filter():QDirFilters;
	function setResolveSymlinks(enable:Bool):Void;
	function resolveSymlinks():Bool;
	function setReadOnly(enable:Bool):Void;
	function isReadOnly():Bool;
	function setNameFilterDisables(enable:Bool):Void;
	function nameFilterDisables():Bool;
	function setNameFilters(filters:QStringList):Void;
	function nameFilters():QStringList;
	function filePath(index:QModelIndex):QString;
	function isDir(index:QModelIndex):Bool;
	function size(index:QModelIndex):Int;
	function type(index:QModelIndex):QString;
	function lastModified(index:QModelIndex):QDateTime;
	function mkdir(parent:QModelIndex, name:QString):QModelIndex;
	function permissions(index:QModelIndex):QFileDevicePermissions;
	function rmdir(index:QModelIndex):Bool;
	function fileName(aindex:QModelIndex):QString;
	function fileIcon(aindex:QModelIndex):QIcon;
	function fileInfo(aindex:QModelIndex):QFileInfo;
	function remove(index:QModelIndex):Bool;
	function event(event:QEvent):Bool;
	function timerEvent(event:QTimerEvent):Void;
	function sibling(row:Int, column:Int, idx:QModelIndex):QModelIndex;
	function setOption(option:QFileSystemModelOption, ?on:Bool):Void;
	function testOption(option:QFileSystemModelOption):Bool;
	function setOptions(options:QFileSystemModelOptions):Void;
	function options():QFileSystemModelOptions;
}

@:pythonImport("PyQt5.QtWidgets", "Roles")
@:native("QFileSystemModel.Roles")
extern enum abstract QFileSystemModelRoles(Int) from Int to Int {
	var FileIconRole;
	var FilePathRole;
	var FileNameRole;
	var FilePermissions;
}

@:pythonImport("PyQt5.QtWidgets", "Option")
@:native("QFileSystemModel.Option")
extern enum abstract QFileSystemModelOption(Int) from Int to Int {
	var DontWatchForChanges;
	var DontResolveSymlinks;
	var DontUseCustomDirectoryIcons;
}

