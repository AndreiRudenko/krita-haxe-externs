package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractButton;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QMenu;
import pyqt5.qtwidgets.QAction;
import pyqt5.qtcore.QSignal;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QPoint;

@:pythonImport("PyQt5.QtWidgets", "QToolButton")
@:native("QToolButton")
extern class QToolButton extends QAbstractButton {
	var triggered:QSignal1<QAction>;

	function new(?parent:QWidget);

	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function toolButtonStyle():QtToolButtonStyle;
	function arrowType():QtArrowType;
	function setArrowType(type:QtArrowType):Void;
	function setMenu(menu:QMenu):Void;
	function menu():QMenu;
	function setPopupMode(mode:QToolButtonToolButtonPopupMode):Void;
	function popupMode():QToolButtonToolButtonPopupMode;
	function defaultAction():QAction;
	function setAutoRaise(enable:Bool):Void;
	function autoRaise():Bool;
	function showMenu():Void;
	function setToolButtonStyle(style:QtToolButtonStyle):Void;
	function setDefaultAction(?v:QAction):Void;
	function initStyleOption(option:QStyleOptionToolButton):Void;
	function event(e:QEvent):Bool;
	function mousePressEvent(?v:QMouseEvent):Void;
	function paintEvent(?v:QPaintEvent):Void;
	function actionEvent(?v:QActionEvent):Void;
	function enterEvent(?v:QEvent):Void;
	function leaveEvent(?v:QEvent):Void;
	function timerEvent(?v:QTimerEvent):Void;
	function changeEvent(?v:QEvent):Void;
	function mouseReleaseEvent(?v:QMouseEvent):Void;
	function nextCheckState():Void;
	function hitButton(pos:QPoint):Bool;
}

@:pythonImport("PyQt5.QtWidgets", "QToolButton")
@:native("QToolButton")
extern enum abstract QToolButtonToolButtonPopupMode(Int) from Int to Int {
	var DelayedPopup;
	var MenuButtonPopup;
	var InstantPopup;
}

