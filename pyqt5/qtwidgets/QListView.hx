package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractItemView;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QVector;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QItemSelectionModel;
import pyqt5.qtgui.QRegion;

@:pythonImport("PyQt5.QtWidgets", "QListView")
@:native("QListView")
extern class QListView extends QAbstractItemView {
	var indexesMoved:QSignal1<QModelIndexList>;

	function new(?parent:QWidget);

	function setMovement(movement:QListViewMovement):Void;
	function movement():QListViewMovement;
	function setFlow(flow:QListViewFlow):Void;
	function flow():QListViewFlow;
	function setWrapping(enable:Bool):Void;
	function isWrapping():Bool;
	function setResizeMode(mode:QListViewResizeMode):Void;
	function resizeMode():QListViewResizeMode;
	function setLayoutMode(mode:QListViewLayoutMode):Void;
	function layoutMode():QListViewLayoutMode;
	function setSpacing(space:Int):Void;
	function spacing():Int;
	function setGridSize(size:QSize):Void;
	function gridSize():QSize;
	function setViewMode(mode:QListViewViewMode):Void;
	function viewMode():QListViewViewMode;
	function clearPropertyFlags():Void;
	function isRowHidden(row:Int):Bool;
	function setRowHidden(row:Int, hide:Bool):Void;
	function setModelColumn(column:Int):Void;
	function modelColumn():Int;
	function setUniformItemSizes(enable:Bool):Void;
	function uniformItemSizes():Bool;
	function visualRect(index:QModelIndex):QRect;
	function scrollTo(index:QModelIndex, ?hint:QAbstractItemViewScrollHint):Void;
	function indexAt(p:QPoint):QModelIndex;
	function reset():Void;
	function setRootIndex(index:QModelIndex):Void;
	function scrollContentsBy(dx:Int, dy:Int):Void;
	function dataChanged(topLeft:QModelIndex, bottomRight:QModelIndex, ?roles:QVector<Int>):Void;
	function rowsInserted(parent:QModelIndex, start:Int, end:Int):Void;
	function rowsAboutToBeRemoved(parent:QModelIndex, start:Int, end:Int):Void;
	function event(e:QEvent):Bool;
	function mouseMoveEvent(e:QMouseEvent):Void;
	function mouseReleaseEvent(e:QMouseEvent):Void;
	function timerEvent(e:QTimerEvent):Void;
	function resizeEvent(e:QResizeEvent):Void;
	function dragMoveEvent(e:QDragMoveEvent):Void;
	function dragLeaveEvent(e:QDragLeaveEvent):Void;
	function dropEvent(e:QDropEvent):Void;
	function wheelEvent(e:QWheelEvent):Void;
	function startDrag(supportedActions:QtDropActions):Void;
	function viewOptions():QStyleOptionViewItem;
	function paintEvent(e:QPaintEvent):Void;
	function horizontalOffset():Int;
	function verticalOffset():Int;
	function moveCursor(cursorAction:QAbstractItemViewCursorAction, modifiers:QtKeyboardModifiers):QModelIndex;
	function rectForIndex(index:QModelIndex):QRect;
	function setPositionForIndex(position:QPoint, index:QModelIndex):Void;
	function setSelection(rect:QRect, command:QItemSelectionModelSelectionFlags):Void;
	function visualRegionForSelection(selection:QItemSelection):QRegion;
	function selectedIndexes():QModelIndexList;
	function updateGeometries():Void;
	function isIndexHidden(index:QModelIndex):Bool;
	function viewportSizeHint():QSize;
	function setBatchSize(batchSize:Int):Void;
	function batchSize():Int;
	function setWordWrap(on:Bool):Void;
	function wordWrap():Bool;
	function setSelectionRectVisible(show:Bool):Void;
	function isSelectionRectVisible():Bool;
	function selectionChanged(selected:QItemSelection, deselected:QItemSelection):Void;
	function currentChanged(current:QModelIndex, previous:QModelIndex):Void;
	function setItemAlignment(alignment:QtAlignment):Void;
	function itemAlignment():QtAlignment;
}

@:pythonImport("PyQt5.QtWidgets", "Movement")
@:native("QListView.Movement")
extern enum abstract QListViewMovement(Int) from Int to Int {
	var Static;
	var Free;
	var Snap;
}

@:pythonImport("PyQt5.QtWidgets", "Flow")
@:native("QListView.Flow")
extern enum abstract QListViewFlow(Int) from Int to Int {
	var LeftToRight;
	var TopToBottom;
}

@:pythonImport("PyQt5.QtWidgets", "ResizeMode")
@:native("QListView.ResizeMode")
extern enum abstract QListViewResizeMode(Int) from Int to Int {
	var Fixed;
	var Adjust;
}

@:pythonImport("PyQt5.QtWidgets", "LayoutMode")
@:native("QListView.LayoutMode")
extern enum abstract QListViewLayoutMode(Int) from Int to Int {
	var SinglePass;
	var Batched;
}

@:pythonImport("PyQt5.QtWidgets", "ViewMode")
@:native("QListView.ViewMode")
extern enum abstract QListViewViewMode(Int) from Int to Int {
	var ListMode;
	var IconMode;
}

