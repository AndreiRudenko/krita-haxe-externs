package pyqt5.qtgui;

import pyqt5.qtcore.QString;
import pyqt5.qtgui.QFont;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QVector;
import pyqt5.qtcore.QPoint;
import pyqt5.qtgui.QTransform;
import pyqt5.qtgui.QImage;
import pyqt5.qtgui.QPainterPath;
import pyqt5.qtcore.QChar;
import pyqt5.qtgui.QFontDatabase;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QGlobal;

typedef QRawFontLayoutFlags = QFlags<QRawFontLayoutFlag>;

@:pythonImport("PyQt5.QtGui", "QRawFont")
@:native("QRawFont")
extern class QRawFont {
	static function fromFont(font:QFont, ?writingSystem:QFontDatabaseWritingSystem):QRawFont;

	@:overload(function():QRawFont {})
	@:overload(function(fileName:QString, pixelSize:Float, ?hintingPreference:QFontHintingPreference):QRawFont {})
	@:overload(function(fontData:QByteArray, pixelSize:Float, ?hintingPreference:QFontHintingPreference):QRawFont {})
	function new(other:QRawFont);

	function isValid():Bool;
	function familyName():QString;
	function styleName():QString;
	function style():QFontStyle;
	function weight():Int;
	function glyphIndexesForString(text:QString):QVector<UInt>;
	@:overload(function(glyphIndexes:QVector<UInt>, layoutFlags:QRawFontLayoutFlags):QVector<QPointF> {})
	function advancesForGlyphIndexes(glyphIndexes:QVector<UInt>):QVector<QPointF>;
	function alphaMapForGlyph(glyphIndex:UInt, ?antialiasingType:QRawFontAntialiasingType, ?transform:QTransform):QImage;
	function pathForGlyph(glyphIndex:UInt):QPainterPath;
	function setPixelSize(pixelSize:Float):Void;
	function pixelSize():Float;
	function hintingPreference():QFontHintingPreference;
	function ascent():Float;
	function descent():Float;
	function leading():Float;
	function xHeight():Float;
	function averageCharWidth():Float;
	function maxCharWidth():Float;
	function unitsPerEm():Float;
	function loadFromFile(fileName:QString, pixelSize:Float, hintingPreference:QFontHintingPreference):Void;
	function loadFromData(fontData:QByteArray, pixelSize:Float, hintingPreference:QFontHintingPreference):Void;
	@:overload(function(character:QChar):Bool {})
	function supportsCharacter(ucs4:UInt):Bool;
	function supportedWritingSystems():QList<QFontDatabaseWritingSystem>;
	function fontTable(tagName:Int):QByteArray;
	function boundingRect(glyphIndex:UInt):QRectF;
	function lineThickness():Float;
	function underlinePosition():Float;
	function swap(other:QRawFont):Void;
	function capHeight():Float;
}

@:pythonImport("PyQt5.QtGui", "AntialiasingType")
@:native("QRawFont.AntialiasingType")
extern enum abstract QRawFontAntialiasingType(Int) from Int to Int {
	var PixelAntialiasing;
	var SubPixelAntialiasing;
}

@:pythonImport("PyQt5.QtGui", "LayoutFlag")
@:native("QRawFont.LayoutFlag")
extern enum abstract QRawFontLayoutFlag(Int) from Int to Int {
	var SeparateAdvances;
	var KernedAdvances;
	var UseDesignMetrics;
}

