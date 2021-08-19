package pyqt5.qtgui;

import pyqt5.qtcore.QPoint;
import pyqt5.qtgui.QVector3D;
import pyqt5.qtgui.QVector4D;

@:pythonImport("PyQt5.QtGui", "QVector2D")
@:native("QVector2D")
extern class QVector2D {
	static function dotProduct(v1:QVector2D, v2:QVector2D):Float;

	@:overload(function():QVector2D {})
	@:overload(function(xpos:Float, ypos:Float):QVector2D {})
	@:overload(function(point:QPoint):QVector2D {})
	@:overload(function(point:QPointF):QVector2D {})
	@:overload(function(vector:QVector3D):QVector2D {})
	function new(vector:QVector4D);

	function length():Float;
	function lengthSquared():Float;
	function normalized():QVector2D;
	function normalize():Void;
	function toVector3D():QVector3D;
	function toVector4D():QVector4D;
	function isNull():Bool;
	function x():Float;
	function y():Float;
	function setX(aX:Float):Void;
	function setY(aY:Float):Void;
	function toPoint():QPoint;
	function toPointF():QPointF;
	function distanceToPoint(point:QVector2D):Float;
	function distanceToLine(point:QVector2D, direction:QVector2D):Float;
}

