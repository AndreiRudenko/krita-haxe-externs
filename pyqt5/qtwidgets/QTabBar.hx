package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QIcon;
import pyqt5.qtgui.QColor;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSignal;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QTabBar")
@:native("QTabBar")
extern class QTabBar extends QWidget {
	var currentChanged:QSignal1<Int>;
	var tabCloseRequested:QSignal1<Int>;
	var tabMoved:QSignal2<Int, Int>;
	var tabBarClicked:QSignal1<Int>;
	var tabBarDoubleClicked:QSignal1<Int>;

	function new(?parent:QWidget);

	function shape():QTabBarShape;
	function setShape(shape:QTabBarShape):Void;
	@:overload(function(icon:QIcon, text:QString):Int {})
	function addTab(text:QString):Int;
	@:overload(function(index:Int, icon:QIcon, text:QString):Int {})
	function insertTab(index:Int, text:QString):Int;
	function removeTab(index:Int):Void;
	function isTabEnabled(index:Int):Bool;
	function setTabEnabled(index:Int, ?v:Bool):Void;
	function tabText(index:Int):QString;
	function setTabText(index:Int, text:QString):Void;
	function tabTextColor(index:Int):QColor;
	function setTabTextColor(index:Int, color:QColor):Void;
	function tabIcon(index:Int):QIcon;
	function setTabIcon(index:Int, icon:QIcon):Void;
	function setTabToolTip(index:Int, tip:QString):Void;
	function tabToolTip(index:Int):QString;
	function setTabWhatsThis(index:Int, text:QString):Void;
	function tabWhatsThis(index:Int):QString;
	function setTabData(index:Int, data:QVariant):Void;
	function tabData(index:Int):QVariant;
	function tabAt(pos:QPoint):Int;
	function tabRect(index:Int):QRect;
	function currentIndex():Int;
	function count():Int;
	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function setDrawBase(drawTheBase:Bool):Void;
	function drawBase():Bool;
	function iconSize():QSize;
	function setIconSize(size:QSize):Void;
	function elideMode():QtTextElideMode;
	function setElideMode(?v:QtTextElideMode):Void;
	function setUsesScrollButtons(useButtons:Bool):Void;
	function usesScrollButtons():Bool;
	function setCurrentIndex(index:Int):Void;
	function initStyleOption(option:QStyleOptionTab, tabIndex:Int):Void;
	function tabSizeHint(index:Int):QSize;
	function tabInserted(index:Int):Void;
	function tabRemoved(index:Int):Void;
	function tabLayoutChange():Void;
	function event(?v:QEvent):Bool;
	function resizeEvent(?v:QResizeEvent):Void;
	function showEvent(?v:QShowEvent):Void;
	function paintEvent(?v:QPaintEvent):Void;
	function mousePressEvent(?v:QMouseEvent):Void;
	function mouseMoveEvent(?v:QMouseEvent):Void;
	function mouseReleaseEvent(?v:QMouseEvent):Void;
	function keyPressEvent(?v:QKeyEvent):Void;
	function changeEvent(?v:QEvent):Void;
	function moveTab(from:Int, to:Int):Void;
	function tabsClosable():Bool;
	function setTabsClosable(closable:Bool):Void;
	function setTabButton(index:Int, position:QTabBarButtonPosition, widget:QWidget):Void;
	function tabButton(index:Int, position:QTabBarButtonPosition):QWidget;
	function selectionBehaviorOnRemove():QTabBarSelectionBehavior;
	function setSelectionBehaviorOnRemove(behavior:QTabBarSelectionBehavior):Void;
	function expanding():Bool;
	function setExpanding(enabled:Bool):Void;
	function isMovable():Bool;
	function setMovable(movable:Bool):Void;
	function documentMode():Bool;
	function setDocumentMode(set:Bool):Void;
	function hideEvent(?v:QHideEvent):Void;
	function wheelEvent(event:QWheelEvent):Void;
	function minimumTabSizeHint(index:Int):QSize;
	function autoHide():Bool;
	function setAutoHide(hide:Bool):Void;
	function changeCurrentOnDrag():Bool;
	function setChangeCurrentOnDrag(change:Bool):Void;
	function timerEvent(event:QTimerEvent):Void;
	function accessibleTabName(index:Int):QString;
	function setAccessibleTabName(index:Int, name:QString):Void;
	function isTabVisible(index:Int):Bool;
	function setTabVisible(index:Int, visible:Bool):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QTabBar")
@:native("QTabBar")
extern enum abstract QTabBarShape(Int) from Int to Int {
	var RoundedNorth;
	var RoundedSouth;
	var RoundedWest;
	var RoundedEast;
	var TriangularNorth;
	var TriangularSouth;
	var TriangularWest;
	var TriangularEast;
}

@:pythonImport("PyQt5.QtWidgets", "QTabBar")
@:native("QTabBar")
extern enum abstract QTabBarButtonPosition(Int) from Int to Int {
	var LeftSide;
	var RightSide;
}

@:pythonImport("PyQt5.QtWidgets", "QTabBar")
@:native("QTabBar")
extern enum abstract QTabBarSelectionBehavior(Int) from Int to Int {
	var SelectLeftTab;
	var SelectRightTab;
	var SelectPreviousTab;
}

