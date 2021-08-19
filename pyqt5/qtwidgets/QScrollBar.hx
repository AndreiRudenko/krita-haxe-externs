package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractSlider;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QEvent;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QScrollBar")
@:native("QScrollBar")
extern class QScrollBar extends QAbstractSlider {
	@:overload(function(?parent:QWidget):QScrollBar {})
	function new(orientation:QtOrientation, ?parent:QWidget);

	function sizeHint():QSize;
	function event(event:QEvent):Bool;
	function initStyleOption(option:QStyleOptionSlider):Void;
	function paintEvent(?v:QPaintEvent):Void;
	function mousePressEvent(?v:QMouseEvent):Void;
	function mouseReleaseEvent(?v:QMouseEvent):Void;
	function mouseMoveEvent(?v:QMouseEvent):Void;
	function hideEvent(?v:QHideEvent):Void;
	function contextMenuEvent(?v:QContextMenuEvent):Void;
	function wheelEvent(?v:QWheelEvent):Void;
	function sliderChange(change:QAbstractSliderSliderChange):Void;
}

