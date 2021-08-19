package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QAction;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QSignal;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtWidgets", "QToolBar")
@:native("QToolBar")
extern class QToolBar extends QWidget {
	var actionTriggered:QSignal1<QAction>;
	var movableChanged:QSignal1<Bool>;
	var allowedAreasChanged:QSignal1<QtToolBarAreas>;
	var orientationChanged:QSignal1<QtOrientation>;
	var iconSizeChanged:QSignal1<QSize>;
	var toolButtonStyleChanged:QSignal1<QtToolButtonStyle>;
	var topLevelChanged:QSignal1<Bool>;
	var visibilityChanged:QSignal1<Bool>;

	@:overload(function(title:QString, ?parent:QWidget):QToolBar {})
	function new(?parent:QWidget);

	function setMovable(movable:Bool):Void;
	function isMovable():Bool;
	function setAllowedAreas(areas:QtToolBarAreas):Void;
	function allowedAreas():QtToolBarAreas;
	function isAreaAllowed(area:QtToolBarArea):Bool;
	function setOrientation(orientation:QtOrientation):Void;
	function orientation():QtOrientation;
	function clear():Void;
	@:overload(function(text:QString):QAction {})
	@:overload(function(icon:QIcon, text:QString):QAction {})
	@:overload(function(text:QString, slot:Dynamic):QAction {})
	@:overload(function(icon:QIcon, text:QString, slot:Dynamic):QAction {})
	function addAction(action:QAction):Void;
	function addSeparator():QAction;
	function insertSeparator(before:QAction):QAction;
	function addWidget(widget:QWidget):QAction;
	function insertWidget(before:QAction, widget:QWidget):QAction;
	function actionGeometry(action:QAction):QRect;
	@:overload(function(ax:Int, ay:Int):QAction {})
	function actionAt(p:QPoint):QAction;
	function toggleViewAction():QAction;
	function iconSize():QSize;
	function toolButtonStyle():QtToolButtonStyle;
	function widgetForAction(action:QAction):QWidget;
	function setIconSize(iconSize:QSize):Void;
	function setToolButtonStyle(toolButtonStyle:QtToolButtonStyle):Void;
	function initStyleOption(option:QStyleOptionToolBar):Void;
	function actionEvent(event:QActionEvent):Void;
	function changeEvent(event:QEvent):Void;
	function paintEvent(event:QPaintEvent):Void;
	function event(event:QEvent):Bool;
	function isFloatable():Bool;
	function setFloatable(floatable:Bool):Void;
	function isFloating():Bool;
}

