package pyqt5.qtgui;

import pyqt5.qtgui.QFont;
import pyqt5.qtgui.QPaintDevice;
import pyqt5.qtcore.QChar;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.Qt;

@:pythonImport("PyQt5.QtGui", "QFontMetrics")
@:native("QFontMetrics")
extern class QFontMetrics {
	@:overload(function(?v:QFont):QFontMetrics {})
	@:overload(function(?v:QFont, pd:QPaintDevice):QFontMetrics {})
	function new(?v:QFontMetrics);

	function ascent():Int;
	function descent():Int;
	function height():Int;
	function leading():Int;
	function lineSpacing():Int;
	function minLeftBearing():Int;
	function minRightBearing():Int;
	function maxWidth():Int;
	function xHeight():Int;
	function inFont(?v:QChar):Bool;
	function leftBearing(?v:QChar):Int;
	function rightBearing(?v:QChar):Int;
	@:overload(function(text:QString, ?length:Int):Int {})
	function width(?v:QChar):Int;
	@:overload(function(text:QString):QRect {})
	@:overload(function(rect:QRect, flags:Int, text:QString, ?tabStops:Int, ?tabArray:Array<Int>):QRect {})
	@:overload(function(x:Int, y:Int, width:Int, height:Int, flags:Int, text:QString, ?tabStops:Int, ?tabArray:Array<Int>):QRect {})
	function boundingRect(?v:QChar):QRect;
	function size(flags:Int, text:QString, ?tabStops:Int, ?tabArray:Array<Int>):QSize;
	function underlinePos():Int;
	function overlinePos():Int;
	function strikeOutPos():Int;
	function lineWidth():Int;
	function averageCharWidth():Int;
	function elidedText(text:QString, mode:QtTextElideMode, width:Int, ?flags:Int):QString;
	function tightBoundingRect(text:QString):QRect;
	function inFontUcs4(character:UInt):Bool;
	function swap(other:QFontMetrics):Void;
	function capHeight():Int;
	function horizontalAdvance(?v:QString, ?length:Int):Int;
	function fontDpi():Float;
}

@:pythonImport("PyQt5.QtGui", "QFontMetricsF")
@:native("QFontMetricsF")
extern class QFontMetricsF {
	@:overload(function(?v:QFont):QFontMetricsF {})
	@:overload(function(?v:QFont, pd:QPaintDevice):QFontMetricsF {})
	@:overload(function(?v:QFontMetrics):QFontMetricsF {})
	function new(?v:QFontMetricsF);

	function ascent():Float;
	function descent():Float;
	function height():Float;
	function leading():Float;
	function lineSpacing():Float;
	function minLeftBearing():Float;
	function minRightBearing():Float;
	function maxWidth():Float;
	function xHeight():Float;
	function inFont(?v:QChar):Bool;
	function leftBearing(?v:QChar):Float;
	function rightBearing(?v:QChar):Float;
	@:overload(function(string:QString):Float {})
	function width(?v:QChar):Float;
	@:overload(function(string:QString):QRectF {})
	@:overload(function(rect:QRectF, flags:Int, text:QString, ?tabStops:Int, ?tabArray:Array<Int>):QRectF {})
	function boundingRect(?v:QChar):QRectF;
	function size(flags:Int, text:QString, ?tabStops:Int, ?tabArray:Array<Int>):QSizeF;
	function underlinePos():Float;
	function overlinePos():Float;
	function strikeOutPos():Float;
	function lineWidth():Float;
	function averageCharWidth():Float;
	function elidedText(text:QString, mode:QtTextElideMode, width:Float, ?flags:Int):QString;
	function tightBoundingRect(text:QString):QRectF;
	function inFontUcs4(character:UInt):Bool;
	function swap(other:QFontMetricsF):Void;
	function capHeight():Float;
	function horizontalAdvance(string:QString, ?length:Int):Float;
	function fontDpi():Float;
}

