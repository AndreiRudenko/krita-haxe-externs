package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractSlider;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QEvent;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QSlider")
@:native("QSlider")
extern class QSlider extends QAbstractSlider {
	@:overload(function(?parent:QWidget):QSlider {})
	function new(orientation:QtOrientation, ?parent:QWidget);

	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function setTickPosition(position:QSliderTickPosition):Void;
	function tickPosition():QSliderTickPosition;
	function setTickInterval(ti:Int):Void;
	function tickInterval():Int;
	function event(event:QEvent):Bool;
	function initStyleOption(option:QStyleOptionSlider):Void;
	function paintEvent(ev:QPaintEvent):Void;
	function mousePressEvent(ev:QMouseEvent):Void;
	function mouseReleaseEvent(ev:QMouseEvent):Void;
	function mouseMoveEvent(ev:QMouseEvent):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QSlider")
@:native("QSlider")
extern enum abstract QSliderTickPosition(Int) from Int to Int {
	var NoTicks;
	var TicksAbove;
	var TicksLeft;
	var TicksBelow;
	var TicksRight;
	var TicksBothSides;
}

