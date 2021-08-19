package pyqt5.qtgui;

import pyqt5.qtgui.QPaintDevice;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QColor;
import pyqt5.qtgui.QBitmap;
import pyqt5.qtgui.QImage;
import pyqt5.qtgui.QImageReader;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QIODevice;
import pyqt5.qtgui.QPaintEngine;
import pyqt5.qtgui.QTransform;
import pyqt5.qtgui.QRegion;

@:pythonImport("PyQt5.QtGui", "QPixmap")
@:native("QPixmap")
extern class QPixmap extends QPaintDevice {
	static function defaultDepth():Int;
	static function fromImage(image:QImage, ?flags:QtImageConversionFlags):QPixmap;
	static function fromImageReader(imageReader:QImageReader, ?flags:QtImageConversionFlags):QPixmap;
	static function trueMatrix(m:QTransform, w:Int, h:Int):QTransform;

	@:overload(function():QPixmap {})
	@:overload(function(w:Int, h:Int):QPixmap {})
	@:overload(function(?v:QSize):QPixmap {})
	@:overload(function(fileName:QString, ?format:Int, ?flags:QtImageConversionFlags):QPixmap {})
	@:overload(function(xpm:Array<String>):QPixmap {})
	@:overload(function(?v:QPixmap):QPixmap {})
	function new(variant:QVariant);

	function isNull():Bool;
	function devType():Int;
	function width():Int;
	function height():Int;
	function size():QSize;
	function rect():QRect;
	function depth():Int;
	function fill(?color:QColor):Void;
	function mask():QBitmap;
	function setMask(?v:QBitmap):Void;
	function hasAlpha():Bool;
	function hasAlphaChannel():Bool;
	function createHeuristicMask(?clipTight:Bool):QBitmap;
	function createMaskFromColor(maskColor:QColor, ?mode:QtMaskMode):QBitmap;
	@:overload(function(size:QSize, ?aspectRatioMode:QtAspectRatioMode, ?transformMode:QtTransformationMode):QPixmap {})
	function scaled(width:Int, height:Int, ?aspectRatioMode:QtAspectRatioMode, ?transformMode:QtTransformationMode):QPixmap;
	function scaledToWidth(width:Int, ?mode:QtTransformationMode):QPixmap;
	function scaledToHeight(height:Int, ?mode:QtTransformationMode):QPixmap;
	function toImage():QImage;
	function convertFromImage(img:QImage, ?flags:QtImageConversionFlags):Bool;
	function load(fileName:QString, ?format:Int, ?flags:QtImageConversionFlags):Bool;
	@:overload(function(buf:QByteArray, ?format:Int, ?flags:QtImageConversionFlags):Bool {})
	function loadFromData(buf:UInt, len:UInt, ?format:Int, ?flags:QtImageConversionFlags):Bool;
	@:overload(function(device:QIODevice, ?format:Int, ?quality:Int):Bool {})
	function save(fileName:QString, ?format:Int, ?quality:Int):Bool;
	@:overload(function(ax:Int, ay:Int, awidth:Int, aheight:Int):QPixmap {})
	function copy(?rect:QRect):QPixmap;
	function detach():Void;
	function isQBitmap():Bool;
	function paintEngine():QPaintEngine;
	function metric(?v:QPaintDevicePaintDeviceMetric):Int;
	function transformed(transform:QTransform, ?mode:QtTransformationMode):QPixmap;
	function cacheKey():Int;
	@:overload(function(dx:Int, dy:Int, x:Int, y:Int, width:Int, height:Int, exposed:QRegion):Void {})
	function scroll(dx:Int, dy:Int, rect:QRect, exposed:QRegion):Void;
	function swap(other:QPixmap):Void;
	function devicePixelRatio():Float;
	function setDevicePixelRatio(scaleFactor:Float):Void;
}

