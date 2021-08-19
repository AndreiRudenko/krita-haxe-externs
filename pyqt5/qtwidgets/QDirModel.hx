package pyqt5.qtwidgets;

import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QDir;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtwidgets.QFileIconProvider;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QFileInfo;

@:pythonImport("PyQt5.QtWidgets", "QDirModel")
@:native("QDirModel")
extern class QDirModel extends QAbstractItemModel {
	@:overload(function(nameFilters:QStringList, filters:QDirFilters, sort:QDirSortFlags, ?parent:QObject):QDirModel {})
	function new(?parent:QObject);

	@:overload(function(path:QString, ?column:Int):QModelIndex {})
	function index(row:Int, column:Int, ?parent:QModelIndex):QModelIndex;
	@:overload(function():QObject {})
	function parent(child:QModelIndex):QModelIndex;
	function rowCount(?parent:QModelIndex):Int;
	function columnCount(?parent:QModelIndex):Int;
	function data(index:QModelIndex, ?role:Int):QVariant;
	function setData(index:QModelIndex, value:QVariant, ?role:Int):Bool;
	function headerData(section:Int, orientation:QtOrientation, ?role:Int):QVariant;
	function hasChildren(?parent:QModelIndex):Bool;
	function flags(index:QModelIndex):QtItemFlags;
	function sort(column:Int, ?order:QtSortOrder):Void;
	function mimeTypes():QStringList;
	function mimeData(indexes:QModelIndexList):QMimeData;
	function dropMimeData(data:QMimeData, action:QtDropAction, row:Int, column:Int, parent:QModelIndex):Bool;
	function supportedDropActions():QtDropActions;
	function setIconProvider(provider:QFileIconProvider):Void;
	function iconProvider():QFileIconProvider;
	function setNameFilters(filters:QStringList):Void;
	function nameFilters():QStringList;
	function setFilter(filters:QDirFilters):Void;
	function filter():QDirFilters;
	function setSorting(sort:QDirSortFlags):Void;
	function sorting():QDirSortFlags;
	function setResolveSymlinks(enable:Bool):Void;
	function resolveSymlinks():Bool;
	function setReadOnly(enable:Bool):Void;
	function isReadOnly():Bool;
	function setLazyChildCount(enable:Bool):Void;
	function lazyChildCount():Bool;
	function refresh(?parent:QModelIndex):Void;
	function isDir(index:QModelIndex):Bool;
	function mkdir(parent:QModelIndex, name:QString):QModelIndex;
	function rmdir(index:QModelIndex):Bool;
	function remove(index:QModelIndex):Bool;
	function filePath(index:QModelIndex):QString;
	function fileName(index:QModelIndex):QString;
	function fileIcon(index:QModelIndex):QIcon;
	function fileInfo(index:QModelIndex):QFileInfo;
}

@:pythonImport("PyQt5.QtWidgets", "QDirModel")
@:native("QDirModel")
extern enum abstract QDirModelRoles(Int) from Int to Int {
	var FileIconRole;
	var FilePathRole;
	var FileNameRole;
}

