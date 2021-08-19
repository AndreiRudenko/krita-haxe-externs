package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QDialog;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtgui.QFont;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QSignal;

typedef QFontDialogFontDialogOptions = QFlags<QFontDialogFontDialogOption>;

@:pythonImport("PyQt5.QtWidgets", "QFontDialog")
@:native("QFontDialog")
extern class QFontDialog extends QDialog {
	@:overload(function(ok:Bool, ?parent:QWidget):QFont {})
	static function getFont(ok:Bool, initial:QFont, ?parent:QWidget, ?caption:QString, ?options:QFontDialogFontDialogOptions):QFont;

	var currentFontChanged:QSignal1<QFont>;
	var fontSelected:QSignal1<QFont>;

	@:overload(function(?parent:QWidget):QFontDialog {})
	function new(initial:QFont, ?parent:QWidget);

	function changeEvent(e:QEvent):Void;
	function done(result:Int):Void;
	function eventFilter(object:QObject, event:QEvent):Bool;
	function setCurrentFont(font:QFont):Void;
	function currentFont():QFont;
	function selectedFont():QFont;
	function setOption(option:QFontDialogFontDialogOption, ?on:Bool):Void;
	function testOption(option:QFontDialogFontDialogOption):Bool;
	function setOptions(options:QFontDialogFontDialogOptions):Void;
	function options():QFontDialogFontDialogOptions;
	@:overload(function(slot:Dynamic):Void {})
	function open():Void;
	function setVisible(visible:Bool):Void;
}

@:pythonImport("PyQt5.QtWidgets", "FontDialogOption")
@:native("QFontDialog.FontDialogOption")
extern enum abstract QFontDialogFontDialogOption(Int) from Int to Int {
	var NoButtons;
	var DontUseNativeDialog;
	var ScalableFonts;
	var NonScalableFonts;
	var MonospacedFonts;
	var ProportionalFonts;
}

