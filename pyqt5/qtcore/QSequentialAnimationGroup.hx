package pyqt5.qtcore;

import pyqt5.qtcore.QAnimationGroup;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QPauseAnimation;
import pyqt5.qtcore.QAbstractAnimation;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtCore", "QSequentialAnimationGroup")
@:native("QSequentialAnimationGroup")
extern class QSequentialAnimationGroup extends QAnimationGroup {
	var currentAnimationChanged:QSignal1<QAbstractAnimation>;

	function new(?parent:QObject);

	function addPause(msecs:Int):QPauseAnimation;
	function insertPause(index:Int, msecs:Int):QPauseAnimation;
	function currentAnimation():QAbstractAnimation;
	function duration():Int;
	function event(event:QEvent):Bool;
	function updateCurrentTime(?v:Int):Void;
	function updateState(newState:QAbstractAnimationState, oldState:QAbstractAnimationState):Void;
	function updateDirection(direction:QAbstractAnimationDirection):Void;
}

