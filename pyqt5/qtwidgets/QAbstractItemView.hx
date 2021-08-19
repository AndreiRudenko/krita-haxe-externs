package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractScrollArea;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QItemSelectionModel;
import pyqt5.qtwidgets.QAbstractItemDelegate;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QVector;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QRegion;
import pyqt5.qtcore.QEvent;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QVariant;

typedef QAbstractItemViewEditTriggers = QFlags<QAbstractItemViewEditTrigger>;

@:pythonImport("PyQt5.QtWidgets", "QAbstractItemView")
@:native("QAbstractItemView")
extern class QAbstractItemView extends QAbstractScrollArea {
	var pressed:QSignal1<QModelIndex>;
	var clicked:QSignal1<QModelIndex>;
	var doubleClicked:QSignal1<QModelIndex>;
	var activated:QSignal1<QModelIndex>;
	var entered:QSignal1<QModelIndex>;
	var viewportEntered:QSignal0;
	var iconSizeChanged:QSignal1<QSize>;

	function new(?parent:QWidget);

	function setModel(model:QAbstractItemModel):Void;
	function model():QAbstractItemModel;
	function setSelectionModel(selectionModel:QItemSelectionModel):Void;
	function selectionModel():QItemSelectionModel;
	function setItemDelegate(delegate:QAbstractItemDelegate):Void;
	@:overload(function(index:QModelIndex):QAbstractItemDelegate {})
	function itemDelegate():QAbstractItemDelegate;
	function setSelectionMode(mode:QAbstractItemViewSelectionMode):Void;
	function selectionMode():QAbstractItemViewSelectionMode;
	function setSelectionBehavior(behavior:QAbstractItemViewSelectionBehavior):Void;
	function selectionBehavior():QAbstractItemViewSelectionBehavior;
	function currentIndex():QModelIndex;
	function rootIndex():QModelIndex;
	function setEditTriggers(triggers:QAbstractItemViewEditTriggers):Void;
	function editTriggers():QAbstractItemViewEditTriggers;
	function setAutoScroll(enable:Bool):Void;
	function hasAutoScroll():Bool;
	function setTabKeyNavigation(enable:Bool):Void;
	function tabKeyNavigation():Bool;
	function setDropIndicatorShown(enable:Bool):Void;
	function showDropIndicator():Bool;
	function setDragEnabled(enable:Bool):Void;
	function dragEnabled():Bool;
	function setAlternatingRowColors(enable:Bool):Void;
	function alternatingRowColors():Bool;
	function setIconSize(size:QSize):Void;
	function iconSize():QSize;
	function setTextElideMode(mode:QtTextElideMode):Void;
	function textElideMode():QtTextElideMode;
	function keyboardSearch(search:QString):Void;
	function visualRect(index:QModelIndex):QRect;
	function scrollTo(index:QModelIndex, ?hint:QAbstractItemViewScrollHint):Void;
	function indexAt(p:QPoint):QModelIndex;
	function sizeHintForIndex(index:QModelIndex):QSize;
	function sizeHintForRow(row:Int):Int;
	function sizeHintForColumn(column:Int):Int;
	function openPersistentEditor(index:QModelIndex):Void;
	function closePersistentEditor(index:QModelIndex):Void;
	function setIndexWidget(index:QModelIndex, widget:QWidget):Void;
	function indexWidget(index:QModelIndex):QWidget;
	function reset():Void;
	function setRootIndex(index:QModelIndex):Void;
	function selectAll():Void;
	@:overload(function(index:QModelIndex, trigger:QAbstractItemViewEditTrigger, event:QEvent):Bool {})
	function edit(index:QModelIndex):Void;
	function clearSelection():Void;
	function setCurrentIndex(index:QModelIndex):Void;
	function scrollToTop():Void;
	function scrollToBottom():Void;
	@:overload(function(index:QModelIndex):Void {})
	function update():Void;
	function dataChanged(topLeft:QModelIndex, bottomRight:QModelIndex, ?roles:QVector<Int>):Void;
	function rowsInserted(parent:QModelIndex, start:Int, end:Int):Void;
	function rowsAboutToBeRemoved(parent:QModelIndex, start:Int, end:Int):Void;
	function selectionChanged(selected:QItemSelection, deselected:QItemSelection):Void;
	function currentChanged(current:QModelIndex, previous:QModelIndex):Void;
	function updateEditorData():Void;
	function updateEditorGeometries():Void;
	function updateGeometries():Void;
	function verticalScrollbarAction(action:Int):Void;
	function horizontalScrollbarAction(action:Int):Void;
	function verticalScrollbarValueChanged(value:Int):Void;
	function horizontalScrollbarValueChanged(value:Int):Void;
	function closeEditor(editor:QWidget, hint:QAbstractItemDelegateEndEditHint):Void;
	function commitData(editor:QWidget):Void;
	function editorDestroyed(editor:QObject):Void;
	function moveCursor(cursorAction:QAbstractItemViewCursorAction, modifiers:QtKeyboardModifiers):QModelIndex;
	function horizontalOffset():Int;
	function verticalOffset():Int;
	function isIndexHidden(index:QModelIndex):Bool;
	function setSelection(rect:QRect, command:QItemSelectionModelSelectionFlags):Void;
	function visualRegionForSelection(selection:QItemSelection):QRegion;
	function selectedIndexes():QModelIndexList;
	function selectionCommand(index:QModelIndex, ?event:QEvent):QItemSelectionModelSelectionFlags;
	function startDrag(supportedActions:QtDropActions):Void;
	function viewOptions():QStyleOptionViewItem;
	function state():QAbstractItemViewState;
	function setState(state:QAbstractItemViewState):Void;
	function scheduleDelayedItemsLayout():Void;
	function executeDelayedItemsLayout():Void;
	function scrollDirtyRegion(dx:Int, dy:Int):Void;
	function setDirtyRegion(region:QRegion):Void;
	function dirtyRegionOffset():QPoint;
	function event(event:QEvent):Bool;
	function viewportEvent(e:QEvent):Bool;
	function mousePressEvent(e:QMouseEvent):Void;
	function mouseMoveEvent(e:QMouseEvent):Void;
	function mouseReleaseEvent(e:QMouseEvent):Void;
	function mouseDoubleClickEvent(e:QMouseEvent):Void;
	function dragEnterEvent(e:QDragEnterEvent):Void;
	function dragMoveEvent(e:QDragMoveEvent):Void;
	function dragLeaveEvent(e:QDragLeaveEvent):Void;
	function dropEvent(e:QDropEvent):Void;
	function focusInEvent(e:QFocusEvent):Void;
	function focusOutEvent(e:QFocusEvent):Void;
	function keyPressEvent(e:QKeyEvent):Void;
	function resizeEvent(e:QResizeEvent):Void;
	function timerEvent(e:QTimerEvent):Void;
	function dropIndicatorPosition():QAbstractItemViewDropIndicatorPosition;
	function setVerticalScrollMode(mode:QAbstractItemViewScrollMode):Void;
	function verticalScrollMode():QAbstractItemViewScrollMode;
	function setHorizontalScrollMode(mode:QAbstractItemViewScrollMode):Void;
	function horizontalScrollMode():QAbstractItemViewScrollMode;
	function setDragDropOverwriteMode(overwrite:Bool):Void;
	function dragDropOverwriteMode():Bool;
	function setDragDropMode(behavior:QAbstractItemViewDragDropMode):Void;
	function dragDropMode():QAbstractItemViewDragDropMode;
	function setItemDelegateForRow(row:Int, delegate:QAbstractItemDelegate):Void;
	function itemDelegateForRow(row:Int):QAbstractItemDelegate;
	function setItemDelegateForColumn(column:Int, delegate:QAbstractItemDelegate):Void;
	function itemDelegateForColumn(column:Int):QAbstractItemDelegate;
	function inputMethodQuery(query:QtInputMethodQuery):QVariant;
	function setAutoScrollMargin(margin:Int):Void;
	function autoScrollMargin():Int;
	function focusNextPrevChild(next:Bool):Bool;
	function inputMethodEvent(event:QInputMethodEvent):Void;
	function viewportSizeHint():QSize;
	function eventFilter(object:QObject, event:QEvent):Bool;
	function setDefaultDropAction(dropAction:QtDropAction):Void;
	function defaultDropAction():QtDropAction;
	function resetVerticalScrollMode():Void;
	function resetHorizontalScrollMode():Void;
	function isPersistentEditorOpen(index:QModelIndex):Bool;
}

