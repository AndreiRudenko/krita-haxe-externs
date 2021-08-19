package pyqt5.qtgui;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QLocale;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QRegExp;
import pyqt5.qtcore.QRegularExpression;

@:pythonImport("PyQt5.QtGui", "QValidator")
@:native("QValidator")
extern class QValidator extends QObject {
	var changed:QSignal0;

	function new(?parent:QObject);

	function validate(?v:QString, ?v:Int):QValidatorState;
	function fixup(?v:QString):Void;
	function setLocale(locale:QLocale):Void;
	function locale():QLocale;
}

@:pythonImport("PyQt5.QtGui", "State")
@:native("QValidator.State")
extern enum abstract QValidatorState(Int) from Int to Int {
	var Invalid;
	var Intermediate;
	var Acceptable;
}

@:pythonImport("PyQt5.QtGui", "QIntValidator")
@:native("QIntValidator")
extern class QIntValidator extends QValidator {
	@:overload(function(?parent:QObject):QIntValidator {})
	function new(bottom:Int, top:Int, ?parent:QObject);

	function validate(?v:QString, ?v:Int):QValidatorState;
	function fixup(input:QString):Void;
	function setBottom(?v:Int):Void;
	function setTop(?v:Int):Void;
	function setRange(bottom:Int, top:Int):Void;
	function bottom():Int;
	function top():Int;
}

@:pythonImport("PyQt5.QtGui", "QDoubleValidator")
@:native("QDoubleValidator")
extern class QDoubleValidator extends QValidator {
	@:overload(function(?parent:QObject):QDoubleValidator {})
	function new(bottom:Float, top:Float, decimals:Int, ?parent:QObject);

	function validate(?v:QString, ?v:Int):QValidatorState;
	function setRange(minimum:Float, maximum:Float, ?decimals:Int):Void;
	function setBottom(?v:Float):Void;
	function setTop(?v:Float):Void;
	function setDecimals(?v:Int):Void;
	function bottom():Float;
	function top():Float;
	function decimals():Int;
	function setNotation(?v:QDoubleValidatorNotation):Void;
	function notation():QDoubleValidatorNotation;
}

@:pythonImport("PyQt5.QtGui", "Notation")
@:native("QDoubleValidator.Notation")
extern enum abstract QDoubleValidatorNotation(Int) from Int to Int {
	var StandardNotation;
	var ScientificNotation;
}

@:pythonImport("PyQt5.QtGui", "QRegExpValidator")
@:native("QRegExpValidator")
extern class QRegExpValidator extends QValidator {
	@:overload(function(?parent:QObject):QRegExpValidator {})
	function new(rx:QRegExp, ?parent:QObject);

	function validate(input:QString, pos:Int):QValidatorState;
	function setRegExp(rx:QRegExp):Void;
	function regExp():QRegExp;
}

@:pythonImport("PyQt5.QtGui", "QRegularExpressionValidator")
@:native("QRegularExpressionValidator")
extern class QRegularExpressionValidator extends QValidator {
	@:overload(function(?parent:QObject):QRegularExpressionValidator {})
	function new(re:QRegularExpression, ?parent:QObject);

	function validate(input:QString, pos:Int):QValidatorState;
	function regularExpression():QRegularExpression;
	function setRegularExpression(re:QRegularExpression):Void;
}

