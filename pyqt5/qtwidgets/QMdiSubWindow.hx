package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSize;
import pyqt5.qtwidgets.QMenu;
import pyqt5.qtwidgets.QMdiArea;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

typedef QMdiSubWindowSubWindowOptions = QFlags<QMdiSubWindowSubWindowOption>;

@:pythonImport("PyQt5.QtWidgets", "QMdiSubWindow")
@:native("QMdiSubWindow")
extern class QMdiSubWindow extends QWidget {
	var windowStateChanged:QSignal2<QtWindowStates, QtWindowStates>;
	var aboutToActivate:QSignal0;

	function new(?parent:QWidget, ?flags:QtWindowFlags);

	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function setWidget(widget:QWidget):Void;
	function widget():QWidget;
	function isShaded():Bool;
	function setOption(option:QMdiSubWindowSubWindowOption, ?on:Bool):Void;
	function testOption(?v:QMdiSubWindowSubWindowOption):Bool;
	function setKeyboardSingleStep(step:Int):Void;
	function keyboardSingleStep():Int;
	function setKeyboardPageStep(step:Int):Void;
	function keyboardPageStep():Int;
	function setSystemMenu(systemMenu:QMenu):Void;
	function systemMenu():QMenu;
	function mdiArea():QMdiArea;
	function showSystemMenu():Void;
	function showShaded():Void;
	function eventFilter(object:QObject, event:QEvent):Bool;
	function event(event:QEvent):Bool;
	function showEvent(showEvent:QShowEvent):Void;
	function hideEvent(hideEvent:QHideEvent):Void;
	function changeEvent(changeEvent:QEvent):Void;
	function closeEvent(closeEvent:QCloseEvent):Void;
	function leaveEvent(leaveEvent:QEvent):Void;
	function resizeEvent(resizeEvent:QResizeEvent):Void;
	function timerEvent(timerEvent:QTimerEvent):Void;
	function moveEvent(moveEvent:QMoveEvent):Void;
	function paintEvent(paintEvent:QPaintEvent):Void;
	function mousePressEvent(mouseEvent:QMouseEvent):Void;
	function mouseDoubleClickEvent(mouseEvent:QMouseEvent):Void;
	function mouseReleaseEvent(mouseEvent:QMouseEvent):Void;
	function mouseMoveEvent(mouseEvent:QMouseEvent):Void;
	function keyPressEvent(keyEvent:QKeyEvent):Void;
	function contextMenuEvent(contextMenuEvent:QContextMenuEvent):Void;
	function focusInEvent(focusInEvent:QFocusEvent):Void;
	function focusOutEvent(focusOutEvent:QFocusEvent):Void;
	function childEvent(childEvent:QChildEvent):Void;
}

@:pythonImport("PyQt5.QtWidgets", "SubWindowOption")
@:native("QMdiSubWindow.SubWindowOption")
extern enum abstract QMdiSubWindowSubWindowOption(Int) from Int to Int {
	var RubberBandResize;
	var RubberBandMove;
}

