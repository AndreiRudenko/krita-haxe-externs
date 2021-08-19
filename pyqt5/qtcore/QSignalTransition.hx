package pyqt5.qtcore;

import pyqt5.qtcore.QAbstractTransition;
import pyqt5.qtcore.QState;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtCore", "QSignalTransition")
@:native("QSignalTransition")
extern class QSignalTransition extends QAbstractTransition {
	var senderObjectChanged:QSignal0;
	var signalChanged:QSignal0;

	@:overload(function(?sourceState:QState):QSignalTransition {})
	function new(signal:Dynamic, ?sourceState:QState);

	function senderObject():QObject;
	function setSenderObject(sender:QObject):Void;
	function signal():QByteArray;
	function setSignal(signal:QByteArray):Void;
	function eventTest(event:QEvent):Bool;
	function onTransition(event:QEvent):Void;
	function event(e:QEvent):Bool;
}

