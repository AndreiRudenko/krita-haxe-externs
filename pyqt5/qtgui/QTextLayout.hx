package pyqt5.qtgui;

import pyqt5.qtcore.QRect;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QTextFormat;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QFont;
import pyqt5.qtgui.QPaintDevice;
import pyqt5.qtgui.QTextObject;
import pyqt5.qtgui.QTextOption;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QVector;
import pyqt5.qtgui.QGlyphRun;

@:pythonImport("PyQt5.QtGui", "QTextInlineObject")
@:native("QTextInlineObject")
extern class QTextInlineObject {
	function isValid():Bool;
	function rect():QRectF;
	function width():Float;
	function ascent():Float;
	function descent():Float;
	function height():Float;
	function textDirection():QtLayoutDirection;
	function setWidth(w:Float):Void;
	function setAscent(a:Float):Void;
	function setDescent(d:Float):Void;
	function textPosition():Int;
	function formatIndex():Int;
	function format():QTextFormat;
}

@:pythonImport("PyQt5.QtGui", "QTextLayout")
@:native("QTextLayout")
extern class QTextLayout {
	@:overload(function():QTextLayout {})
	@:overload(function(text:QString):QTextLayout {})
	@:overload(function(text:QString, font:QFont, ?paintDevice:QPaintDevice):QTextLayout {})
	@:overload(function(b:QTextBlock):QTextLayout {})
	function new(?v:QTextLayout);

	function setFont(f:QFont):Void;
	function font():QFont;
	function setText(string:QString):Void;
	function text():QString;
	function setTextOption(option:QTextOption):Void;
	function textOption():QTextOption;
	function setPreeditArea(position:Int, text:QString):Void;
	function preeditAreaPosition():Int;
	function preeditAreaText():QString;
	function setAdditionalFormats(overrides:QList<FormatRange>):Void;
	function additionalFormats():QList<FormatRange>;
	function clearAdditionalFormats():Void;
	function setCacheEnabled(enable:Bool):Void;
	function cacheEnabled():Bool;
	function beginLayout():Void;
	function endLayout():Void;
	function createLine():QTextLine;
	function lineCount():Int;
	function lineAt(i:Int):QTextLine;
	function lineForTextPosition(pos:Int):QTextLine;
	function isValidCursorPosition(pos:Int):Bool;
	function nextCursorPosition(oldPos:Int, ?mode:QTextLayoutCursorMode):Int;
	function previousCursorPosition(oldPos:Int, ?mode:QTextLayoutCursorMode):Int;
	function draw(p:QPainter, pos:QPointF, ?selections:QVector<FormatRange>, ?clip:QRectF):Void;
	@:overload(function(p:QPainter, pos:QPointF, cursorPosition:Int, width:Int):Void {})
	function drawCursor(p:QPainter, pos:QPointF, cursorPosition:Int):Void;
	function position():QPointF;
	function setPosition(p:QPointF):Void;
	function boundingRect():QRectF;
	function minimumWidth():Float;
	function maximumWidth():Float;
	function clearLayout():Void;
	function setCursorMoveStyle(style:QtCursorMoveStyle):Void;
	function cursorMoveStyle():QtCursorMoveStyle;
	function leftCursorPosition(oldPos:Int):Int;
	function rightCursorPosition(oldPos:Int):Int;
	function glyphRuns(?from:Int, ?length:Int):QList<QGlyphRun>;
	function setFormats(overrides:QVector<FormatRange>):Void;
	function formats():QVector<FormatRange>;
	function clearFormats():Void;
}

@:pythonImport("PyQt5.QtGui", "FormatRange")
@:native("FormatRange")
extern class FormatRange {
}

@:pythonImport("PyQt5.QtGui", "CursorMode")
@:native("QTextLayout.CursorMode")
extern enum abstract QTextLayoutCursorMode(Int) from Int to Int {
	var SkipCharacters;
	var SkipWords;
}

@:pythonImport("PyQt5.QtGui", "QTextLine")
@:native("QTextLine")
extern class QTextLine {
	function new();

	function isValid():Bool;
	function rect():QRectF;
	function x():Float;
	function y():Float;
	function width():Float;
	function ascent():Float;
	function descent():Float;
	function height():Float;
	function naturalTextWidth():Float;
	function naturalTextRect():QRectF;
	function cursorToX(cursorPos:Int, ?edge:QTextLineEdge):Float;
	function xToCursor(x:Float, ?edge:QTextLineCursorPosition):Int;
	function setLineWidth(width:Float):Void;
	@:overload(function(columns:Int, alignmentWidth:Float):Void {})
	function setNumColumns(columns:Int):Void;
	function setPosition(pos:QPointF):Void;
	function textStart():Int;
	function textLength():Int;
	function lineNumber():Int;
	function draw(painter:QPainter, position:QPointF, ?selection:FormatRange):Void;
	function position():QPointF;
	function leading():Float;
	function setLeadingIncluded(included:Bool):Void;
	function leadingIncluded():Bool;
	function horizontalAdvance():Float;
	function glyphRuns(?from:Int, ?length:Int):QList<QGlyphRun>;
}

@:pythonImport("PyQt5.QtGui", "Edge")
@:native("QTextLine.Edge")
extern enum abstract QTextLineEdge(Int) from Int to Int {
	var Leading;
	var Trailing;
}

@:pythonImport("PyQt5.QtGui", "CursorPosition")
@:native("QTextLine.CursorPosition")
extern enum abstract QTextLineCursorPosition(Int) from Int to Int {
	var CursorBetweenCharacters;
	var CursorOnCharacter;
}

