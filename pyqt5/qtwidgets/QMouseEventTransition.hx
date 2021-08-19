package pyqt5.qtwidgets;

import pyqt5.qtcore.QEventTransition;
import pyqt5.qtcore.QState;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QPainterPath;

@:pythonImport("PyQt5.QtWidgets", "QMouseEventTransition")
@:native("QMouseEventTransition")
extern class QMouseEventTransition extends QEventTransition {
	@:overload(function(?sourceState:QState):QMouseEventTransition {})
	function new(object:QObject, type:QEventType, button:QtMouseButton, ?sourceState:QState);

	function button():QtMouseButton;
	function setButton(button:QtMouseButton):Void;
	function modifierMask():QtKeyboardModifiers;
	function setModifierMask(modifiers:QtKeyboardModifiers):Void;
	function hitTestPath():QPainterPath;
	function setHitTestPath(path:QPainterPath):Void;
	function onTransition(event:QEvent):Void;
	function eventTest(event:QEvent):Bool;
}

