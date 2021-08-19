package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractSpinBox;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QValidator;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtWidgets", "QSpinBox")
@:native("QSpinBox")
extern class QSpinBox extends QAbstractSpinBox {
	var valueChanged:QSignal1<QString>;
	var textChanged:QSignal1<QString>;

	function new(?parent:QWidget);

	function value():Int;
	function prefix():QString;
	function setPrefix(p:QString):Void;
	function suffix():QString;
	function setSuffix(s:QString):Void;
	function cleanText():QString;
	function singleStep():Int;
	function setSingleStep(val:Int):Void;
	function minimum():Int;
	function setMinimum(min:Int):Void;
	function maximum():Int;
	function setMaximum(max:Int):Void;
	function setRange(min:Int, max:Int):Void;
	function validate(input:QString, pos:Int):QValidatorState;
	function valueFromText(text:QString):Int;
	function textFromValue(v:Int):QString;
	function fixup(str:QString):Void;
	function event(e:QEvent):Bool;
	function setValue(val:Int):Void;
	function displayIntegerBase():Int;
	function setDisplayIntegerBase(base:Int):Void;
	function stepType():QAbstractSpinBoxStepType;
	function setStepType(stepType:QAbstractSpinBoxStepType):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QDoubleSpinBox")
@:native("QDoubleSpinBox")
extern class QDoubleSpinBox extends QAbstractSpinBox {
	var valueChanged:QSignal1<QString>;
	var textChanged:QSignal1<QString>;

	function new(?parent:QWidget);

	function value():Float;
	function prefix():QString;
	function setPrefix(p:QString):Void;
	function suffix():QString;
	function setSuffix(s:QString):Void;
	function cleanText():QString;
	function singleStep():Float;
	function setSingleStep(val:Float):Void;
	function minimum():Float;
	function setMinimum(min:Float):Void;
	function maximum():Float;
	function setMaximum(max:Float):Void;
	function setRange(min:Float, max:Float):Void;
	function decimals():Int;
	function setDecimals(prec:Int):Void;
	function validate(input:QString, pos:Int):QValidatorState;
	function valueFromText(text:QString):Float;
	function textFromValue(v:Float):QString;
	function fixup(str:QString):Void;
	function setValue(val:Float):Void;
	function stepType():QAbstractSpinBoxStepType;
	function setStepType(stepType:QAbstractSpinBoxStepType):Void;
}

