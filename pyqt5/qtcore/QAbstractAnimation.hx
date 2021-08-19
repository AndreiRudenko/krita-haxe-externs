package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QAnimationGroup;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtCore", "QAbstractAnimation")
@:native("QAbstractAnimation")
extern class QAbstractAnimation extends QObject {
	var finished:QSignal0;
	var stateChanged:QSignal2<QAbstractAnimationState, QAbstractAnimationState>;
	var currentLoopChanged:QSignal1<Int>;
	var directionChanged:QSignal1<QAbstractAnimationDirection>;

	function new(?parent:QObject);

	function state():QAbstractAnimationState;
	function group():QAnimationGroup;
	function direction():QAbstractAnimationDirection;
	function setDirection(direction:QAbstractAnimationDirection):Void;
	function currentTime():Int;
	function currentLoopTime():Int;
	function loopCount():Int;
	function setLoopCount(loopCount:Int):Void;
	function currentLoop():Int;
	function duration():Int;
	function totalDuration():Int;
	function start(?policy:QAbstractAnimationDeletionPolicy):Void;
	function pause():Void;
	function resume():Void;
	function setPaused(?v:Bool):Void;
	function stop():Void;
	function setCurrentTime(msecs:Int):Void;
	function event(event:QEvent):Bool;
	function updateCurrentTime(currentTime:Int):Void;
	function updateState(newState:QAbstractAnimationState, oldState:QAbstractAnimationState):Void;
	function updateDirection(direction:QAbstractAnimationDirection):Void;
}

@:pythonImport("PyQt5.QtCore", "Direction")
@:native("QAbstractAnimation.Direction")
extern enum abstract QAbstractAnimationDirection(Int) from Int to Int {
	var Forward;
	var Backward;
}

@:pythonImport("PyQt5.QtCore", "State")
@:native("QAbstractAnimation.State")
extern enum abstract QAbstractAnimationState(Int) from Int to Int {
	var Stopped;
	var Paused;
	var Running;
}

@:pythonImport("PyQt5.QtCore", "DeletionPolicy")
@:native("QAbstractAnimation.DeletionPolicy")
extern enum abstract QAbstractAnimationDeletionPolicy(Int) from Int to Int {
	var KeepWhenStopped;
	var DeleteWhenStopped;
}

