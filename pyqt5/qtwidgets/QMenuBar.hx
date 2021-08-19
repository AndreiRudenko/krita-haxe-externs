package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtwidgets.QAction;
import pyqt5.qtcore.QString;
import pyqt5.qtwidgets.QMenu;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSignal;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QObject;

@:pythonImport("PyQt5.QtWidgets", "QMenuBar")
@:native("QMenuBar")
extern class QMenuBar extends QWidget {
	var triggered:QSignal1<QAction>;
	var hovered:QSignal1<QAction>;

	function new(?parent:QWidget);

	@:overload(function(text:QString):QAction {})
	@:overload(function(text:QString, slot:Dynamic):QAction {})
	function addAction(action:QAction):Void;
	@:overload(function(title:QString):QMenu {})
	@:overload(function(icon:QIcon, title:QString):QMenu {})
	function addMenu(menu:QMenu):QAction;
	function addSeparator():QAction;
	function insertMenu(before:QAction, menu:QMenu):QAction;
	function insertSeparator(before:QAction):QAction;
	function clear():Void;
	function activeAction():QAction;
	function setActiveAction(action:QAction):Void;
	function setDefaultUp(?v:Bool):Void;
	function isDefaultUp():Bool;
	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function heightForWidth(?v:Int):Int;
	function actionGeometry(?v:QAction):QRect;
	function actionAt(?v:QPoint):QAction;
	function setCornerWidget(widget:QWidget, ?corner:QtCorner):Void;
	function cornerWidget(?corner:QtCorner):QWidget;
	function setVisible(visible:Bool):Void;
	function initStyleOption(option:QStyleOptionMenuItem, action:QAction):Void;
	function changeEvent(?v:QEvent):Void;
	function keyPressEvent(?v:QKeyEvent):Void;
	function mouseReleaseEvent(?v:QMouseEvent):Void;
	function mousePressEvent(?v:QMouseEvent):Void;
	function mouseMoveEvent(?v:QMouseEvent):Void;
	function leaveEvent(?v:QEvent):Void;
	function paintEvent(?v:QPaintEvent):Void;
	function resizeEvent(?v:QResizeEvent):Void;
	function actionEvent(?v:QActionEvent):Void;
	function focusOutEvent(?v:QFocusEvent):Void;
	function focusInEvent(?v:QFocusEvent):Void;
	function eventFilter(?v:QObject, ?v:QEvent):Bool;
	function event(?v:QEvent):Bool;
	function timerEvent(?v:QTimerEvent):Void;
	function isNativeMenuBar():Bool;
	function setNativeMenuBar(nativeMenuBar:Bool):Void;
}

