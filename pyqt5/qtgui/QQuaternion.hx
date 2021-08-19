package pyqt5.qtgui;

import pyqt5.qtgui.QVector3D;
import pyqt5.qtgui.QVector4D;
import pyqt5.qtgui.QMatrix4x3;

@:pythonImport("PyQt5.QtGui", "QQuaternion")
@:native("QQuaternion")
extern class QQuaternion {
	@:overload(function(x:Float, y:Float, z:Float, angle:Float):QQuaternion {})
	static function fromAxisAndAngle(axis:QVector3D, angle:Float):QQuaternion;
	static function slerp(q1:QQuaternion, q2:QQuaternion, t:Float):QQuaternion;
	static function nlerp(q1:QQuaternion, q2:QQuaternion, t:Float):QQuaternion;
	@:overload(function(eulerAngles:QVector3D):QQuaternion {})
	static function fromEulerAngles(pitch:Float, yaw:Float, roll:Float):QQuaternion;
	static function fromRotationMatrix(rot3x3:QMatrix3x3):QQuaternion;
	static function fromAxes(xAxis:QVector3D, yAxis:QVector3D, zAxis:QVector3D):QQuaternion;
	static function fromDirection(direction:QVector3D, up:QVector3D):QQuaternion;
	static function rotationTo(from:QVector3D, to:QVector3D):QQuaternion;
	static function dotProduct(q1:QQuaternion, q2:QQuaternion):Float;

	@:overload(function():QQuaternion {})
	@:overload(function(aScalar:Float, xpos:Float, ypos:Float, zpos:Float):QQuaternion {})
	@:overload(function(aScalar:Float, aVector:QVector3D):QQuaternion {})
	function new(aVector:QVector4D);

	function length():Float;
	function lengthSquared():Float;
	function normalized():QQuaternion;
	function normalize():Void;
	function rotatedVector(vector:QVector3D):QVector3D;
	function isNull():Bool;
	function isIdentity():Bool;
	function x():Float;
	function y():Float;
	function z():Float;
	function scalar():Float;
	function setX(aX:Float):Void;
	function setY(aY:Float):Void;
	function setZ(aZ:Float):Void;
	function setScalar(aScalar:Float):Void;
	function conjugate():QQuaternion;
	@:overload(function(aX:Float, aY:Float, aZ:Float):Void {})
	function setVector(aVector:QVector3D):Void;
	function vector():QVector3D;
	function toVector4D():QVector4D;
	function getAxisAndAngle(axis:QVector3D, angle:Float):Void;
	function getEulerAngles(pitch:Float, yaw:Float, roll:Float):Void;
	function toRotationMatrix():QMatrix3x3;
	function getAxes(xAxis:QVector3D, yAxis:QVector3D, zAxis:QVector3D):Void;
	function inverted():QQuaternion;
	function conjugated():QQuaternion;
	function toEulerAngles():QVector3D;
}

