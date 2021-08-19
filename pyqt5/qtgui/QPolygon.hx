package pyqt5.qtgui;

import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QVector;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.Qt;

@:pythonImport("PyQt5.QtGui", "QPolygon")
@:native("QPolygon")
extern class QPolygon {
	@:overload(function():QPolygon {})
	@:overload(function(a:QPolygon):QPolygon {})
	@:overload(function(points:Array<Int>):QPolygon {})
	@:overload(function(v:QVector<QPoint>):QPolygon {})
	@:overload(function(rectangle:QRect, ?closed:Bool):QPolygon {})
	@:overload(function(asize:Int):QPolygon {})
	function new(variant:QVariant);

	@:overload(function(offset:QPoint):Void {})
	function translate(dx:Int, dy:Int):Void;
	function boundingRect():QRect;
	function point(index:Int):QPoint;
	@:overload(function(firstx:Int, firsty:Int, ...rest:Dynamic):Void {})
	function setPoints(points:Array<Int>):Void;
	@:overload(function(index:Int, nPoints:Int, fromPolygon:QPolygon, ?from:Int):Void {})
	function putPoints(index:Int, firstx:Int, firsty:Int, ...rest:Dynamic):Void;
	@:overload(function(index:Int, x:Int, y:Int):Void {})
	function setPoint(index:Int, pt:QPoint):Void;
	function containsPoint(pt:QPoint, fillRule:QtFillRule):Bool;
	function united(r:QPolygon):QPolygon;
	function intersected(r:QPolygon):QPolygon;
	function subtracted(r:QPolygon):QPolygon;
	@:overload(function(offset:QPoint):QPolygon {})
	function translated(dx:Int, dy:Int):QPolygon;
	function append(value:QPoint):Void;
	function at(i:Int):QPoint;
	function clear():Void;
	function contains(value:QPoint):Bool;
	@:overload(function():Int {})
	function count(value:QPoint):Int;
	function data():Void;
	function fill(value:QPoint, ?size:Int):Void;
	function first():QPoint;
	function indexOf(value:QPoint, ?from:Int):Int;
	function insert(i:Int, value:QPoint):Void;
	function isEmpty():Bool;
	function last():QPoint;
	function lastIndexOf(value:QPoint, ?from:Int):Int;
	function mid(pos:Int, ?length:Int):QPolygon;
	function prepend(value:QPoint):Void;
	@:overload(function(i:Int, count:Int):Void {})
	function remove(i:Int):Void;
	function replace(i:Int, value:QPoint):Void;
	function size():Int;
	@:overload(function(i:Int, defaultValue:QPoint):QPoint {})
	function value(i:Int):QPoint;
	function swap(other:QPolygon):Void;
	function intersects(r:QPolygon):Bool;
}

@:pythonImport("PyQt5.QtGui", "QPolygonF")
@:native("QPolygonF")
extern class QPolygonF {
	@:overload(function():QPolygonF {})
	@:overload(function(a:QPolygonF):QPolygonF {})
	@:overload(function(v:QVector<QPointF>):QPolygonF {})
	@:overload(function(r:QRectF):QPolygonF {})
	@:overload(function(a:QPolygon):QPolygonF {})
	function new(asize:Int);

	@:overload(function(dx:Float, dy:Float):Void {})
	function translate(offset:QPointF):Void;
	function toPolygon():QPolygon;
	function isClosed():Bool;
	function boundingRect():QRectF;
	function containsPoint(pt:QPointF, fillRule:QtFillRule):Bool;
	function united(r:QPolygonF):QPolygonF;
	function intersected(r:QPolygonF):QPolygonF;
	function subtracted(r:QPolygonF):QPolygonF;
	@:overload(function(dx:Float, dy:Float):QPolygonF {})
	function translated(offset:QPointF):QPolygonF;
	function append(value:QPointF):Void;
	function at(i:Int):QPointF;
	function clear():Void;
	function contains(value:QPointF):Bool;
	@:overload(function():Int {})
	function count(value:QPointF):Int;
	function data():Void;
	function fill(value:QPointF, ?size:Int):Void;
	function first():QPointF;
	function indexOf(value:QPointF, ?from:Int):Int;
	function insert(i:Int, value:QPointF):Void;
	function isEmpty():Bool;
	function last():QPointF;
	function lastIndexOf(value:QPointF, ?from:Int):Int;
	function mid(pos:Int, ?length:Int):QPolygonF;
	function prepend(value:QPointF):Void;
	@:overload(function(i:Int, count:Int):Void {})
	function remove(i:Int):Void;
	function replace(i:Int, value:QPointF):Void;
	function size():Int;
	@:overload(function(i:Int, defaultValue:QPointF):QPointF {})
	function value(i:Int):QPointF;
	function swap(other:QPolygonF):Void;
	function intersects(r:QPolygonF):Bool;
}

