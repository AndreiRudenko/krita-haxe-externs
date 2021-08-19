package pyqt5.qtcore;

import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QItemSelectionModel;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QMap;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtCore", "QAbstractProxyModel")
@:native("QAbstractProxyModel")
extern class QAbstractProxyModel extends QAbstractItemModel {
	var sourceModelChanged:QSignal0;

	function new(?parent:QObject);

	function setSourceModel(sourceModel:QAbstractItemModel):Void;
	function sourceModel():QAbstractItemModel;
	function mapToSource(proxyIndex:QModelIndex):QModelIndex;
	function mapFromSource(sourceIndex:QModelIndex):QModelIndex;
	function mapSelectionToSource(selection:QItemSelection):QItemSelection;
	function mapSelectionFromSource(selection:QItemSelection):QItemSelection;
	function submit():Bool;
	function revert():Void;
	function data(proxyIndex:QModelIndex, ?role:Int):QVariant;
	function setData(index:QModelIndex, value:QVariant, ?role:Int):Bool;
	function headerData(section:Int, orientation:QtOrientation, ?role:Int):QVariant;
	function setHeaderData(section:Int, orientation:QtOrientation, value:QVariant, ?role:Int):Bool;
	function itemData(index:QModelIndex):QMap<Int, QVariant>;
	function flags(index:QModelIndex):QtItemFlags;
	function setItemData(index:QModelIndex, roles:QMap<Int, QVariant>):Bool;
	function buddy(index:QModelIndex):QModelIndex;
	function canFetchMore(parent:QModelIndex):Bool;
	function fetchMore(parent:QModelIndex):Void;
	function sort(column:Int, ?order:QtSortOrder):Void;
	function span(index:QModelIndex):QSize;
	function hasChildren(?parent:QModelIndex):Bool;
	function mimeData(indexes:QModelIndexList):QMimeData;
	function mimeTypes():QStringList;
	function supportedDropActions():QtDropActions;
	function sibling(row:Int, column:Int, idx:QModelIndex):QModelIndex;
	function resetInternalData():Void;
	function canDropMimeData(data:QMimeData, action:QtDropAction, row:Int, column:Int, parent:QModelIndex):Bool;
	function dropMimeData(data:QMimeData, action:QtDropAction, row:Int, column:Int, parent:QModelIndex):Bool;
	function supportedDragActions():QtDropActions;
}

