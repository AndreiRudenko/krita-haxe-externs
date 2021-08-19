package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSize;
import pyqt5.qtwidgets.QMenuBar;
import pyqt5.qtwidgets.QStatusBar;
import pyqt5.qtwidgets.QToolBar;
import pyqt5.qtcore.QString;
import pyqt5.qtwidgets.QDockWidget;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtwidgets.QMenu;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QTabWidget;
import pyqt5.qtcore.QList;

typedef QMainWindowDockOptions = QFlags<QMainWindowDockOption>;

@:pythonImport("PyQt5.QtWidgets", "QMainWindow")
@:native("QMainWindow")
extern class QMainWindow extends QWidget {
	var iconSizeChanged:QSignal1<QSize>;
	var toolButtonStyleChanged:QSignal1<QtToolButtonStyle>;
	var tabifiedDockWidgetActivated:QSignal1<QDockWidget>;

	function new(?parent:QWidget, ?flags:QtWindowFlags);

	function iconSize():QSize;
	function setIconSize(iconSize:QSize):Void;
	function toolButtonStyle():QtToolButtonStyle;
	function setToolButtonStyle(toolButtonStyle:QtToolButtonStyle):Void;
	function menuBar():QMenuBar;
	function setMenuBar(menubar:QMenuBar):Void;
	function statusBar():QStatusBar;
	function setStatusBar(statusbar:QStatusBar):Void;
	function centralWidget():QWidget;
	function setCentralWidget(widget:QWidget):Void;
	function setCorner(corner:QtCorner, area:QtDockWidgetArea):Void;
	function corner(corner:QtCorner):QtDockWidgetArea;
	function addToolBarBreak(?area:QtToolBarArea):Void;
	function insertToolBarBreak(before:QToolBar):Void;
	@:overload(function(toolbar:QToolBar):Void {})
	@:overload(function(title:QString):QToolBar {})
	function addToolBar(area:QtToolBarArea, toolbar:QToolBar):Void;
	function insertToolBar(before:QToolBar, toolbar:QToolBar):Void;
	function removeToolBar(toolbar:QToolBar):Void;
	function toolBarArea(toolbar:QToolBar):QtToolBarArea;
	@:overload(function(area:QtDockWidgetArea, dockwidget:QDockWidget, orientation:QtOrientation):Void {})
	function addDockWidget(area:QtDockWidgetArea, dockwidget:QDockWidget):Void;
	function splitDockWidget(after:QDockWidget, dockwidget:QDockWidget, orientation:QtOrientation):Void;
	function removeDockWidget(dockwidget:QDockWidget):Void;
	function dockWidgetArea(dockwidget:QDockWidget):QtDockWidgetArea;
	function saveState(?version:Int):QByteArray;
	function restoreState(state:QByteArray, ?version:Int):Bool;
	function createPopupMenu():QMenu;
	function setAnimated(enabled:Bool):Void;
	function setDockNestingEnabled(enabled:Bool):Void;
	function contextMenuEvent(event:QContextMenuEvent):Void;
	function event(event:QEvent):Bool;
	function isAnimated():Bool;
	function isDockNestingEnabled():Bool;
	function isSeparator(pos:QPoint):Bool;
	function menuWidget():QWidget;
	function setMenuWidget(menubar:QWidget):Void;
	function tabifyDockWidget(first:QDockWidget, second:QDockWidget):Void;
	function setDockOptions(options:QMainWindowDockOptions):Void;
	function dockOptions():QMainWindowDockOptions;
	function removeToolBarBreak(before:QToolBar):Void;
	function toolBarBreak(toolbar:QToolBar):Bool;
	function setUnifiedTitleAndToolBarOnMac(set:Bool):Void;
	function unifiedTitleAndToolBarOnMac():Bool;
	function restoreDockWidget(dockwidget:QDockWidget):Bool;
	function documentMode():Bool;
	function setDocumentMode(enabled:Bool):Void;
	function tabShape():QTabWidgetTabShape;
	function setTabShape(tabShape:QTabWidgetTabShape):Void;
	function tabPosition(area:QtDockWidgetArea):QTabWidgetTabPosition;
	function setTabPosition(areas:QtDockWidgetAreas, tabPosition:QTabWidgetTabPosition):Void;
	function tabifiedDockWidgets(dockwidget:QDockWidget):QList<QDockWidget>;
	function takeCentralWidget():QWidget;
	function resizeDocks(docks:QList<QDockWidget>, sizes:QList<Int>, orientation:QtOrientation):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QMainWindow")
@:native("QMainWindow")
extern enum abstract QMainWindowDockOption(Int) from Int to Int {
	var AnimatedDocks;
	var AllowNestedDocks;
	var AllowTabbedDocks;
	var ForceTabbedDocks;
	var VerticalTabs;
	var GroupedDragging;
}

