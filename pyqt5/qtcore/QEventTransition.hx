package pyqt5.qtcore;

import pyqt5.qtcore.QAbstractTransition;
import pyqt5.qtcore.QState;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtCore", "QEventTransition")
@:native("QEventTransition")
extern class QEventTransition extends QAbstractTransition {
	@:overload(function(?sourceState:QState):QEventTransition {})
	function new(object:QObject, type:QEventType, ?sourceState:QState);

	function eventSource():QObject;
	function setEventSource(object:QObject):Void;
	function eventType():QEventType;
	function setEventType(type:QEventType):Void;
	function eventTest(event:QEvent):Bool;
	function onTransition(event:QEvent):Void;
	function event(e:QEvent):Bool;
}

