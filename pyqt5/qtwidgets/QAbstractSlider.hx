package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QAbstractSlider")
@:native("QAbstractSlider")
extern class QAbstractSlider extends QWidget {
	var valueChanged:QSignal1<Int>;
	var sliderPressed:QSignal0;
	var sliderMoved:QSignal1<Int>;
	var sliderReleased:QSignal0;
	var rangeChanged:QSignal2<Int, Int>;
	var actionTriggered:QSignal1<Int>;

	function new(?parent:QWidget);

	function orientation():QtOrientation;
	function setMinimum(?v:Int):Void;
	function minimum():Int;
	function setMaximum(?v:Int):Void;
	function maximum():Int;
	function setRange(min:Int, max:Int):Void;
	function setSingleStep(?v:Int):Void;
	function singleStep():Int;
	function setPageStep(?v:Int):Void;
	function pageStep():Int;
	function setTracking(enable:Bool):Void;
	function hasTracking():Bool;
	function setSliderDown(?v:Bool):Void;
	function isSliderDown():Bool;
	function setSliderPosition(?v:Int):Void;
	function sliderPosition():Int;
	function setInvertedAppearance(?v:Bool):Void;
	function invertedAppearance():Bool;
	function setInvertedControls(?v:Bool):Void;
	function invertedControls():Bool;
	function value():Int;
	function triggerAction(action:QAbstractSliderSliderAction):Void;
	function setValue(?v:Int):Void;
	function setOrientation(?v:QtOrientation):Void;
	function setRepeatAction(action:QAbstractSliderSliderAction, ?thresholdTime:Int, ?repeatTime:Int):Void;
	function repeatAction():QAbstractSliderSliderAction;
	function sliderChange(change:QAbstractSliderSliderChange):Void;
	function event(e:QEvent):Bool;
	function keyPressEvent(ev:QKeyEvent):Void;
	function timerEvent(?v:QTimerEvent):Void;
	function wheelEvent(e:QWheelEvent):Void;
	function changeEvent(e:QEvent):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QAbstractSlider")
@:native("QAbstractSlider")
extern enum abstract QAbstractSliderSliderAction(Int) from Int to Int {
	var SliderNoAction;
	var SliderSingleStepAdd;
	var SliderSingleStepSub;
	var SliderPageStepAdd;
	var SliderPageStepSub;
	var SliderToMinimum;
	var SliderToMaximum;
	var SliderMove;
}

@:pythonImport("PyQt5.QtWidgets", "QAbstractSlider")
@:native("QAbstractSlider")
extern enum abstract QAbstractSliderSliderChange(Int) from Int to Int {
	var SliderRangeChange;
	var SliderOrientationChange;
	var SliderStepsChange;
	var SliderValueChange;
}

