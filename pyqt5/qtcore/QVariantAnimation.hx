package pyqt5.qtcore;

import pyqt5.qtcore.QAbstractAnimation;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QPair;
import pyqt5.qtcore.QVector;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QEasingCurve;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;

typedef QVariantAnimationKeyValues = QVector<QPair<Float, QVariant>>;

@:pythonImport("PyQt5.QtCore", "QVariantAnimation")
@:native("QVariantAnimation")
extern class QVariantAnimation extends QAbstractAnimation {
	var valueChanged:QSignal1<QVariant>;

	function new(?parent:QObject);

	function startValue():QVariant;
	function setStartValue(value:QVariant):Void;
	function endValue():QVariant;
	function setEndValue(value:QVariant):Void;
	function keyValueAt(step:Float):QVariant;
	function setKeyValueAt(step:Float, value:QVariant):Void;
	function keyValues():QVariantAnimationKeyValues;
	function setKeyValues(values:QVariantAnimationKeyValues):Void;
	function currentValue():QVariant;
	function duration():Int;
	function setDuration(msecs:Int):Void;
	function easingCurve():QEasingCurve;
	function setEasingCurve(easing:QEasingCurve):Void;
	function event(event:QEvent):Bool;
	function updateCurrentTime(?v:Int):Void;
	function updateState(newState:QAbstractAnimationState, oldState:QAbstractAnimationState):Void;
	function updateCurrentValue(value:QVariant):Void;
	function interpolated(from:QVariant, to:QVariant, progress:Float):QVariant;
}

