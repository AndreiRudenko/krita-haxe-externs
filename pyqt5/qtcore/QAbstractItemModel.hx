package pyqt5.qtcore;

import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QMap;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QVector;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QDataStream;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QHash;
import pyqt5.qtcore.QGlobal;

typedef QModelIndexList = QList<QModelIndex>;
typedef QAbstractItemModelCheckIndexOptions = QFlags<QAbstractItemModelCheckIndexOption>;

@:pythonImport("PyQt5.QtCore", "QModelIndex")
@:native("QModelIndex")
extern class QModelIndex {
	function new();

	function child(arow:Int, acolumn:Int):QModelIndex;
	function row():Int;
	function column():Int;
	function data(?role:Int):QVariant;
	function flags():QtItemFlags;
	function internalPointer():Dynamic;
	function internalId():Int;
	function model():QAbstractItemModel;
	function isValid():Bool;
	function parent():QModelIndex;
	function sibling(arow:Int, acolumn:Int):QModelIndex;
	function siblingAtColumn(column:Int):QModelIndex;
	function siblingAtRow(row:Int):QModelIndex;
}

@:pythonImport("PyQt5.QtCore", "QPersistentModelIndex")
@:native("QPersistentModelIndex")
extern class QPersistentModelIndex {
	@:overload(function():QPersistentModelIndex {})
	@:overload(function(index:QModelIndex):QPersistentModelIndex {})
	function new(other:QPersistentModelIndex);

	function row():Int;
	function column():Int;
	function data(?role:Int):QVariant;
	function flags():QtItemFlags;
	function parent():QModelIndex;
	function sibling(row:Int, column:Int):QModelIndex;
	function child(row:Int, column:Int):QModelIndex;
	function model():QAbstractItemModel;
	function isValid():Bool;
	function swap(other:QPersistentModelIndex):Void;
}

@:pythonImport("PyQt5.QtCore", "QAbstractItemModel")
@:native("QAbstractItemModel")
extern class QAbstractItemModel extends QObject {
	var dataChanged:QSignal3<QModelIndex, QModelIndex, QVector<Int>>;
	var headerDataChanged:QSignal3<QtOrientation, Int, Int>;
	var layoutAboutToBeChanged:QSignal2<QList<QPersistentModelIndex>, QAbstractItemModelLayoutChangeHint>;
	var layoutChanged:QSignal2<QList<QPersistentModelIndex>, QAbstractItemModelLayoutChangeHint>;
	var rowsAboutToBeInserted:QSignal3<QModelIndex, Int, Int>;
	var rowsInserted:QSignal3<QModelIndex, Int, Int>;
	var rowsAboutToBeRemoved:QSignal3<QModelIndex, Int, Int>;
	var rowsRemoved:QSignal3<QModelIndex, Int, Int>;
	var columnsAboutToBeInserted:QSignal3<QModelIndex, Int, Int>;
	var columnsInserted:QSignal3<QModelIndex, Int, Int>;
	var columnsAboutToBeRemoved:QSignal3<QModelIndex, Int, Int>;
	var columnsRemoved:QSignal3<QModelIndex, Int, Int>;
	var modelAboutToBeReset:QSignal0;
	var modelReset:QSignal0;
	var rowsAboutToBeMoved:QSignal0;
	var rowsMoved:QSignal0;
	var columnsAboutToBeMoved:QSignal0;
	var columnsMoved:QSignal0;

	function new(?parent:QObject);

	function hasIndex(row:Int, column:Int, ?parent:QModelIndex):Bool;
	function index(row:Int, column:Int, ?parent:QModelIndex):QModelIndex;
	@:overload(function():QObject {})
	function parent(child:QModelIndex):QModelIndex;
	function sibling(row:Int, column:Int, idx:QModelIndex):QModelIndex;
	function rowCount(?parent:QModelIndex):Int;
	function columnCount(?parent:QModelIndex):Int;
	function hasChildren(?parent:QModelIndex):Bool;
	function data(index:QModelIndex, ?role:Int):QVariant;
	function setData(index:QModelIndex, value:QVariant, ?role:Int):Bool;
	function headerData(section:Int, orientation:QtOrientation, ?role:Int):QVariant;
	function setHeaderData(section:Int, orientation:QtOrientation, value:QVariant, ?role:Int):Bool;
	function itemData(index:QModelIndex):QMap<Int, QVariant>;
	function setItemData(index:QModelIndex, roles:QMap<Int, QVariant>):Bool;
	function mimeTypes():QStringList;
	function mimeData(indexes:QModelIndexList):QMimeData;
	function dropMimeData(data:QMimeData, action:QtDropAction, row:Int, column:Int, parent:QModelIndex):Bool;
	function supportedDropActions():QtDropActions;
	function insertRows(row:Int, count:Int, ?parent:QModelIndex):Bool;
	function insertColumns(column:Int, count:Int, ?parent:QModelIndex):Bool;
	function removeRows(row:Int, count:Int, ?parent:QModelIndex):Bool;
	function removeColumns(column:Int, count:Int, ?parent:QModelIndex):Bool;
	function fetchMore(parent:QModelIndex):Void;
	function canFetchMore(parent:QModelIndex):Bool;
	function flags(index:QModelIndex):QtItemFlags;
	function sort(column:Int, ?order:QtSortOrder):Void;
	function buddy(index:QModelIndex):QModelIndex;
	function match(start:QModelIndex, role:Int, value:QVariant, ?hits:Int, ?flags:QtMatchFlags):QModelIndexList;
	function span(index:QModelIndex):QSize;
	function submit():Bool;
	function revert():Void;
	function encodeData(indexes:QModelIndexList, stream:QDataStream):Void;
	function decodeData(row:Int, column:Int, parent:QModelIndex, stream:QDataStream):Bool;
	function beginInsertRows(parent:QModelIndex, first:Int, last:Int):Void;
	function endInsertRows():Void;
	function beginRemoveRows(parent:QModelIndex, first:Int, last:Int):Void;
	function endRemoveRows():Void;
	function beginInsertColumns(parent:QModelIndex, first:Int, last:Int):Void;
	function endInsertColumns():Void;
	function beginRemoveColumns(parent:QModelIndex, first:Int, last:Int):Void;
	function endRemoveColumns():Void;
	function persistentIndexList():QModelIndexList;
	function changePersistentIndex(from:QModelIndex, to:QModelIndex):Void;
	function changePersistentIndexList(from:QModelIndexList, to:QModelIndexList):Void;
	function insertRow(row:Int, ?parent:QModelIndex):Bool;
	function insertColumn(column:Int, ?parent:QModelIndex):Bool;
	function removeRow(row:Int, ?parent:QModelIndex):Bool;
	function removeColumn(column:Int, ?parent:QModelIndex):Bool;
	function supportedDragActions():QtDropActions;
	function roleNames():QHash<Int, QByteArray>;
	function createIndex(row:Int, column:Int, ?object:Dynamic):QModelIndex;
	function beginMoveRows(sourceParent:QModelIndex, sourceFirst:Int, sourceLast:Int, destinationParent:QModelIndex, destinationRow:Int):Bool;
	function endMoveRows():Void;
	function beginMoveColumns(sourceParent:QModelIndex, sourceFirst:Int, sourceLast:Int, destinationParent:QModelIndex, destinationColumn:Int):Bool;
	function endMoveColumns():Void;
	function beginResetModel():Void;
	function endResetModel():Void;
	function resetInternalData():Void;
	function canDropMimeData(data:QMimeData, action:QtDropAction, row:Int, column:Int, parent:QModelIndex):Bool;
	function moveRows(sourceParent:QModelIndex, sourceRow:Int, count:Int, destinationParent:QModelIndex, destinationChild:Int):Bool;
	function moveColumns(sourceParent:QModelIndex, sourceColumn:Int, count:Int, destinationParent:QModelIndex, destinationChild:Int):Bool;
	function moveRow(sourceParent:QModelIndex, sourceRow:Int, destinationParent:QModelIndex, destinationChild:Int):Bool;
	function moveColumn(sourceParent:QModelIndex, sourceColumn:Int, destinationParent:QModelIndex, destinationChild:Int):Bool;
	function checkIndex(index:QModelIndex, ?options:QAbstractItemModelCheckIndexOptions):Bool;
}

