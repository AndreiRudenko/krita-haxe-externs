package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractItemView;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QItemSelectionModel;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtgui.QRegion;

@:pythonImport("PyQt5.QtWidgets", "QColumnView")
@:native("QColumnView")
extern class QColumnView extends QAbstractItemView {
	var updatePreviewWidget:QSignal1<QModelIndex>;

	function new(?parent:QWidget);

	function columnWidths():QList<Int>;
	function previewWidget():QWidget;
	function resizeGripsVisible():Bool;
	function setColumnWidths(list:QList<Int>):Void;
	function setPreviewWidget(widget:QWidget):Void;
	function setResizeGripsVisible(visible:Bool):Void;
	function indexAt(point:QPoint):QModelIndex;
	function scrollTo(index:QModelIndex, ?hint:QAbstractItemViewScrollHint):Void;
	function sizeHint():QSize;
	function visualRect(index:QModelIndex):QRect;
	function setModel(model:QAbstractItemModel):Void;
	function setSelectionModel(selectionModel:QItemSelectionModel):Void;
	function setRootIndex(index:QModelIndex):Void;
	function selectAll():Void;
	function createColumn(rootIndex:QModelIndex):QAbstractItemView;
	function initializeColumn(column:QAbstractItemView):Void;
	function isIndexHidden(index:QModelIndex):Bool;
	function moveCursor(cursorAction:QAbstractItemViewCursorAction, modifiers:QtKeyboardModifiers):QModelIndex;
	function resizeEvent(event:QResizeEvent):Void;
	function setSelection(rect:QRect, command:QItemSelectionModelSelectionFlags):Void;
	function visualRegionForSelection(selection:QItemSelection):QRegion;
	function horizontalOffset():Int;
	function verticalOffset():Int;
	function scrollContentsBy(dx:Int, dy:Int):Void;
	function rowsInserted(parent:QModelIndex, start:Int, end:Int):Void;
	function currentChanged(current:QModelIndex, previous:QModelIndex):Void;
}

