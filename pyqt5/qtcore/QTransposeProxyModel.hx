package pyqt5.qtcore;

import pyqt5.qtcore.QAbstractProxyModel;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QMap;
import pyqt5.qtcore.QSize;

@:pythonImport("PyQt5.QtCore", "QTransposeProxyModel")
@:native("QTransposeProxyModel")
extern class QTransposeProxyModel extends QAbstractProxyModel {
	function new(?parent:QObject);

	function setSourceModel(newSourceModel:QAbstractItemModel):Void;
	function rowCount(?parent:QModelIndex):Int;
	function columnCount(?parent:QModelIndex):Int;
	function headerData(section:Int, orientation:QtOrientation, ?role:Int):QVariant;
	function setHeaderData(section:Int, orientation:QtOrientation, value:QVariant, ?role:Int):Bool;
	function setItemData(index:QModelIndex, roles:QMap<Int, QVariant>):Bool;
	function span(index:QModelIndex):QSize;
	function itemData(index:QModelIndex):QMap<Int, QVariant>;
	function mapFromSource(sourceIndex:QModelIndex):QModelIndex;
	function mapToSource(proxyIndex:QModelIndex):QModelIndex;
	function parent(index:QModelIndex):QModelIndex;
	function index(row:Int, column:Int, ?parent:QModelIndex):QModelIndex;
	function insertRows(row:Int, count:Int, ?parent:QModelIndex):Bool;
	function removeRows(row:Int, count:Int, ?parent:QModelIndex):Bool;
	function moveRows(sourceParent:QModelIndex, sourceRow:Int, count:Int, destinationParent:QModelIndex, destinationChild:Int):Bool;
	function insertColumns(column:Int, count:Int, ?parent:QModelIndex):Bool;
	function removeColumns(column:Int, count:Int, ?parent:QModelIndex):Bool;
	function moveColumns(sourceParent:QModelIndex, sourceColumn:Int, count:Int, destinationParent:QModelIndex, destinationChild:Int):Bool;
	function sort(column:Int, ?order:QtSortOrder):Void;
}

