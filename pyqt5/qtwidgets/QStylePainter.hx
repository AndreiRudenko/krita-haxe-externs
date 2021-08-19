package pyqt5.qtwidgets;

import pyqt5.qtgui.QPainter;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtgui.QPaintDevice;
import pyqt5.qtwidgets.QStyle;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QPalette;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QPixmap;

@:pythonImport("PyQt5.QtWidgets", "QStylePainter")
@:native("QStylePainter")
extern class QStylePainter extends QPainter {
	@:overload(function():QStylePainter {})
	@:overload(function(w:QWidget):QStylePainter {})
	function new(pd:QPaintDevice, w:QWidget);

	@:overload(function(pd:QPaintDevice, w:QWidget):Bool {})
	function begin(w:QWidget):Bool;
	function style():QStyle;
	function drawPrimitive(pe:QStylePrimitiveElement, opt:QStyleOption):Void;
	function drawControl(ce:QStyleControlElement, opt:QStyleOption):Void;
	function drawComplexControl(cc:QStyleComplexControl, opt:QStyleOptionComplex):Void;
	function drawItemText(rect:QRect, flags:Int, pal:QPalette, enabled:Bool, text:QString, ?textRole:QPaletteColorRole):Void;
	function drawItemPixmap(r:QRect, flags:Int, pixmap:QPixmap):Void;
}

