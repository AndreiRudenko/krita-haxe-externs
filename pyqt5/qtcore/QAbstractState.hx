package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QState;
import pyqt5.qtcore.QStateMachine;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtCore", "QAbstractState")
@:native("QAbstractState")
extern class QAbstractState extends QObject {
	var activeChanged:QSignal1<Bool>;
	var entered:QSignal0;
	var exited:QSignal0;

	function new(?parent:QState);

	function parentState():QState;
	function machine():QStateMachine;
	function active():Bool;
	function onEntry(event:QEvent):Void;
	function onExit(event:QEvent):Void;
	function event(e:QEvent):Bool;
}

