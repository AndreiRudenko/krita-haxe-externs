package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QDialog;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtgui.QColor;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;

typedef QColorDialogColorDialogOptions = QFlags<QColorDialogColorDialogOption>;

@:pythonImport("PyQt5.QtWidgets", "QColorDialog")
@:native("QColorDialog")
extern class QColorDialog extends QDialog {
	static function getColor(?initial:QColor, ?parent:QWidget, ?title:QString, ?options:QColorDialogColorDialogOptions):QColor;
	static function customCount():Int;
	static function customColor(index:Int):QColor;
	static function setCustomColor(index:Int, color:QColor):Void;
	static function standardColor(index:Int):QColor;
	static function setStandardColor(index:Int, color:QColor):Void;

	var colorSelected:QSignal1<QColor>;
	var currentColorChanged:QSignal1<QColor>;

	@:overload(function(?parent:QWidget):QColorDialog {})
	function new(initial:QColor, ?parent:QWidget);

	function changeEvent(e:QEvent):Void;
	function done(result:Int):Void;
	function setCurrentColor(color:QColor):Void;
	function currentColor():QColor;
	function selectedColor():QColor;
	function setOption(option:QColorDialogColorDialogOption, ?on:Bool):Void;
	function testOption(option:QColorDialogColorDialogOption):Bool;
	function setOptions(options:QColorDialogColorDialogOptions):Void;
	function options():QColorDialogColorDialogOptions;
	@:overload(function(slot:Dynamic):Void {})
	function open():Void;
	function setVisible(visible:Bool):Void;
}

@:pythonImport("PyQt5.QtWidgets", "ColorDialogOption")
@:native("QColorDialog.ColorDialogOption")
extern enum abstract QColorDialogColorDialogOption(Int) from Int to Int {
	var ShowAlphaChannel;
	var NoButtons;
	var DontUseNativeDialog;
}

