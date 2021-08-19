package pyqt5.qtcore;

import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QSignal;

typedef QItemSelectionModelSelectionFlags = QFlags<QItemSelectionModelSelectionFlag>;

@:pythonImport("PyQt5.QtCore", "QItemSelectionRange")
@:native("QItemSelectionRange")
extern class QItemSelectionRange {
	@:overload(function():QItemSelectionRange {})
	@:overload(function(other:QItemSelectionRange):QItemSelectionRange {})
	@:overload(function(atopLeft:QModelIndex, abottomRight:QModelIndex):QItemSelectionRange {})
	function new(index:QModelIndex);

	function top():Int;
	function left():Int;
	function bottom():Int;
	function right():Int;
	function width():Int;
	function height():Int;
	function topLeft():QPersistentModelIndex;
	function bottomRight():QPersistentModelIndex;
	function parent():QModelIndex;
	function model():QAbstractItemModel;
	@:overload(function(row:Int, column:Int, parentIndex:QModelIndex):Bool {})
	function contains(index:QModelIndex):Bool;
	function intersects(other:QItemSelectionRange):Bool;
	function isValid():Bool;
	function indexes():QModelIndexList;
	function intersected(other:QItemSelectionRange):QItemSelectionRange;
	function isEmpty():Bool;
	function swap(other:QItemSelectionRange):Void;
}

@:pythonImport("PyQt5.QtCore", "QItemSelectionModel")
@:native("QItemSelectionModel")
extern class QItemSelectionModel extends QObject {
	var selectionChanged:QSignal2<QItemSelection, QItemSelection>;
	var currentChanged:QSignal2<QModelIndex, QModelIndex>;
	var currentRowChanged:QSignal2<QModelIndex, QModelIndex>;
	var currentColumnChanged:QSignal2<QModelIndex, QModelIndex>;
	var modelChanged:QSignal1<QAbstractItemModel>;

	@:overload(function(?model:QAbstractItemModel):QItemSelectionModel {})
	function new(model:QAbstractItemModel, parent:QObject);

	function currentIndex():QModelIndex;
	function isSelected(index:QModelIndex):Bool;
	function isRowSelected(row:Int, ?parent:QModelIndex):Bool;
	function isColumnSelected(column:Int, ?parent:QModelIndex):Bool;
	function rowIntersectsSelection(row:Int, ?parent:QModelIndex):Bool;
	function columnIntersectsSelection(column:Int, ?parent:QModelIndex):Bool;
	function selectedIndexes():QModelIndexList;
	function selection():QItemSelection;
	function model():QAbstractItemModel;
	function clear():Void;
	function clearSelection():Void;
	function reset():Void;
	@:overload(function(selection:QItemSelection, command:QItemSelectionModelSelectionFlags):Void {})
	function select(index:QModelIndex, command:QItemSelectionModelSelectionFlags):Void;
	function setCurrentIndex(index:QModelIndex, command:QItemSelectionModelSelectionFlags):Void;
	function clearCurrentIndex():Void;
	function emitSelectionChanged(newSelection:QItemSelection, oldSelection:QItemSelection):Void;
	function hasSelection():Bool;
	function selectedRows(?column:Int):QModelIndexList;
	function selectedColumns(?row:Int):QModelIndexList;
	function setModel(model:QAbstractItemModel):Void;
}

@:pythonImport("PyQt5.QtCore", "QItemSelectionModel")
@:native("QItemSelectionModel")
extern enum abstract QItemSelectionModelSelectionFlag(Int) from Int to Int {
	var NoUpdate;
	var Clear;
	var Select;
	var Deselect;
	var Toggle;
	var Current;
	var Rows;
	var Columns;
	var SelectCurrent;
	var ToggleCurrent;
	var ClearAndSelect;
}

@:pythonImport("PyQt5.QtCore", "QItemSelection")
@:native("QItemSelection")
extern class QItemSelection {
	static function split(range:QItemSelectionRange, other:QItemSelectionRange, result:QItemSelection):Void;

	@:overload(function():QItemSelection {})
	function new(topLeft:QModelIndex, bottomRight:QModelIndex);

	function select(topLeft:QModelIndex, bottomRight:QModelIndex):Void;
	function contains(index:QModelIndex):Bool;
	function indexes():QModelIndexList;
	function merge(other:QItemSelection, command:QItemSelectionModelSelectionFlags):Void;
	function clear():Void;
	function isEmpty():Bool;
	function append(range:QItemSelectionRange):Void;
	function prepend(range:QItemSelectionRange):Void;
	function insert(i:Int, range:QItemSelectionRange):Void;
	function replace(i:Int, range:QItemSelectionRange):Void;
	function removeAt(i:Int):Void;
	function removeAll(range:QItemSelectionRange):Int;
	function takeAt(i:Int):QItemSelectionRange;
	function takeFirst():QItemSelectionRange;
	function takeLast():QItemSelectionRange;
	function move(from:Int, to:Int):Void;
	function swap(i:Int, j:Int):Void;
	@:overload(function():Int {})
	function count(range:QItemSelectionRange):Int;
	function first():QItemSelectionRange;
	function last():QItemSelectionRange;
	function indexOf(value:QItemSelectionRange, ?from:Int):Int;
	function lastIndexOf(value:QItemSelectionRange, ?from:Int):Int;
}

