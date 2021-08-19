package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QState;
import pyqt5.qtcore.QAbstractState;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QStateMachine;
import pyqt5.qtcore.QAbstractAnimation;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtCore", "QAbstractTransition")
@:native("QAbstractTransition")
extern class QAbstractTransition extends QObject {
	var triggered:QSignal0;
	var targetStateChanged:QSignal0;
	var targetStatesChanged:QSignal0;

	function new(?sourceState:QState);

	function sourceState():QState;
	function targetState():QAbstractState;
	function setTargetState(target:QAbstractState):Void;
	function targetStates():QList<QAbstractState>;
	function setTargetStates(targets:QList<QAbstractState>):Void;
	function machine():QStateMachine;
	function addAnimation(animation:QAbstractAnimation):Void;
	function removeAnimation(animation:QAbstractAnimation):Void;
	function animations():QList<QAbstractAnimation>;
	function eventTest(event:QEvent):Bool;
	function onTransition(event:QEvent):Void;
	function event(e:QEvent):Bool;
	function transitionType():QAbstractTransitionTransitionType;
	function setTransitionType(type:QAbstractTransitionTransitionType):Void;
}

@:pythonImport("PyQt5.QtCore", "TransitionType")
@:native("QAbstractTransition.TransitionType")
extern enum abstract QAbstractTransitionTransitionType(Int) from Int to Int {
	var ExternalTransition;
	var InternalTransition;
}

