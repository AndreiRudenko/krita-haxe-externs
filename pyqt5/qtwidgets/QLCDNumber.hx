package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QFrame;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QLCDNumber")
@:native("QLCDNumber")
extern class QLCDNumber extends QFrame {
	var overflow:QSignal0;

	@:overload(function(?parent:QWidget):QLCDNumber {})
	function new(numDigits:UInt, ?parent:QWidget);

	function smallDecimalPoint():Bool;
	function digitCount():Int;
	function setDigitCount(nDigits:Int):Void;
	function setNumDigits(nDigits:Int):Void;
	@:overload(function(num:Int):Bool {})
	function checkOverflow(num:Float):Bool;
	function mode():QLCDNumberMode;
	function setMode(?v:QLCDNumberMode):Void;
	function segmentStyle():QLCDNumberSegmentStyle;
	function setSegmentStyle(?v:QLCDNumberSegmentStyle):Void;
	function value():Float;
	function intValue():Int;
	function sizeHint():QSize;
	@:overload(function(num:Float):Void {})
	@:overload(function(num:Int):Void {})
	function display(str:QString):Void;
	function setHexMode():Void;
	function setDecMode():Void;
	function setOctMode():Void;
	function setBinMode():Void;
	function setSmallDecimalPoint(?v:Bool):Void;
	function event(e:QEvent):Bool;
	function paintEvent(?v:QPaintEvent):Void;
}

@:pythonImport("PyQt5.QtWidgets", "Mode")
@:native("QLCDNumber.Mode")
extern enum abstract QLCDNumberMode(Int) from Int to Int {
	var Hex;
	var Dec;
	var Oct;
	var Bin;
}

@:pythonImport("PyQt5.QtWidgets", "SegmentStyle")
@:native("QLCDNumber.SegmentStyle")
extern enum abstract QLCDNumberSegmentStyle(Int) from Int to Int {
	var Outline;
	var Filled;
	var Flat;
}

