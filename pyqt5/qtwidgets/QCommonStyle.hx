package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QStyle;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtwidgets.QApplication;
import pyqt5.qtgui.QPalette;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtgui.QIcon;
import pyqt5.qtwidgets.QSizePolicy;
import pyqt5.qtcore.Qt;

@:pythonImport("PyQt5.QtWidgets", "QCommonStyle")
@:native("QCommonStyle")
extern class QCommonStyle extends QStyle {
	function new();

	@:overload(function(app:QApplication):Void {})
	@:overload(function(?v:QPalette):Void {})
	function polish(widget:QWidget):Void;
	@:overload(function(application:QApplication):Void {})
	function unpolish(widget:QWidget):Void;
	function drawPrimitive(pe:QStylePrimitiveElement, opt:QStyleOption, p:QPainter, ?widget:QWidget):Void;
	function drawControl(element:QStyleControlElement, opt:QStyleOption, p:QPainter, ?widget:QWidget):Void;
	function subElementRect(r:QStyleSubElement, opt:QStyleOption, ?widget:QWidget):QRect;
	function drawComplexControl(cc:QStyleComplexControl, opt:QStyleOptionComplex, p:QPainter, ?widget:QWidget):Void;
	function hitTestComplexControl(cc:QStyleComplexControl, opt:QStyleOptionComplex, pt:QPoint, ?widget:QWidget):QStyleSubControl;
	function subControlRect(cc:QStyleComplexControl, opt:QStyleOptionComplex, sc:QStyleSubControl, ?widget:QWidget):QRect;
	function sizeFromContents(ct:QStyleContentsType, opt:QStyleOption, contentsSize:QSize, ?widget:QWidget):QSize;
	function pixelMetric(m:QStylePixelMetric, ?option:QStyleOption, ?widget:QWidget):Int;
	function styleHint(sh:QStyleStyleHint, ?option:QStyleOption, ?widget:QWidget, ?returnData:QStyleHintReturn):Int;
	function standardPixmap(sp:QStyleStandardPixmap, ?option:QStyleOption, ?widget:QWidget):QPixmap;
	function generatedIconPixmap(iconMode:QIconMode, pixmap:QPixmap, opt:QStyleOption):QPixmap;
	function standardIcon(standardIcon:QStyleStandardPixmap, ?option:QStyleOption, ?widget:QWidget):QIcon;
	function layoutSpacing(control1:QSizePolicyControlType, control2:QSizePolicyControlType, orientation:QtOrientation, ?option:QStyleOption, ?widget:QWidget):Int;
}

