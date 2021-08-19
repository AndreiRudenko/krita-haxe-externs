package pyqt5.qtgui;

import pyqt5.qtgui.QFont;
import pyqt5.qtcore.QString;

@:pythonImport("PyQt5.QtGui", "QFontInfo")
@:native("QFontInfo")
extern class QFontInfo {
	@:overload(function(?v:QFont):QFontInfo {})
	function new(?v:QFontInfo);

	function family():QString;
	function pixelSize():Int;
	function pointSize():Int;
	function pointSizeF():Float;
	function italic():Bool;
	function style():QFontStyle;
	function weight():Int;
	function bold():Bool;
	function fixedPitch():Bool;
	function styleHint():QFontStyleHint;
	function rawMode():Bool;
	function exactMatch():Bool;
	function styleName():QString;
	function swap(other:QFontInfo):Void;
}

