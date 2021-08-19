package pyqt5.qtcore;

import pyqt5.qtcore.QAbstractState;
import pyqt5.qtcore.QAbstractTransition;
import pyqt5.qtcore.QSignalTransition;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtCore", "QState")
@:native("QState")
extern class QState extends QAbstractState {
	var finished:QSignal0;
	var propertiesAssigned:QSignal0;
	var childModeChanged:QSignal0;
	var initialStateChanged:QSignal0;
	var errorStateChanged:QSignal0;

	@:overload(function(?parent:QState):QState {})
	function new(childMode:QStateChildMode, ?parent:QState);

	function errorState():QAbstractState;
	function setErrorState(state:QAbstractState):Void;
	@:overload(function(signal:Dynamic, target:QAbstractState):QSignalTransition {})
	@:overload(function(target:QAbstractState):QAbstractTransition {})
	function addTransition(transition:QAbstractTransition):Void;
	function removeTransition(transition:QAbstractTransition):Void;
	function transitions():QList<QAbstractTransition>;
	function initialState():QAbstractState;
	function setInitialState(state:QAbstractState):Void;
	function childMode():QStateChildMode;
	function setChildMode(mode:QStateChildMode):Void;
	function assignProperty(object:QObject, name:Int, value:QVariant):Void;
	function onEntry(event:QEvent):Void;
	function onExit(event:QEvent):Void;
	function event(e:QEvent):Bool;
}

@:pythonImport("PyQt5.QtCore", "ChildMode")
@:native("QState.ChildMode")
extern enum abstract QStateChildMode(Int) from Int to Int {
	var ExclusiveStates;
	var ParallelStates;
}

@:pythonImport("PyQt5.QtCore", "RestorePolicy")
@:native("QState.RestorePolicy")
extern enum abstract QStateRestorePolicy(Int) from Int to Int {
	var DontRestoreProperties;
	var RestoreProperties;
}

