package pyqt5.qtgui;

import pyqt5.qtgui.QPaintDevice;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QVector;
import pyqt5.qtgui.QRgb;
import pyqt5.qtcore.QPoint;
import pyqt5.qtgui.QColor;
import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtgui.QPaintEngine;
import pyqt5.qtcore.QStringList;
import pyqt5.qtgui.QTransform;
import pyqt5.qtgui.QPixelFormat;
import pyqt5.qtgui.QColorSpace;
import pyqt5.qtgui.QColorTransform;

@:pythonImport("PyQt5.QtGui", "QImage")
@:native("QImage")
extern class QImage extends QPaintDevice {
	@:overload(function(data:QByteArray, ?format:Int):QImage {})
	static function fromData(data:UInt, size:Int, ?format:Int):QImage;
	static function trueMatrix(?v:QTransform, w:Int, h:Int):QTransform;
	static function toPixelFormat(format:QImageFormat):QPixelFormat;
	static function toImageFormat(format:QPixelFormat):QImageFormat;

	@:overload(function():QImage {})
	@:overload(function(size:QSize, format:QImageFormat):QImage {})
	@:overload(function(width:Int, height:Int, format:QImageFormat):QImage {})
	@:overload(function(data:UInt, width:Int, height:Int, format:QImageFormat):QImage {})
	@:overload(function(data:Void, width:Int, height:Int, format:QImageFormat):QImage {})
	@:overload(function(data:UInt, width:Int, height:Int, bytesPerLine:Int, format:QImageFormat):QImage {})
	@:overload(function(data:Void, width:Int, height:Int, bytesPerLine:Int, format:QImageFormat):QImage {})
	@:overload(function(xpm:Array<String>):QImage {})
	@:overload(function(fileName:QString, ?format:Int):QImage {})
	@:overload(function(?v:QImage):QImage {})
	function new(variant:QVariant);

	function isNull():Bool;
	function devType():Int;
	function detach():Void;
	function isDetached():Bool;
	@:overload(function(x:Int, y:Int, w:Int, h:Int):QImage {})
	function copy(?rect:QRect):QImage;
	function format():QImageFormat;
	@:overload(function(f:QImageFormat, colorTable:QVector<UInt>, ?flags:QtImageConversionFlags):QImage {})
	function convertToFormat(f:QImageFormat, ?flags:QtImageConversionFlags):QImage;
	function width():Int;
	function height():Int;
	function size():QSize;
	function rect():QRect;
	function depth():Int;
	function color(i:Int):QRgb;
	function setColor(i:Int, c:QRgb):Void;
	function allGray():Bool;
	function isGrayscale():Bool;
	function bits(?v:UInt):Void;
	function constBits():Void;
	function scanLine(?v:Int):Void;
	function constScanLine(?v:Int):Void;
	function bytesPerLine():Int;
	@:overload(function(x:Int, y:Int):Bool {})
	function valid(pt:QPoint):Bool;
	@:overload(function(x:Int, y:Int):Int {})
	function pixelIndex(pt:QPoint):Int;
	@:overload(function(x:Int, y:Int):QRgb {})
	function pixel(pt:QPoint):QRgb;
	@:overload(function(x:Int, y:Int, index_or_rgb:UInt):Void {})
	function setPixel(pt:QPoint, index_or_rgb:UInt):Void;
	function colorTable():QVector<UInt>;
	function setColorTable(colors:QVector<UInt>):Void;
	@:overload(function(color:QColor):Void {})
	@:overload(function(pixel:UInt):Void {})
	function fill(color:QtGlobalColor):Void;
	function hasAlphaChannel():Bool;
	function setAlphaChannel(alphaChannel:QImage):Void;
	function createAlphaMask(?flags:QtImageConversionFlags):QImage;
	function createHeuristicMask(?clipTight:Bool):QImage;
	@:overload(function(size:QSize, ?aspectRatioMode:QtAspectRatioMode, ?transformMode:QtTransformationMode):QImage {})
	function scaled(width:Int, height:Int, ?aspectRatioMode:QtAspectRatioMode, ?transformMode:QtTransformationMode):QImage;
	function scaledToWidth(width:Int, ?mode:QtTransformationMode):QImage;
	function scaledToHeight(height:Int, ?mode:QtTransformationMode):QImage;
	function mirrored(?horizontal:Bool, ?vertical:Bool):QImage;
	function rgbSwapped():QImage;
	function invertPixels(?mode:QImageInvertMode):Void;
	@:overload(function(fileName:QString, ?format:Int):Bool {})
	function load(device:QIODevice, format:Int):Bool;
	@:overload(function(data:QByteArray, ?format:Int):Bool {})
	function loadFromData(data:UInt, len:Int, ?format:Int):Bool;
	@:overload(function(device:QIODevice, ?format:Int, ?quality:Int):Bool {})
	function save(fileName:QString, ?format:Int, ?quality:Int):Bool;
	function paintEngine():QPaintEngine;
	function dotsPerMeterX():Int;
	function dotsPerMeterY():Int;
	function setDotsPerMeterX(?v:Int):Void;
	function setDotsPerMeterY(?v:Int):Void;
	function offset():QPoint;
	function setOffset(?v:QPoint):Void;
	function textKeys():QStringList;
	function text(?key:QString):QString;
	function setText(key:QString, value:QString):Void;
	function metric(metric:QPaintDevicePaintDeviceMetric):Int;
	function smoothScaled(w:Int, h:Int):QImage;
	function createMaskFromColor(color:QRgb, ?mode:QtMaskMode):QImage;
	function transformed(matrix:QTransform, ?mode:QtTransformationMode):QImage;
	function cacheKey():Int;
	function colorCount():Int;
	function setColorCount(?v:Int):Void;
	function byteCount():Int;
	function bitPlaneCount():Int;
	function swap(other:QImage):Void;
	function devicePixelRatio():Float;
	function setDevicePixelRatio(scaleFactor:Float):Void;
	function pixelFormat():QPixelFormat;
	@:overload(function(pt:QPoint):QColor {})
	function pixelColor(x:Int, y:Int):QColor;
	@:overload(function(pt:QPoint, c:QColor):Void {})
	function setPixelColor(x:Int, y:Int, c:QColor):Void;
	function reinterpretAsFormat(f:QImageFormat):Bool;
	function sizeInBytes():Int;
	function convertTo(f:QImageFormat, ?flags:QtImageConversionFlags):Void;
	function colorSpace():QColorSpace;
	function convertedToColorSpace(?v:QColorSpace):QImage;
	function convertToColorSpace(?v:QColorSpace):Void;
	function setColorSpace(?v:QColorSpace):Void;
	function applyColorTransform(transform:QColorTransform):Void;
}

