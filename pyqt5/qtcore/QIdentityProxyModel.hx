package pyqt5.qtcore;

import pyqt5.qtcore.QAbstractProxyModel;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QItemSelectionModel;
import pyqt5.qtcore.QVariant;

@:pythonImport("PyQt5.QtCore", "QIdentityProxyModel")
@:native("QIdentityProxyModel")
extern class QIdentityProxyModel extends QAbstractProxyModel {
	function new(?parent:QObject);

	function columnCount(?parent:QModelIndex):Int;
	function index(row:Int, column:Int, ?parent:QModelIndex):QModelIndex;
	function mapFromSource(sourceIndex:QModelIndex):QModelIndex;
	function mapToSource(proxyIndex:QModelIndex):QModelIndex;
	function parent(child:QModelIndex):QModelIndex;
	function rowCount(?parent:QModelIndex):Int;
	function dropMimeData(data:QMimeData, action:QtDropAction, row:Int, column:Int, parent:QModelIndex):Bool;
	function mapSelectionFromSource(selection:QItemSelection):QItemSelection;
	function mapSelectionToSource(selection:QItemSelection):QItemSelection;
	function match(start:QModelIndex, role:Int, value:QVariant, ?hits:Int, ?flags:QtMatchFlags):QModelIndexList;
	function setSourceModel(sourceModel:QAbstractItemModel):Void;
	function insertColumns(column:Int, count:Int, ?parent:QModelIndex):Bool;
	function insertRows(row:Int, count:Int, ?parent:QModelIndex):Bool;
	function removeColumns(column:Int, count:Int, ?parent:QModelIndex):Bool;
	function removeRows(row:Int, count:Int, ?parent:QModelIndex):Bool;
	function headerData(section:Int, orientation:QtOrientation, ?role:Int):QVariant;
	function sibling(row:Int, column:Int, idx:QModelIndex):QModelIndex;
	function moveRows(sourceParent:QModelIndex, sourceRow:Int, count:Int, destinationParent:QModelIndex, destinationChild:Int):Bool;
	function moveColumns(sourceParent:QModelIndex, sourceColumn:Int, count:Int, destinationParent:QModelIndex, destinationChild:Int):Bool;
}

