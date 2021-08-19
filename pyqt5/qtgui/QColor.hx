package pyqt5.qtgui;

import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QRgb;
import pyqt5.qtgui.QRgba64;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QStringList;

@:pythonImport("PyQt5.QtGui", "QColor")
@:native("QColor")
extern class QColor {
	static function colorNames():QStringList;
	@:overload(function(r:Int, g:Int, b:Int, ?alpha:Int):QColor {})
	static function fromRgb(rgb:QRgb):QColor;
	static function fromRgba(rgba:QRgb):QColor;
	static function fromRgbF(r:Float, g:Float, b:Float, ?alpha:Float):QColor;
	static function fromHsv(h:Int, s:Int, v:Int, ?alpha:Int):QColor;
	static function fromHsvF(h:Float, s:Float, v:Float, ?alpha:Float):QColor;
	static function fromCmyk(c:Int, m:Int, y:Int, k:Int, ?alpha:Int):QColor;
	static function fromCmykF(c:Float, m:Float, y:Float, k:Float, ?alpha:Float):QColor;
	static function fromHsl(h:Int, s:Int, l:Int, ?alpha:Int):QColor;
	static function fromHslF(h:Float, s:Float, l:Float, ?alpha:Float):QColor;
	static function isValidColor(name:QString):Bool;
	@:overload(function(rgba:QRgba64):QColor {})
	static function fromRgba64(r:UInt, g:UInt, b:UInt, ?alpha:UInt):QColor;

	@:overload(function(color:QtGlobalColor):QColor {})
	@:overload(function(rgb:QRgb):QColor {})
	@:overload(function(rgba64:QRgba64):QColor {})
	@:overload(function(variant:QVariant):QColor {})
	@:overload(function():QColor {})
	@:overload(function(r:Int, g:Int, b:Int, ?alpha:Int):QColor {})
	@:overload(function(aname:QString):QColor {})
	function new(acolor:QColor);

	@:overload(function(format:QColorNameFormat):QString {})
	function name():QString;
	function setNamedColor(name:QString):Void;
	function spec():QColorSpec;
	function alpha():Int;
	function setAlpha(alpha:Int):Void;
	function alphaF():Float;
	function setAlphaF(alpha:Float):Void;
	function red():Int;
	function green():Int;
	function blue():Int;
	function setRed(red:Int):Void;
	function setGreen(green:Int):Void;
	function setBlue(blue:Int):Void;
	function redF():Float;
	function greenF():Float;
	function blueF():Float;
	function setRedF(red:Float):Void;
	function setGreenF(green:Float):Void;
	function setBlueF(blue:Float):Void;
	function getRgb(r:Int, g:Int, b:Int, ?alpha:Int):Void;
	@:overload(function(rgb:QRgb):Void {})
	function setRgb(r:Int, g:Int, b:Int, ?alpha:Int):Void;
	function getRgbF(r:Float, g:Float, b:Float, ?alpha:Float):Void;
	function setRgbF(r:Float, g:Float, b:Float, ?alpha:Float):Void;
	function rgba():QRgb;
	function setRgba(rgba:QRgb):Void;
	function rgb():QRgb;
	function hue():Int;
	function saturation():Int;
	function value():Int;
	function hueF():Float;
	function saturationF():Float;
	function valueF():Float;
	function getHsv(h:Int, s:Int, v:Int, ?alpha:Int):Void;
	function setHsv(h:Int, s:Int, v:Int, ?alpha:Int):Void;
	function getHsvF(h:Float, s:Float, v:Float, ?alpha:Float):Void;
	function setHsvF(h:Float, s:Float, v:Float, ?alpha:Float):Void;
	function cyan():Int;
	function magenta():Int;
	function yellow():Int;
	function black():Int;
	function cyanF():Float;
	function magentaF():Float;
	function yellowF():Float;
	function blackF():Float;
	function getCmyk(c:Int, m:Int, y:Int, k:Int, ?alpha:Int):Void;
	function setCmyk(c:Int, m:Int, y:Int, k:Int, ?alpha:Int):Void;
	function getCmykF(c:Float, m:Float, y:Float, k:Float, ?alpha:Float):Void;
	function setCmykF(c:Float, m:Float, y:Float, k:Float, ?alpha:Float):Void;
	function toRgb():QColor;
	function toHsv():QColor;
	function toCmyk():QColor;
	function convertTo(colorSpec:QColorSpec):QColor;
	function isValid():Bool;
	function lighter(?factor:Int):QColor;
	function darker(?factor:Int):QColor;
	function hsvHue():Int;
	function hsvSaturation():Int;
	function hsvHueF():Float;
	function hsvSaturationF():Float;
	function hslHue():Int;
	function hslSaturation():Int;
	function lightness():Int;
	function hslHueF():Float;
	function hslSaturationF():Float;
	function lightnessF():Float;
	function getHsl(h:Int, s:Int, l:Int, ?alpha:Int):Void;
	function setHsl(h:Int, s:Int, l:Int, ?alpha:Int):Void;
	function getHslF(h:Float, s:Float, l:Float, ?alpha:Float):Void;
	function setHslF(h:Float, s:Float, l:Float, ?alpha:Float):Void;
	function toHsl():QColor;
	function rgba64():QRgba64;
	function setRgba64(rgba:QRgba64):Void;
	function toExtendedRgb():QColor;
}

@:pythonImport("PyQt5.QtGui", "Spec")
@:native("QColor.Spec")
extern enum abstract QColorSpec(Int) from Int to Int {
	var Invalid;
	var Rgb;
	var Hsv;
	var Cmyk;
	var Hsl;
	var ExtendedRgb;
}

@:pythonImport("PyQt5.QtGui", "NameFormat")
@:native("QColor.NameFormat")
extern enum abstract QColorNameFormat(Int) from Int to Int {
	var HexRgb;
	var HexArgb;
}

@:pythonImport("PyQt5.QtGui", "QColorConstants")
@:native("QColorConstants")
extern class QColorConstants {
}

@:pythonImport("PyQt5.QtGui", "Svg")
@:native("Svg")
extern class Svg {
}

