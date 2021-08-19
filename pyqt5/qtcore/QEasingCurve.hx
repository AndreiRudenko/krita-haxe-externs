package pyqt5.qtcore;

import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QVector;

@:pythonImport("PyQt5.QtCore", "QEasingCurve")
@:native("QEasingCurve")
extern class QEasingCurve {
	@:overload(function(?type:QEasingCurveType):QEasingCurve {})
	function new(other:QEasingCurve);

	function amplitude():Float;
	function setAmplitude(amplitude:Float):Void;
	function period():Float;
	function setPeriod(period:Float):Void;
	function overshoot():Float;
	function setOvershoot(overshoot:Float):Void;
	function type():QEasingCurveType;
	function setType(type:QEasingCurveType):Void;
	function setCustomType(func:Array<Float>->Float):Void;
	function customType():Array<Float>->Float;
	function valueForProgress(progress:Float):Float;
	function swap(other:QEasingCurve):Void;
	function addCubicBezierSegment(c1:QPointF, c2:QPointF, endPoint:QPointF):Void;
	function addTCBSegment(nextPoint:QPointF, t:Float, c:Float, b:Float):Void;
	function toCubicSpline():QVector<QPointF>;
}

@:pythonImport("PyQt5.QtCore", "Type")
@:native("QEasingCurve.Type")
extern enum abstract QEasingCurveType(Int) from Int to Int {
	var Linear;
	var InQuad;
	var OutQuad;
	var InOutQuad;
	var OutInQuad;
	var InCubic;
	var OutCubic;
	var InOutCubic;
	var OutInCubic;
	var InQuart;
	var OutQuart;
	var InOutQuart;
	var OutInQuart;
	var InQuint;
	var OutQuint;
	var InOutQuint;
	var OutInQuint;
	var InSine;
	var OutSine;
	var InOutSine;
	var OutInSine;
	var InExpo;
	var OutExpo;
	var InOutExpo;
	var OutInExpo;
	var InCirc;
	var OutCirc;
	var InOutCirc;
	var OutInCirc;
	var InElastic;
	var OutElastic;
	var InOutElastic;
	var OutInElastic;
	var InBack;
	var OutBack;
	var InOutBack;
	var OutInBack;
	var InBounce;
	var OutBounce;
	var InOutBounce;
	var OutInBounce;
	var InCurve;
	var OutCurve;
	var SineCurve;
	var CosineCurve;
	var BezierSpline;
	var TCBSpline;
	var Custom;
}

