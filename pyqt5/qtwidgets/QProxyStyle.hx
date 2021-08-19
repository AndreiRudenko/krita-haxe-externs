package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QCommonStyle;
import pyqt5.qtwidgets.QStyle;
import pyqt5.qtcore.QString;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtgui.QPainter;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QPalette;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QFontMetrics;
import pyqt5.qtcore.QPoint;
import pyqt5.qtwidgets.QSizePolicy;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QIcon;
import pyqt5.qtwidgets.QApplication;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtWidgets", "QProxyStyle")
@:native("QProxyStyle")
extern class QProxyStyle extends QCommonStyle {
	@:overload(function(style:QStyle):QProxyStyle {})
	function new(key:QString);

	function baseStyle():QStyle;
	function setBaseStyle(style:QStyle):Void;
	function drawPrimitive(element:QStylePrimitiveElement, option:QStyleOption, painter:QPainter, ?widget:QWidget):Void;
	function drawControl(element:QStyleControlElement, option:QStyleOption, painter:QPainter, ?widget:QWidget):Void;
	function drawComplexControl(control:QStyleComplexControl, option:QStyleOptionComplex, painter:QPainter, ?widget:QWidget):Void;
	function drawItemText(painter:QPainter, rect:QRect, flags:Int, pal:QPalette, enabled:Bool, text:QString, ?textRole:QPaletteColorRole):Void;
	function drawItemPixmap(painter:QPainter, rect:QRect, alignment:Int, pixmap:QPixmap):Void;
	function sizeFromContents(type:QStyleContentsType, option:QStyleOption, size:QSize, widget:QWidget):QSize;
	function subElementRect(element:QStyleSubElement, option:QStyleOption, widget:QWidget):QRect;
	function subControlRect(cc:QStyleComplexControl, opt:QStyleOptionComplex, sc:QStyleSubControl, widget:QWidget):QRect;
	function itemTextRect(fm:QFontMetrics, r:QRect, flags:Int, enabled:Bool, text:QString):QRect;
	function itemPixmapRect(r:QRect, flags:Int, pixmap:QPixmap):QRect;
	function hitTestComplexControl(control:QStyleComplexControl, option:QStyleOptionComplex, pos:QPoint, ?widget:QWidget):QStyleSubControl;
	function styleHint(hint:QStyleStyleHint, ?option:QStyleOption, ?widget:QWidget, ?returnData:QStyleHintReturn):Int;
	function pixelMetric(metric:QStylePixelMetric, ?option:QStyleOption, ?widget:QWidget):Int;
	function layoutSpacing(control1:QSizePolicyControlType, control2:QSizePolicyControlType, orientation:QtOrientation, ?option:QStyleOption, ?widget:QWidget):Int;
	function standardIcon(standardIcon:QStyleStandardPixmap, ?option:QStyleOption, ?widget:QWidget):QIcon;
	function standardPixmap(standardPixmap:QStyleStandardPixmap, opt:QStyleOption, ?widget:QWidget):QPixmap;
	function generatedIconPixmap(iconMode:QIconMode, pixmap:QPixmap, opt:QStyleOption):QPixmap;
	function standardPalette():QPalette;
	@:overload(function(pal:QPalette):Void {})
	@:overload(function(app:QApplication):Void {})
	function polish(widget:QWidget):Void;
	@:overload(function(app:QApplication):Void {})
	function unpolish(widget:QWidget):Void;
	function event(e:QEvent):Bool;
}