@:pythonImport("PyQt5.QtGui", "QImage")
@:native("QImage")
extern enum abstract QImageInvertMode(Int) from Int to Int {
	var InvertRgb;
	var InvertRgba;
}

@:pythonImport("PyQt5.QtGui", "QImage")
@:native("QImage")
extern enum abstract QImageFormat(Int) from Int to Int {
	var Format_Invalid;
	var Format_Mono;
	var Format_MonoLSB;
	var Format_Indexed8;
	var Format_RGB32;
	var Format_ARGB32;
	var Format_ARGB32_Premultiplied;
	var Format_RGB16;
	var Format_ARGB8565_Premultiplied;
	var Format_RGB666;
	var Format_ARGB6666_Premultiplied;
	var Format_RGB555;
	var Format_ARGB8555_Premultiplied;
	var Format_RGB888;
	var Format_RGB444;
	var Format_ARGB4444_Premultiplied;
	var Format_RGBX8888;
	var Format_RGBA8888;
	var Format_RGBA8888_Premultiplied;
	var Format_BGR30;
	var Format_A2BGR30_Premultiplied;
	var Format_RGB30;
	var Format_A2RGB30_Premultiplied;
	var Format_Alpha8;
	var Format_Grayscale8;
	var Format_RGBX64;
	var Format_RGBA64;
	var Format_RGBA64_Premultiplied;
	var Format_Grayscale16;
	var Format_BGR888;
}

