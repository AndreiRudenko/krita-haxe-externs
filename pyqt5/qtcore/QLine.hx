package pyqt5.qtcore;

import pyqt5.qtcore.QPoint;

typedef QLineFIntersectionType = QLineFIntersectType;

@:pythonImport("PyQt5.QtCore", "QLine")
@:native("QLine")
extern class QLine {
	@:overload(function():QLine {})
	@:overload(function(pt1_:QPoint, pt2_:QPoint):QLine {})
	function new(x1pos:Int, y1pos:Int, x2pos:Int, y2pos:Int);

	function isNull():Bool;
	function x1():Int;
	function y1():Int;
	function x2():Int;
	function y2():Int;
	function p1():QPoint;
	function p2():QPoint;
	function dx():Int;
	function dy():Int;
	@:overload(function(adx:Int, ady:Int):Void {})
	function translate(point:QPoint):Void;
	@:overload(function(adx:Int, ady:Int):QLine {})
	function translated(p:QPoint):QLine;
	function setP1(aP1:QPoint):Void;
	function setP2(aP2:QPoint):Void;
	function setPoints(aP1:QPoint, aP2:QPoint):Void;
	function setLine(aX1:Int, aY1:Int, aX2:Int, aY2:Int):Void;
	function center():QPoint;
}

@:pythonImport("PyQt5.QtCore", "QLineF")
@:native("QLineF")
extern class QLineF {
	static function fromPolar(length:Float, angle:Float):QLineF;

	@:overload(function(line:QLine):QLineF {})
	@:overload(function():QLineF {})
	@:overload(function(apt1:QPointF, apt2:QPointF):QLineF {})
	function new(x1pos:Float, y1pos:Float, x2pos:Float, y2pos:Float);

	function isNull():Bool;
	function length():Float;
	function unitVector():QLineF;
	function intersect(l:QLineF, intersectionPoint:QPointF):QLineFIntersectType;
	function intersects(l:QLineF, intersectionPoint:QPointF):QLineFIntersectionType;
	function x1():Float;
	function y1():Float;
	function x2():Float;
	function y2():Float;
	function p1():QPointF;
	function p2():QPointF;
	function dx():Float;
	function dy():Float;
	function normalVector():QLineF;
	@:overload(function(adx:Float, ady:Float):Void {})
	function translate(point:QPointF):Void;
	function setLength(len:Float):Void;
	function pointAt(t:Float):QPointF;
	function toLine():QLine;
	function angle():Float;
	function setAngle(angle:Float):Void;
	function angleTo(l:QLineF):Float;
	@:overload(function(adx:Float, ady:Float):QLineF {})
	function translated(p:QPointF):QLineF;
	function setP1(aP1:QPointF):Void;
	function setP2(aP2:QPointF):Void;
	function setPoints(aP1:QPointF, aP2:QPointF):Void;
	function setLine(aX1:Float, aY1:Float, aX2:Float, aY2:Float):Void;
	function center():QPointF;
}

@:pythonImport("PyQt5.QtCore", "IntersectType")
@:native("QLineF.IntersectType")
extern enum abstract QLineFIntersectType(Int) from Int to Int {
	var NoIntersection;
	var BoundedIntersection;
	var UnboundedIntersection;
}

