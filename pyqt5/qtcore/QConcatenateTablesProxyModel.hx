package pyqt5.qtcore;

import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QMap;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QList;

@:pythonImport("PyQt5.QtCore", "QConcatenateTablesProxyModel")
@:native("QConcatenateTablesProxyModel")
extern class QConcatenateTablesProxyModel extends QAbstractItemModel {
	function new(?parent:QObject);

	function addSourceModel(sourceModel:QAbstractItemModel):Void;
	function removeSourceModel(sourceModel:QAbstractItemModel):Void;
	function mapFromSource(sourceIndex:QModelIndex):QModelIndex;
	function mapToSource(proxyIndex:QModelIndex):QModelIndex;
	function data(index:QModelIndex, ?role:Int):QVariant;
	function setData(index:QModelIndex, value:QVariant, ?role:Int):Bool;
	function itemData(proxyIndex:QModelIndex):QMap<Int, QVariant>;
	function setItemData(index:QModelIndex, roles:QMap<Int, QVariant>):Bool;
	function flags(index:QModelIndex):QtItemFlags;
	function index(row:Int, column:Int, ?parent:QModelIndex):QModelIndex;
	function parent(index:QModelIndex):QModelIndex;
	function rowCount(?parent:QModelIndex):Int;
	function headerData(section:Int, orientation:QtOrientation, ?role:Int):QVariant;
	function columnCount(?parent:QModelIndex):Int;
	function mimeTypes():QStringList;
	function mimeData(indexes:QModelIndexList):QMimeData;
	function canDropMimeData(data:QMimeData, action:QtDropAction, row:Int, column:Int, parent:QModelIndex):Bool;
	function dropMimeData(data:QMimeData, action:QtDropAction, row:Int, column:Int, parent:QModelIndex):Bool;
	function span(index:QModelIndex):QSize;
	function sourceModels():QList<QAbstractItemModel>;
}