@:pythonImport("PyQt5.QtWidgets", "DragDropMode")
@:native("QAbstractItemView.DragDropMode")
extern enum abstract QAbstractItemViewDragDropMode(Int) from Int to Int {
	var NoDragDrop;
	var DragOnly;
	var DropOnly;
	var DragDrop;
	var InternalMove;
}

@:pythonImport("PyQt5.QtWidgets", "EditTrigger")
@:native("QAbstractItemView.EditTrigger")
extern enum abstract QAbstractItemViewEditTrigger(Int) from Int to Int {
	var NoEditTriggers;
	var CurrentChanged;
	var DoubleClicked;
	var SelectedClicked;
	var EditKeyPressed;
	var AnyKeyPressed;
	var AllEditTriggers;
}

@:pythonImport("PyQt5.QtWidgets", "ScrollHint")
@:native("QAbstractItemView.ScrollHint")
extern enum abstract QAbstractItemViewScrollHint(Int) from Int to Int {
	var EnsureVisible;
	var PositionAtTop;
	var PositionAtBottom;
	var PositionAtCenter;
}

@:pythonImport("PyQt5.QtWidgets", "ScrollMode")
@:native("QAbstractItemView.ScrollMode")
extern enum abstract QAbstractItemViewScrollMode(Int) from Int to Int {
	var ScrollPerItem;
	var ScrollPerPixel;
}

