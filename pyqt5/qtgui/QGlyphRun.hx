package pyqt5.qtgui;

import pyqt5.qtgui.QRawFont;
import pyqt5.qtcore.QVector;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QRect;

typedef QGlyphRunGlyphRunFlags = QFlags<QGlyphRunGlyphRunFlag>;

@:pythonImport("PyQt5.QtGui", "QGlyphRun")
@:native("QGlyphRun")
extern class QGlyphRun {
	@:overload(function():QGlyphRun {})
	function new(other:QGlyphRun);

	function rawFont():QRawFont;
	function setRawFont(rawFont:QRawFont):Void;
	function glyphIndexes():QVector<UInt>;
	function setGlyphIndexes(glyphIndexes:QVector<UInt>):Void;
	function positions():QVector<QPointF>;
	function setPositions(positions:QVector<QPointF>):Void;
	function clear():Void;
	function setOverline(overline:Bool):Void;
	function overline():Bool;
	function setUnderline(underline:Bool):Void;
	function underline():Bool;
	function setStrikeOut(strikeOut:Bool):Void;
	function strikeOut():Bool;
	function setRightToLeft(on:Bool):Void;
	function isRightToLeft():Bool;
	function setFlag(flag:QGlyphRunGlyphRunFlag, ?enabled:Bool):Void;
	function setFlags(flags:QGlyphRunGlyphRunFlags):Void;
	function flags():QGlyphRunGlyphRunFlags;
	function setBoundingRect(boundingRect:QRectF):Void;
	function boundingRect():QRectF;
	function isEmpty():Bool;
	function swap(other:QGlyphRun):Void;
}

@:pythonImport("PyQt5.QtGui", "GlyphRunFlag")
@:native("QGlyphRun.GlyphRunFlag")
extern enum abstract QGlyphRunGlyphRunFlag(Int) from Int to Int {
	var Overline;
	var Underline;
	var StrikeOut;
	var RightToLeft;
	var SplitLigature;
}

