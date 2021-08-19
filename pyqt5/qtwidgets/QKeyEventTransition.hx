package pyqt5.qtwidgets;

import pyqt5.qtcore.QEventTransition;
import pyqt5.qtcore.QState;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.Qt;

@:pythonImport("PyQt5.QtWidgets", "QKeyEventTransition")
@:native("QKeyEventTransition")
extern class QKeyEventTransition extends QEventTransition {
	@:overload(function(?sourceState:QState):QKeyEventTransition {})
	function new(object:QObject, type:QEventType, key:Int, ?sourceState:QState);

	function key():Int;
	function setKey(key:Int):Void;
	function modifierMask():QtKeyboardModifiers;
	function setModifierMask(modifiers:QtKeyboardModifiers):Void;
	function onTransition(event:QEvent):Void;
	function eventTest(event:QEvent):Bool;
}

