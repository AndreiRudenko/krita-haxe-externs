package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractScrollArea;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QSize;
import pyqt5.qtwidgets.QMdiSubWindow;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QBrush;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtwidgets.QTabWidget;

typedef QMdiAreaAreaOptions = QFlags<QMdiAreaAreaOption>;

@:pythonImport("PyQt5.QtWidgets", "QMdiArea")
@:native("QMdiArea")
extern class QMdiArea extends QAbstractScrollArea {
	var subWindowActivated:QSignal1<QMdiSubWindow>;

	function new(?parent:QWidget);

	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function activeSubWindow():QMdiSubWindow;
	function addSubWindow(widget:QWidget, ?flags:QtWindowFlags):QMdiSubWindow;
	function subWindowList(?order:QMdiAreaWindowOrder):QList<QMdiSubWindow>;
	function currentSubWindow():QMdiSubWindow;
	function removeSubWindow(widget:QWidget):Void;
	function background():QBrush;
	function setBackground(background:QBrush):Void;
	function setOption(option:QMdiAreaAreaOption, ?on:Bool):Void;
	function testOption(opton:QMdiAreaAreaOption):Bool;
	function setActiveSubWindow(window:QMdiSubWindow):Void;
	function tileSubWindows():Void;
	function cascadeSubWindows():Void;
	function closeActiveSubWindow():Void;
	function closeAllSubWindows():Void;
	function activateNextSubWindow():Void;
	function activatePreviousSubWindow():Void;
	function setupViewport(viewport:QWidget):Void;
	function event(event:QEvent):Bool;
	function eventFilter(object:QObject, event:QEvent):Bool;
	function paintEvent(paintEvent:QPaintEvent):Void;
	function childEvent(childEvent:QChildEvent):Void;
	function resizeEvent(resizeEvent:QResizeEvent):Void;
	function timerEvent(timerEvent:QTimerEvent):Void;
	function showEvent(showEvent:QShowEvent):Void;
	function viewportEvent(event:QEvent):Bool;
	function scrollContentsBy(dx:Int, dy:Int):Void;
	function activationOrder():QMdiAreaWindowOrder;
	function setActivationOrder(order:QMdiAreaWindowOrder):Void;
	function setViewMode(mode:QMdiAreaViewMode):Void;
	function viewMode():QMdiAreaViewMode;
	function setTabShape(shape:QTabWidgetTabShape):Void;
	function tabShape():QTabWidgetTabShape;
	function setTabPosition(position:QTabWidgetTabPosition):Void;
	function tabPosition():QTabWidgetTabPosition;
	function documentMode():Bool;
	function setDocumentMode(enabled:Bool):Void;
	function setTabsClosable(closable:Bool):Void;
	function tabsClosable():Bool;
	function setTabsMovable(movable:Bool):Void;
	function tabsMovable():Bool;
}

@:pythonImport("PyQt5.QtWidgets", "AreaOption")
@:native("QMdiArea.AreaOption")
extern enum abstract QMdiAreaAreaOption(Int) from Int to Int {
	var DontMaximizeSubWindowOnActivation;
}

@:pythonImport("PyQt5.QtWidgets", "ViewMode")
@:native("QMdiArea.ViewMode")
extern enum abstract QMdiAreaViewMode(Int) from Int to Int {
	var SubWindowView;
	var TabbedView;
}

@:pythonImport("PyQt5.QtWidgets", "WindowOrder")
@:native("QMdiArea.WindowOrder")
extern enum abstract QMdiAreaWindowOrder(Int) from Int to Int {
	var CreationOrder;
	var StackingOrder;
	var ActivationHistoryOrder;
}

