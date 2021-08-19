package pyqt5.qtcore;

import pyqt5.qtcore.QAbstractState;
import pyqt5.qtcore.QState;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QAbstractTransition;

@:pythonImport("PyQt5.QtCore", "QHistoryState")
@:native("QHistoryState")
extern class QHistoryState extends QAbstractState {
	var defaultStateChanged:QSignal0;
	var historyTypeChanged:QSignal0;
	var defaultTransitionChanged:QSignal0;

	@:overload(function(?parent:QState):QHistoryState {})
	function new(type:QHistoryStateHistoryType, ?parent:QState);

	function defaultState():QAbstractState;
	function setDefaultState(state:QAbstractState):Void;
	function historyType():QHistoryStateHistoryType;
	function setHistoryType(type:QHistoryStateHistoryType):Void;
	function onEntry(event:QEvent):Void;
	function onExit(event:QEvent):Void;
	function event(e:QEvent):Bool;
	function defaultTransition():QAbstractTransition;
	function setDefaultTransition(transition:QAbstractTransition):Void;
}

@:pythonImport("PyQt5.QtCore", "HistoryType")
@:native("QHistoryState.HistoryType")
extern enum abstract QHistoryStateHistoryType(Int) from Int to Int {
	var ShallowHistory;
	var DeepHistory;
}

