package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QMatrix4x4;
import pyqt5.qtgui.QVector3D;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.Qt;

@:pythonImport("PyQt5.QtWidgets", "QGraphicsTransform")
@:native("QGraphicsTransform")
extern class QGraphicsTransform extends QObject {
	function new(?parent:QObject);

	function applyTo(matrix:QMatrix4x4):Void;
	function update():Void;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsScale")
@:native("QGraphicsScale")
extern class QGraphicsScale extends QGraphicsTransform {
	var originChanged:QSignal0;
	var scaleChanged:QSignal0;
	var xScaleChanged:QSignal0;
	var yScaleChanged:QSignal0;
	var zScaleChanged:QSignal0;

	function new(?parent:QObject);

	function origin():QVector3D;
	function setOrigin(point:QVector3D):Void;
	function xScale():Float;
	function setXScale(?v:Float):Void;
	function yScale():Float;
	function setYScale(?v:Float):Void;
	function zScale():Float;
	function setZScale(?v:Float):Void;
	function applyTo(matrix:QMatrix4x4):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsRotation")
@:native("QGraphicsRotation")
extern class QGraphicsRotation extends QGraphicsTransform {
	var originChanged:QSignal0;
	var angleChanged:QSignal0;
	var axisChanged:QSignal0;

	function new(?parent:QObject);

	function origin():QVector3D;
	function setOrigin(point:QVector3D):Void;
	function angle():Float;
	function setAngle(?v:Float):Void;
	function axis():QVector3D;
	@:overload(function(axis:QtAxis):Void {})
	function setAxis(axis:QVector3D):Void;
	function applyTo(matrix:QMatrix4x4):Void;
}

