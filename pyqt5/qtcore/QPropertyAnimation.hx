package pyqt5.qtcore;

import pyqt5.qtcore.QVariantAnimation;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QAbstractAnimation;

@:pythonImport("PyQt5.QtCore", "QPropertyAnimation")
@:native("QPropertyAnimation")
extern class QPropertyAnimation extends QVariantAnimation {
	@:overload(function(?parent:QObject):QPropertyAnimation {})
	function new(target:QObject, propertyName:QByteArray, ?parent:QObject);

	function targetObject():QObject;
	function setTargetObject(target:QObject):Void;
	function propertyName():QByteArray;
	function setPropertyName(propertyName:QByteArray):Void;
	function event(event:QEvent):Bool;
	function updateCurrentValue(value:QVariant):Void;
	function updateState(newState:QAbstractAnimationState, oldState:QAbstractAnimationState):Void;
}

