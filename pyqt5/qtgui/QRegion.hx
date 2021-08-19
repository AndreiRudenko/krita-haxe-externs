package pyqt5.qtgui;

import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QPolygon;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QBitmap;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QVector;

@:pythonImport("PyQt5.QtGui", "QRegion")
@:native("QRegion")
extern class QRegion {
	@:overload(function():QRegion {})
	@:overload(function(x:Int, y:Int, w:Int, h:Int, ?type:QRegionRegionType):QRegion {})
	@:overload(function(r:QRect, ?type:QRegionRegionType):QRegion {})
	@:overload(function(a:QPolygon, ?fillRule:QtFillRule):QRegion {})
	@:overload(function(bitmap:QBitmap):QRegion {})
	@:overload(function(region:QRegion):QRegion {})
	function new(variant:QVariant);

	function isEmpty():Bool;
	@:overload(function(r:QRect):Bool {})
	function contains(p:QPoint):Bool;
	@:overload(function(p:QPoint):Void {})
	function translate(dx:Int, dy:Int):Void;
	@:overload(function(p:QPoint):QRegion {})
	function translated(dx:Int, dy:Int):QRegion;
	@:overload(function(r:QRect):QRegion {})
	function united(r:QRegion):QRegion;
	function boundingRect():QRect;
	function rects():QVector<QRect>;
	function setRects(?v:QVector<QRect>):Void;
	@:overload(function(r:QRect):QRegion {})
	function intersected(r:QRegion):QRegion;
	function subtracted(r:QRegion):QRegion;
	function xored(r:QRegion):QRegion;
	@:overload(function(r:QRect):Bool {})
	function intersects(r:QRegion):Bool;
	function rectCount():Int;
	function swap(other:QRegion):Void;
	function isNull():Bool;
}

@:pythonImport("PyQt5.QtGui", "QRegion")
@:native("QRegion")
extern enum abstract QRegionRegionType(Int) from Int to Int {
	var Rectangle;
	var Ellipse;
}

