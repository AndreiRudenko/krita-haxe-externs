package pyqt5.qtcore;

import pyqt5.qtcore.QState;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QAbstractState;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QAbstractAnimation;
import pyqt5.qtcore.QSet;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtCore", "QStateMachine")
@:native("QStateMachine")
extern class QStateMachine extends QState {
	var started:QSignal0;
	var stopped:QSignal0;
	var runningChanged:QSignal1<Bool>;

	@:overload(function(?parent:QObject):QStateMachine {})
	function new(childMode:QStateChildMode, ?parent:QObject);

	function addState(state:QAbstractState):Void;
	function removeState(state:QAbstractState):Void;
	function error():QStateMachineError;
	function errorString():QString;
	function clearError():Void;
	function isRunning():Bool;
	function isAnimated():Bool;
	function setAnimated(enabled:Bool):Void;
	function addDefaultAnimation(animation:QAbstractAnimation):Void;
	function defaultAnimations():QList<QAbstractAnimation>;
	function removeDefaultAnimation(animation:QAbstractAnimation):Void;
	function globalRestorePolicy():QStateRestorePolicy;
	function setGlobalRestorePolicy(restorePolicy:QStateRestorePolicy):Void;
	function postEvent(event:QEvent, ?priority:QStateMachineEventPriority):Void;
	function postDelayedEvent(event:QEvent, delay:Int):Int;
	function cancelDelayedEvent(id:Int):Bool;
	function configuration():QSet<QAbstractState>;
	function eventFilter(watched:QObject, event:QEvent):Bool;
	function start():Void;
	function stop():Void;
	function setRunning(running:Bool):Void;
	function onEntry(event:QEvent):Void;
	function onExit(event:QEvent):Void;
	function event(e:QEvent):Bool;
}

@:pythonImport("PyQt5.QtCore", "SignalEvent")
@:native("SignalEvent")
extern class SignalEvent extends QEvent {
	function sender():QObject;
	function signalIndex():Int;
	function arguments():QList<QVariant>;
}

@:pythonImport("PyQt5.QtCore", "WrappedEvent")
@:native("WrappedEvent")
extern class WrappedEvent extends QEvent {
	function object():QObject;
	function event():QEvent;
}

@:pythonImport("PyQt5.QtCore", "EventPriority")
@:native("QStateMachine.EventPriority")
extern enum abstract QStateMachineEventPriority(Int) from Int to Int {
	var NormalPriority;
	var HighPriority;
}

@:pythonImport("PyQt5.QtCore", "Error")
@:native("QStateMachine.Error")
extern enum abstract QStateMachineError(Int) from Int to Int {
	var NoError;
	var NoInitialStateError;
	var NoDefaultStateInHistoryStateError;
	var NoCommonAncestorForTransitionError;
	var StateMachineChildModeSetToParallelError;
}

