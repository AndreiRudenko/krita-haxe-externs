package pyqt5.qtgui;

import pyqt5.qtcore.QPoint;
import pyqt5.qtgui.QVector2D;
import pyqt5.qtgui.QVector3D;

@:pythonImport("PyQt5.QtGui", "QVector4D")
@:native("QVector4D")
extern class QVector4D {
	static function dotProduct(v1:QVector4D, v2:QVector4D):Float;

	@:overload(function():QVector4D {})
	@:overload(function(xpos:Float, ypos:Float, zpos:Float, wpos:Float):QVector4D {})
	@:overload(function(point:QPoint):QVector4D {})
	@:overload(function(point:QPointF):QVector4D {})
	@:overload(function(vector:QVector2D):QVector4D {})
	@:overload(function(vector:QVector2D, zpos:Float, wpos:Float):QVector4D {})
	@:overload(function(vector:QVector3D):QVector4D {})
	function new(vector:QVector3D, wpos:Float);

	function length():Float;
	function lengthSquared():Float;
	function normalized():QVector4D;
	function normalize():Void;
	function toVector2D():QVector2D;
	function toVector2DAffine():QVector2D;
	function toVector3D():QVector3D;
	function toVector3DAffine():QVector3D;
	function isNull():Bool;
	function x():Float;
	function y():Float;
	function z():Float;
	function w():Float;
	function setX(aX:Float):Void;
	function setY(aY:Float):Void;
	function setZ(aZ:Float):Void;
	function setW(aW:Float):Void;
	function toPoint():QPoint;
	function toPointF():QPointF;
}

