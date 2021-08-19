package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QSize;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QRubberBand")
@:native("QRubberBand")
extern class QRubberBand extends QWidget {
	function new(?v:QRubberBandShape, ?parent:QWidget);

	function shape():QRubberBandShape;
	@:overload(function(ax:Int, ay:Int, aw:Int, ah:Int):Void {})
	function setGeometry(r:QRect):Void;
	@:overload(function(ax:Int, ay:Int):Void {})
	function move(p:QPoint):Void;
	@:overload(function(s:QSize):Void {})
	function resize(w:Int, h:Int):Void;
	function initStyleOption(option:QStyleOptionRubberBand):Void;
	function event(e:QEvent):Bool;
	function paintEvent(?v:QPaintEvent):Void;
	function changeEvent(?v:QEvent):Void;
	function showEvent(?v:QShowEvent):Void;
	function resizeEvent(?v:QResizeEvent):Void;
	function moveEvent(?v:QMoveEvent):Void;
}

@:pythonImport("PyQt5.QtWidgets", "Shape")
@:native("QRubberBand.Shape")
extern enum abstract QRubberBandShape(Int) from Int to Int {
	var Line;
	var Rectangle;
}

