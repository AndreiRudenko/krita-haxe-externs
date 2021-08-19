package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QFrame;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QScrollBar;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QMargins;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QObject;
import pyqt5.qtwidgets.QApplication;

@:pythonImport("PyQt5.QtWidgets", "QAbstractScrollArea")
@:native("QAbstractScrollArea")
extern class QAbstractScrollArea extends QFrame {
	function new(?parent:QWidget);

	function verticalScrollBarPolicy():QtScrollBarPolicy;
	function setVerticalScrollBarPolicy(?v:QtScrollBarPolicy):Void;
	function verticalScrollBar():QScrollBar;
	function horizontalScrollBarPolicy():QtScrollBarPolicy;
	function setHorizontalScrollBarPolicy(?v:QtScrollBarPolicy):Void;
	function horizontalScrollBar():QScrollBar;
	function viewport():QWidget;
	function maximumViewportSize():QSize;
	function minimumSizeHint():QSize;
	function sizeHint():QSize;
	@:overload(function(margins:QMargins):Void {})
	function setViewportMargins(left:Int, top:Int, right:Int, bottom:Int):Void;
	function viewportMargins():QMargins;
	function viewportSizeHint():QSize;
	function event(?v:QEvent):Bool;
	function viewportEvent(?v:QEvent):Bool;
	function resizeEvent(?v:QResizeEvent):Void;
	function paintEvent(?v:QPaintEvent):Void;
	function mousePressEvent(?v:QMouseEvent):Void;
	function mouseReleaseEvent(?v:QMouseEvent):Void;
	function mouseDoubleClickEvent(?v:QMouseEvent):Void;
	function mouseMoveEvent(?v:QMouseEvent):Void;
	function wheelEvent(?v:QWheelEvent):Void;
	function contextMenuEvent(?v:QContextMenuEvent):Void;
	function dragEnterEvent(?v:QDragEnterEvent):Void;
	function dragMoveEvent(?v:QDragMoveEvent):Void;
	function dragLeaveEvent(?v:QDragLeaveEvent):Void;
	function dropEvent(?v:QDropEvent):Void;
	function keyPressEvent(?v:QKeyEvent):Void;
	function eventFilter(?v:QObject, ?v:QEvent):Bool;
	function scrollContentsBy(dx:Int, dy:Int):Void;
	function setVerticalScrollBar(scrollbar:QScrollBar):Void;
	function setHorizontalScrollBar(scrollbar:QScrollBar):Void;
	function cornerWidget():QWidget;
	function setCornerWidget(widget:QWidget):Void;
	function addScrollBarWidget(widget:QWidget, alignment:QtAlignment):Void;
	function scrollBarWidgets(alignment:QtAlignment):QWidgetList;
	function setViewport(widget:QWidget):Void;
	function setupViewport(viewport:QWidget):Void;
	function sizeAdjustPolicy():QAbstractScrollAreaSizeAdjustPolicy;
	function setSizeAdjustPolicy(policy:QAbstractScrollAreaSizeAdjustPolicy):Void;
}

@:pythonImport("PyQt5.QtWidgets", "SizeAdjustPolicy")
@:native("QAbstractScrollArea.SizeAdjustPolicy")
extern enum abstract QAbstractScrollAreaSizeAdjustPolicy(Int) from Int to Int {
	var AdjustIgnored;
	var AdjustToContentsOnFirstShow;
	var AdjustToContents;
}

