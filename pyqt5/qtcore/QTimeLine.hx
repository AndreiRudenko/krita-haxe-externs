package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QEasingCurve;

@:pythonImport("PyQt5.QtCore", "QTimeLine")
@:native("QTimeLine")
extern class QTimeLine extends QObject {
	var finished:QSignal0;
	var frameChanged:QSignal1<Int>;
	var stateChanged:QSignal1<QTimeLineState>;
	var valueChanged:QSignal1<Float>;

	function new(?duration:Int, ?parent:QObject);

	function state():QTimeLineState;
	function loopCount():Int;
	function setLoopCount(count:Int):Void;
	function direction():QTimeLineDirection;
	function setDirection(direction:QTimeLineDirection):Void;
	function duration():Int;
	function setDuration(duration:Int):Void;
	function startFrame():Int;
	function setStartFrame(frame:Int):Void;
	function endFrame():Int;
	function setEndFrame(frame:Int):Void;
	function setFrameRange(startFrame:Int, endFrame:Int):Void;
	function updateInterval():Int;
	function setUpdateInterval(interval:Int):Void;
	function curveShape():QTimeLineCurveShape;
	function setCurveShape(shape:QTimeLineCurveShape):Void;
	function currentTime():Int;
	function currentFrame():Int;
	function currentValue():Float;
	function frameForTime(msec:Int):Int;
	function valueForTime(msec:Int):Float;
	function resume():Void;
	function setCurrentTime(msec:Int):Void;
	function setPaused(paused:Bool):Void;
	function start():Void;
	function stop():Void;
	function toggleDirection():Void;
	function timerEvent(event:QTimerEvent):Void;
	function easingCurve():QEasingCurve;
	function setEasingCurve(curve:QEasingCurve):Void;
}

@:pythonImport("PyQt5.QtCore", "CurveShape")
@:native("QTimeLine.CurveShape")
extern enum abstract QTimeLineCurveShape(Int) from Int to Int {
	var EaseInCurve;
	var EaseOutCurve;
	var EaseInOutCurve;
	var LinearCurve;
	var SineCurve;
	var CosineCurve;
}

@:pythonImport("PyQt5.QtCore", "Direction")
@:native("QTimeLine.Direction")
extern enum abstract QTimeLineDirection(Int) from Int to Int {
	var Forward;
	var Backward;
}

@:pythonImport("PyQt5.QtCore", "State")
@:native("QTimeLine.State")
extern enum abstract QTimeLineState(Int) from Int to Int {
	var NotRunning;
	var Paused;
	var Running;
}

