package pyqt5.qtgui;

import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QPolygon;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QLine;
import pyqt5.qtgui.QRegion;
import pyqt5.qtgui.QPainterPath;
import pyqt5.qtcore.QRect;

@:pythonImport("PyQt5.QtGui", "QTransform")
@:native("QTransform")
extern class QTransform {
	static function squareToQuad(square:QPolygonF, result:QTransform):Bool;
	static function quadToSquare(quad:QPolygonF, result:QTransform):Bool;
	static function quadToQuad(one:QPolygonF, two:QPolygonF, result:QTransform):Bool;
	static function fromTranslate(dx:Float, dy:Float):QTransform;
	static function fromScale(dx:Float, dy:Float):QTransform;

	@:overload(function():QTransform {})
	@:overload(function(m11:Float, m12:Float, m13:Float, m21:Float, m22:Float, m23:Float, m31:Float, m32:Float, ?m33:Float):QTransform {})
	@:overload(function(h11:Float, h12:Float, h13:Float, h21:Float, h22:Float, h23:Float):QTransform {})
	function new(other:QTransform);

	function type():QTransformTransformationType;
	function setMatrix(m11:Float, m12:Float, m13:Float, m21:Float, m22:Float, m23:Float, m31:Float, m32:Float, m33:Float):Void;
	function inverted(?invertible:Bool):QTransform;
	function adjoint():QTransform;
	function transposed():QTransform;
	function translate(dx:Float, dy:Float):QTransform;
	function scale(sx:Float, sy:Float):QTransform;
	function shear(sh:Float, sv:Float):QTransform;
	function rotate(angle:Float, ?axis:QtAxis):QTransform;
	function rotateRadians(angle:Float, ?axis:QtAxis):QTransform;
	function reset():Void;
	@:overload(function(x:Float, y:Float, tx:Float, ty:Float):Void {})
	@:overload(function(p:QPoint):QPoint {})
	@:overload(function(p:QPointF):QPointF {})
	@:overload(function(l:QLine):QLine {})
	@:overload(function(l:QLineF):QLineF {})
	@:overload(function(a:QPolygonF):QPolygonF {})
	@:overload(function(a:QPolygon):QPolygon {})
	@:overload(function(r:QRegion):QRegion {})
	@:overload(function(p:QPainterPath):QPainterPath {})
	function map(x:Int, y:Int, tx:Int, ty:Int):Void;
	function mapToPolygon(r:QRect):QPolygon;
	@:overload(function(?v:QRectF):QRectF {})
	function mapRect(?v:QRect):QRect;
	function isAffine():Bool;
	function isIdentity():Bool;
	function isInvertible():Bool;
	function isScaling():Bool;
	function isRotating():Bool;
	function isTranslating():Bool;
	function determinant():Float;
	function m11():Float;
	function m12():Float;
	function m13():Float;
	function m21():Float;
	function m22():Float;
	function m23():Float;
	function m31():Float;
	function m32():Float;
	function m33():Float;
	function dx():Float;
	function dy():Float;
}

@:pythonImport("PyQt5.QtGui", "QTransform")
@:native("QTransform")
extern enum abstract QTransformTransformationType(Int) from Int to Int {
	var TxNone;
	var TxTranslate;
	var TxScale;
	var TxRotate;
	var TxShear;
	var TxProject;
}

