package pyqt5.qtgui;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QTextOption;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QTransform;
import pyqt5.qtgui.QFont;

@:pythonImport("PyQt5.QtGui", "QStaticText")
@:native("QStaticText")
extern class QStaticText {
	@:overload(function():QStaticText {})
	@:overload(function(text:QString):QStaticText {})
	function new(other:QStaticText);

	function setText(text:QString):Void;
	function text():QString;
	function setTextFormat(textFormat:QtTextFormat):Void;
	function textFormat():QtTextFormat;
	function setTextWidth(textWidth:Float):Void;
	function textWidth():Float;
	function setTextOption(textOption:QTextOption):Void;
	function textOption():QTextOption;
	function size():QSizeF;
	function prepare(?matrix:QTransform, ?font:QFont):Void;
	function setPerformanceHint(performanceHint:QStaticTextPerformanceHint):Void;
	function performanceHint():QStaticTextPerformanceHint;
	function swap(other:QStaticText):Void;
}

@:pythonImport("PyQt5.QtGui", "QStaticText")
@:native("QStaticText")
extern enum abstract QStaticTextPerformanceHint(Int) from Int to Int {
	var ModerateCaching;
	var AggressiveCaching;
}

