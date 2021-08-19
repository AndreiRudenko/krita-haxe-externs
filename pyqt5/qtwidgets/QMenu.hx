package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtwidgets.QAction;
import pyqt5.qtgui.QIcon;
import pyqt5.qtgui.QKeySequence;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QSignal;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QMenu")
@:native("QMenu")
extern class QMenu extends QWidget {
	static function exec(actions:QList<QAction>, pos:QPoint, ?at:QAction, ?parent:QWidget):QAction;

	var aboutToHide:QSignal0;
	var aboutToShow:QSignal0;
	var hovered:QSignal1<QAction>;
	var triggered:QSignal1<QAction>;

	@:overload(function(?parent:QWidget):QMenu {})
	function new(title:QString, ?parent:QWidget);

	@:overload(function(text:QString):QAction {})
	@:overload(function(icon:QIcon, text:QString):QAction {})
	@:overload(function(text:QString, slot:Dynamic, ?shortcut:QKeySequence):QAction {})
	@:overload(function(icon:QIcon, text:QString, slot:Dynamic, ?shortcut:QKeySequence):QAction {})
	function addAction(action:QAction):Void;
	@:overload(function(title:QString):QMenu {})
	@:overload(function(icon:QIcon, title:QString):QMenu {})
	function addMenu(menu:QMenu):QAction;
	function addSeparator():QAction;
	function insertMenu(before:QAction, menu:QMenu):QAction;
	function insertSeparator(before:QAction):QAction;
	function clear():Void;
	function setTearOffEnabled(?v:Bool):Void;
	function isTearOffEnabled():Bool;
	function isTearOffMenuVisible():Bool;
	function hideTearOffMenu():Void;
	function setDefaultAction(?v:QAction):Void;
	function defaultAction():QAction;
	function setActiveAction(act:QAction):Void;
	function activeAction():QAction;
	function popup(p:QPoint, ?action:QAction):Void;
	@:overload(function(p:QPoint, ?action:QAction):QAction {})
	function exec():QAction;
	function sizeHint():QSize;
	function actionGeometry(?v:QAction):QRect;
	function actionAt(?v:QPoint):QAction;
	function menuAction():QAction;
	function title():QString;
	function setTitle(title:QString):Void;
	function icon():QIcon;
	function setIcon(icon:QIcon):Void;
	function setNoReplayFor(widget:QWidget):Void;
	function columnCount():Int;
	function initStyleOption(option:QStyleOptionMenuItem, action:QAction):Void;
	function changeEvent(?v:QEvent):Void;
	function keyPressEvent(?v:QKeyEvent):Void;
	function mouseReleaseEvent(?v:QMouseEvent):Void;
	function mousePressEvent(?v:QMouseEvent):Void;
	function mouseMoveEvent(?v:QMouseEvent):Void;
	function wheelEvent(?v:QWheelEvent):Void;
	function enterEvent(?v:QEvent):Void;
	function leaveEvent(?v:QEvent):Void;
	function hideEvent(?v:QHideEvent):Void;
	function paintEvent(?v:QPaintEvent):Void;
	function actionEvent(?v:QActionEvent):Void;
	function timerEvent(?v:QTimerEvent):Void;
	function event(?v:QEvent):Bool;
	function focusNextPrevChild(next:Bool):Bool;
	function isEmpty():Bool;
	function separatorsCollapsible():Bool;
	function setSeparatorsCollapsible(collapse:Bool):Void;
	@:overload(function(icon:QIcon, text:QString):QAction {})
	function addSection(text:QString):QAction;
	@:overload(function(before:QAction, icon:QIcon, text:QString):QAction {})
	function insertSection(before:QAction, text:QString):QAction;
	function toolTipsVisible():Bool;
	function setToolTipsVisible(visible:Bool):Void;
	function setAsDockMenu():Void;
	@:overload(function(pos:QPoint):Void {})
	function showTearOffMenu():Void;
}

