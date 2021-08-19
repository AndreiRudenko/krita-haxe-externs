package pyqt5.qtgui;

import pyqt5.qtcore.QPoint;
import pyqt5.qtgui.QVector2D;
import pyqt5.qtgui.QVector4D;
import pyqt5.qtgui.QMatrix4x4;
import pyqt5.qtcore.QRect;

@:pythonImport("PyQt5.QtGui", "QVector3D")
@:native("QVector3D")
extern class QVector3D {
	static function dotProduct(v1:QVector3D, v2:QVector3D):Float;
	static function crossProduct(v1:QVector3D, v2:QVector3D):QVector3D;
	@:overload(function(v1:QVector3D, v2:QVector3D, v3:QVector3D):QVector3D {})
	static function normal(v1:QVector3D, v2:QVector3D):QVector3D;

	@:overload(function():QVector3D {})
	@:overload(function(xpos:Float, ypos:Float, zpos:Float):QVector3D {})
	@:overload(function(point:QPoint):QVector3D {})
	@:overload(function(point:QPointF):QVector3D {})
	@:overload(function(vector:QVector2D):QVector3D {})
	@:overload(function(vector:QVector2D, zpos:Float):QVector3D {})
	function new(vector:QVector4D);

	function length():Float;
	function lengthSquared():Float;
	function normalized():QVector3D;
	function normalize():Void;
	@:overload(function(plane1:QVector3D, plane2:QVector3D, plane3:QVector3D):Float {})
	function distanceToPlane(plane:QVector3D, normal:QVector3D):Float;
	function distanceToLine(point:QVector3D, direction:QVector3D):Float;
	function toVector2D():QVector2D;
	function toVector4D():QVector4D;
	function isNull():Bool;
	function x():Float;
	function y():Float;
	function z():Float;
	function setX(aX:Float):Void;
	function setY(aY:Float):Void;
	function setZ(aZ:Float):Void;
	function toPoint():QPoint;
	function toPointF():QPointF;
	function distanceToPoint(point:QVector3D):Float;
	function project(modelView:QMatrix4x4, projection:QMatrix4x4, viewport:QRect):QVector3D;
	function unproject(modelView:QMatrix4x4, projection:QMatrix4x4, viewport:QRect):QVector3D;
}

