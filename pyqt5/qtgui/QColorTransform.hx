package pyqt5.qtgui;

import pyqt5.qtgui.QRgb;
import pyqt5.qtgui.QRgba64;
import pyqt5.qtgui.QColor;

@:pythonImport("PyQt5.QtGui", "QColorTransform")
@:native("QColorTransform")
extern class QColorTransform {
	@:overload(function():QColorTransform {})
	function new(colorTransform:QColorTransform);

	function swap(other:QColorTransform):Void;
	@:overload(function(rgba64:QRgba64):QRgba64 {})
	@:overload(function(color:QColor):QColor {})
	function map(argb:QRgb):QRgb;
}