@:pythonImport("PyQt5.QtWidgets", "SelectionBehavior")
@:native("QAbstractItemView.SelectionBehavior")
extern enum abstract QAbstractItemViewSelectionBehavior(Int) from Int to Int {
	var SelectItems;
	var SelectRows;
	var SelectColumns;
}

@:pythonImport("PyQt5.QtWidgets", "SelectionMode")
@:native("QAbstractItemView.SelectionMode")
extern enum abstract QAbstractItemViewSelectionMode(Int) from Int to Int {
	var NoSelection;
	var SingleSelection;
	var MultiSelection;
	var ExtendedSelection;
	var ContiguousSelection;
}

@:pythonImport("PyQt5.QtWidgets", "CursorAction")
@:native("QAbstractItemView.CursorAction")
extern enum abstract QAbstractItemViewCursorAction(Int) from Int to Int {
	var MoveUp;
	var MoveDown;
	var MoveLeft;
	var MoveRight;
	var MoveHome;
	var MoveEnd;
	var MovePageUp;
	var MovePageDown;
	var MoveNext;
	var MovePrevious;
}

@:pythonImport("PyQt5.QtWidgets", "State")
@:native("QAbstractItemView.State")
extern enum abstract QAbstractItemViewState(Int) from Int to Int {
	var NoState;
	var DraggingState;
	var DragSelectingState;
	var EditingState;
	var ExpandingState;
	var CollapsingState;
	var AnimatingState;
}

@:pythonImport("PyQt5.QtWidgets", "DropIndicatorPosition")
@:native("QAbstractItemView.DropIndicatorPosition")
extern enum abstract QAbstractItemViewDropIndicatorPosition(Int) from Int to Int {
	var OnItem;
	var AboveItem;
	var BelowItem;
	var OnViewport;
}

