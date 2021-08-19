package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSignal;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtwidgets.QTabBar;

@:pythonImport("PyQt5.QtWidgets", "QTabWidget")
@:native("QTabWidget")
extern class QTabWidget extends QWidget {
	var currentChanged:QSignal1<Int>;
	var tabCloseRequested:QSignal1<Int>;
	var tabBarClicked:QSignal1<Int>;
	var tabBarDoubleClicked:QSignal1<Int>;

	function new(?parent:QWidget);

	function clear():Void;
	@:overload(function(widget:QWidget, icon:QIcon, label:QString):Int {})
	function addTab(widget:QWidget, ?v:QString):Int;
	@:overload(function(index:Int, widget:QWidget, icon:QIcon, label:QString):Int {})
	function insertTab(index:Int, widget:QWidget, ?v:QString):Int;
	function removeTab(index:Int):Void;
	function isTabEnabled(index:Int):Bool;
	function setTabEnabled(index:Int, ?v:Bool):Void;
	function tabText(index:Int):QString;
	function setTabText(index:Int, ?v:QString):Void;
	function tabIcon(index:Int):QIcon;
	function setTabIcon(index:Int, icon:QIcon):Void;
	function setTabToolTip(index:Int, tip:QString):Void;
	function tabToolTip(index:Int):QString;
	function setTabWhatsThis(index:Int, text:QString):Void;
	function tabWhatsThis(index:Int):QString;
	function currentIndex():Int;
	function currentWidget():QWidget;
	function widget(index:Int):QWidget;
	function indexOf(widget:QWidget):Int;
	function count():Int;
	function tabPosition():QTabWidgetTabPosition;
	function setTabPosition(?v:QTabWidgetTabPosition):Void;
	function tabShape():QTabWidgetTabShape;
	function setTabShape(s:QTabWidgetTabShape):Void;
	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function setCornerWidget(widget:QWidget, ?corner:QtCorner):Void;
	function cornerWidget(?corner:QtCorner):QWidget;
	function setCurrentIndex(index:Int):Void;
	function setCurrentWidget(widget:QWidget):Void;
	function initStyleOption(option:QStyleOptionTabWidgetFrame):Void;
	function tabInserted(index:Int):Void;
	function tabRemoved(index:Int):Void;
	function event(?v:QEvent):Bool;
	function showEvent(?v:QShowEvent):Void;
	function resizeEvent(?v:QResizeEvent):Void;
	function keyPressEvent(?v:QKeyEvent):Void;
	function paintEvent(?v:QPaintEvent):Void;
	function setTabBar(?v:QTabBar):Void;
	function tabBar():QTabBar;
	function changeEvent(?v:QEvent):Void;
	function elideMode():QtTextElideMode;
	function setElideMode(?v:QtTextElideMode):Void;
	function iconSize():QSize;
	function setIconSize(size:QSize):Void;
	function usesScrollButtons():Bool;
	function setUsesScrollButtons(useButtons:Bool):Void;
	function tabsClosable():Bool;
	function setTabsClosable(closeable:Bool):Void;
	function isMovable():Bool;
	function setMovable(movable:Bool):Void;
	function documentMode():Bool;
	function setDocumentMode(set:Bool):Void;
	function heightForWidth(width:Int):Int;
	function hasHeightForWidth():Bool;
	function tabBarAutoHide():Bool;
	function setTabBarAutoHide(enabled:Bool):Void;
	function isTabVisible(index:Int):Bool;
	function setTabVisible(index:Int, visible:Bool):Void;
}

@:pythonImport("PyQt5.QtWidgets", "TabPosition")
@:native("QTabWidget.TabPosition")
extern enum abstract QTabWidgetTabPosition(Int) from Int to Int {
	var North;
	var South;
	var West;
	var East;
}

@:pythonImport("PyQt5.QtWidgets", "TabShape")
@:native("QTabWidget.TabShape")
extern enum abstract QTabWidgetTabShape(Int) from Int to Int {
	var Rounded;
	var Triangular;
}

