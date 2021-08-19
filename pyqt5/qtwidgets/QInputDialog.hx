package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QDialog;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtwidgets.QLineEdit;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QSignal;

typedef QInputDialogInputDialogOptions = QFlags<QInputDialogInputDialogOption>;

@:pythonImport("PyQt5.QtWidgets", "QInputDialog")
@:native("QInputDialog")
extern class QInputDialog extends QDialog {
	static function getText(parent:QWidget, title:QString, label:QString, ?echo:QLineEditEchoMode, ?text:QString, ?ok:Bool, ?flags:QtWindowFlags, ?inputMethodHints:QtInputMethodHints):QString;
	static function getInt(parent:QWidget, title:QString, label:QString, ?value:Int, ?min:Int, ?max:Int, ?step:Int, ?ok:Bool, ?flags:QtWindowFlags):Int;
	@:overload(function(parent:QWidget, title:QString, label:QString, value:Float, minValue:Float, maxValue:Float, decimals:Int, ok:Bool, flags:QtWindowFlags, step:Float):Float {})
	static function getDouble(parent:QWidget, title:QString, label:QString, ?value:Float, ?min:Float, ?max:Float, ?decimals:Int, ?ok:Bool, ?flags:QtWindowFlags):Float;
	static function getItem(parent:QWidget, title:QString, label:QString, items:QStringList, ?current:Int, ?editable:Bool, ?ok:Bool, ?flags:QtWindowFlags, ?inputMethodHints:QtInputMethodHints):QString;
	static function getMultiLineText(parent:QWidget, title:QString, label:QString, ?text:QString, ?ok:Bool, ?flags:QtWindowFlags, ?inputMethodHints:QtInputMethodHints):QString;

	var textValueChanged:QSignal1<QString>;
	var textValueSelected:QSignal1<QString>;
	var intValueChanged:QSignal1<Int>;
	var intValueSelected:QSignal1<Int>;
	var doubleValueChanged:QSignal1<Float>;
	var doubleValueSelected:QSignal1<Float>;

	function new(?parent:QWidget, ?flags:QtWindowFlags);

	function setInputMode(mode:QInputDialogInputMode):Void;
	function inputMode():QInputDialogInputMode;
	function setLabelText(text:QString):Void;
	function labelText():QString;
	function setOption(option:QInputDialogInputDialogOption, ?on:Bool):Void;
	function testOption(option:QInputDialogInputDialogOption):Bool;
	function setOptions(options:QInputDialogInputDialogOptions):Void;
	function options():QInputDialogInputDialogOptions;
	function setTextValue(text:QString):Void;
	function textValue():QString;
	function setTextEchoMode(mode:QLineEditEchoMode):Void;
	function textEchoMode():QLineEditEchoMode;
	function setComboBoxEditable(editable:Bool):Void;
	function isComboBoxEditable():Bool;
	function setComboBoxItems(items:QStringList):Void;
	function comboBoxItems():QStringList;
	function setIntValue(value:Int):Void;
	function intValue():Int;
	function setIntMinimum(min:Int):Void;
	function intMinimum():Int;
	function setIntMaximum(max:Int):Void;
	function intMaximum():Int;
	function setIntRange(min:Int, max:Int):Void;
	function setIntStep(step:Int):Void;
	function intStep():Int;
	function setDoubleValue(value:Float):Void;
	function doubleValue():Float;
	function setDoubleMinimum(min:Float):Void;
	function doubleMinimum():Float;
	function setDoubleMaximum(max:Float):Void;
	function doubleMaximum():Float;
	function setDoubleRange(min:Float, max:Float):Void;
	function setDoubleDecimals(decimals:Int):Void;
	function doubleDecimals():Int;
	function setOkButtonText(text:QString):Void;
	function okButtonText():QString;
	function setCancelButtonText(text:QString):Void;
	function cancelButtonText():QString;
	@:overload(function(slot:Dynamic):Void {})
	function open():Void;
	function minimumSizeHint():QSize;
	function sizeHint():QSize;
	function setVisible(visible:Bool):Void;
	function done(result:Int):Void;
	function setDoubleStep(step:Float):Void;
	function doubleStep():Float;
}

@:pythonImport("PyQt5.QtWidgets", "QInputDialog")
@:native("QInputDialog")
extern enum abstract QInputDialogInputDialogOption(Int) from Int to Int {
	var NoButtons;
	var UseListViewForComboBoxItems;
	var UsePlainTextEditForTextInput;
}

@:pythonImport("PyQt5.QtWidgets", "QInputDialog")
@:native("QInputDialog")
extern enum abstract QInputDialogInputMode(Int) from Int to Int {
	var TextInput;
	var IntInput;
	var DoubleInput;
}

