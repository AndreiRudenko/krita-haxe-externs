package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QAction;
import pyqt5.qtcore.QSignal;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

typedef QDockWidgetDockWidgetFeatures = QFlags<QDockWidgetDockWidgetFeature>;

@:pythonImport("PyQt5.QtWidgets", "QDockWidget")
@:native("QDockWidget")
extern class QDockWidget extends QWidget {
	var featuresChanged:QSignal1<QDockWidgetDockWidgetFeatures>;
	var topLevelChanged:QSignal1<Bool>;
	var allowedAreasChanged:QSignal1<QtDockWidgetAreas>;
	var dockLocationChanged:QSignal1<QtDockWidgetArea>;
	var visibilityChanged:QSignal1<Bool>;

	@:overload(function(title:QString, ?parent:QWidget, ?flags:QtWindowFlags):QDockWidget {})
	function new(?parent:QWidget, ?flags:QtWindowFlags);

	function widget():QWidget;
	function setWidget(widget:QWidget):Void;
	function setFeatures(features:QDockWidgetDockWidgetFeatures):Void;
	function features():QDockWidgetDockWidgetFeatures;
	function setFloating(floating:Bool):Void;
	function isFloating():Bool;
	function setAllowedAreas(areas:QtDockWidgetAreas):Void;
	function allowedAreas():QtDockWidgetAreas;
	function isAreaAllowed(area:QtDockWidgetArea):Bool;
	function toggleViewAction():QAction;
	function setTitleBarWidget(widget:QWidget):Void;
	function titleBarWidget():QWidget;
	function initStyleOption(option:QStyleOptionDockWidget):Void;
	function changeEvent(event:QEvent):Void;
	function closeEvent(event:QCloseEvent):Void;
	function paintEvent(event:QPaintEvent):Void;
	function event(event:QEvent):Bool;
}

@:pythonImport("PyQt5.QtWidgets", "QDockWidget")
@:native("QDockWidget")
extern enum abstract QDockWidgetDockWidgetFeature(Int) from Int to Int {
	var DockWidgetClosable;
	var DockWidgetMovable;
	var DockWidgetFloatable;
	var DockWidgetVerticalTitleBar;
	var AllDockWidgetFeatures;
	var NoDockWidgetFeatures;
}

