package pyqt5.qtgui;

import pyqt5.qtgui.QTransform;
import pyqt5.qtgui.QMatrix4x3;
import pyqt5.qtgui.QVector3D;
import pyqt5.qtgui.QQuaternion;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QVector4D;
import pyqt5.qtcore.QPoint;

@:pythonImport("PyQt5.QtGui", "QMatrix4x4")
@:native("QMatrix4x4")
extern class QMatrix4x4 {
	@:overload(function():QMatrix4x4 {})
	@:overload(function(values:Array<Float>):QMatrix4x4 {})
	@:overload(function(m11:Float, m12:Float, m13:Float, m14:Float, m21:Float, m22:Float, m23:Float, m24:Float, m31:Float, m32:Float, m33:Float, m34:Float, m41:Float, m42:Float, m43:Float, m44:Float):QMatrix4x4 {})
	function new(transform:QTransform);

	function determinant():Float;
	function inverted(?invertible:Bool):QMatrix4x4;
	function transposed():QMatrix4x4;
	function normalMatrix():QMatrix3x3;
	@:overload(function(x:Float, y:Float):Void {})
	@:overload(function(x:Float, y:Float, z:Float):Void {})
	@:overload(function(factor:Float):Void {})
	function scale(vector:QVector3D):Void;
	@:overload(function(x:Float, y:Float):Void {})
	@:overload(function(x:Float, y:Float, z:Float):Void {})
	function translate(vector:QVector3D):Void;
	@:overload(function(angle:Float, x:Float, y:Float, ?z:Float):Void {})
	@:overload(function(quaternion:QQuaternion):Void {})
	function rotate(angle:Float, vector:QVector3D):Void;
	@:overload(function(rect:QRectF):Void {})
	@:overload(function(left:Float, right:Float, bottom:Float, top:Float, nearPlane:Float, farPlane:Float):Void {})
	function ortho(rect:QRect):Void;
	function frustum(left:Float, right:Float, bottom:Float, top:Float, nearPlane:Float, farPlane:Float):Void;
	function perspective(angle:Float, aspect:Float, nearPlane:Float, farPlane:Float):Void;
	function lookAt(eye:QVector3D, center:QVector3D, up:QVector3D):Void;
	function copyDataTo():Array<Float>;
	@:overload(function(distanceToPlane:Float):QTransform {})
	function toTransform():QTransform;
	@:overload(function(rect:QRectF):QRectF {})
	function mapRect(rect:QRect):QRect;
	function data():Array<Float>;
	function optimize():Void;
	function column(index:Int):QVector4D;
	function setColumn(index:Int, value:QVector4D):Void;
	function row(index:Int):QVector4D;
	function setRow(index:Int, value:QVector4D):Void;
	function isIdentity():Bool;
	function setToIdentity():Void;
	function fill(value:Float):Void;
	@:overload(function(point:QPointF):QPointF {})
	@:overload(function(point:QVector3D):QVector3D {})
	@:overload(function(point:QVector4D):QVector4D {})
	function map(point:QPoint):QPoint;
	function mapVector(vector:QVector3D):QVector3D;
	@:overload(function(rect:QRectF):Void {})
	function viewport(left:Float, bottom:Float, width:Float, height:Float, ?nearPlane:Float, ?farPlane:Float):Void;
	function isAffine():Bool;
}