@:pythonImport("PyQt5.QtCore", "LayoutChangeHint")
@:native("QAbstractItemModel.LayoutChangeHint")
extern enum abstract QAbstractItemModelLayoutChangeHint(Int) from Int to Int {
	var NoLayoutChangeHint;
	var VerticalSortHint;
	var HorizontalSortHint;
}

@:pythonImport("PyQt5.QtCore", "CheckIndexOption")
@:native("QAbstractItemModel.CheckIndexOption")
extern enum abstract QAbstractItemModelCheckIndexOption(Int) from Int to Int {
	var NoOption;
	var IndexIsValid;
	var DoNotUseParent;
	var ParentIsInvalid;
}

@:pythonImport("PyQt5.QtCore", "QAbstractTableModel")
@:native("QAbstractTableModel")
extern class QAbstractTableModel extends QAbstractItemModel {
	function new(?parent:QObject);

	function index(row:Int, column:Int, ?parent:QModelIndex):QModelIndex;
	function dropMimeData(data:QMimeData, action:QtDropAction, row:Int, column:Int, parent:QModelIndex):Bool;
	function flags(index:QModelIndex):QtItemFlags;
	function parent():QObject;
	function sibling(row:Int, column:Int, idx:QModelIndex):QModelIndex;
}

@:pythonImport("PyQt5.QtCore", "QAbstractListModel")
@:native("QAbstractListModel")
extern class QAbstractListModel extends QAbstractItemModel {
	function new(?parent:QObject);

	function index(row:Int, ?column:Int, ?parent:QModelIndex):QModelIndex;
	function dropMimeData(data:QMimeData, action:QtDropAction, row:Int, column:Int, parent:QModelIndex):Bool;
	function flags(index:QModelIndex):QtItemFlags;
	function parent():QObject;
	function sibling(row:Int, column:Int, idx:QModelIndex):QModelIndex;
}

