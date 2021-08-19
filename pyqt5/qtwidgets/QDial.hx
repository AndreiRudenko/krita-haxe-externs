package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractSlider;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QSize;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QDial")
@:native("QDial")
extern class QDial extends QAbstractSlider {
	function new(?parent:QWidget);

	function wrapping():Bool;
	function notchSize():Int;
	function setNotchTarget(target:Float):Void;
	function notchTarget():Float;
	function notchesVisible():Bool;
	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function setNotchesVisible(visible:Bool):Void;
	function setWrapping(on:Bool):Void;
	function initStyleOption(option:QStyleOptionSlider):Void;
	function event(e:QEvent):Bool;
	function resizeEvent(re:QResizeEvent):Void;
	function paintEvent(pe:QPaintEvent):Void;
	function mousePressEvent(me:QMouseEvent):Void;
	function mouseReleaseEvent(me:QMouseEvent):Void;
	function mouseMoveEvent(me:QMouseEvent):Void;
	function sliderChange(change:QAbstractSliderSliderChange):Void;
}

