package pyqt5.qtcore;

import pyqt5.qtcore.QAnimationGroup;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QAbstractAnimation;

@:pythonImport("PyQt5.QtCore", "QParallelAnimationGroup")
@:native("QParallelAnimationGroup")
extern class QParallelAnimationGroup extends QAnimationGroup {
	function new(?parent:QObject);

	function duration():Int;
	function event(event:QEvent):Bool;
	function updateCurrentTime(currentTime:Int):Void;
	function updateState(newState:QAbstractAnimationState, oldState:QAbstractAnimationState):Void;
	function updateDirection(direction:QAbstractAnimationDirection):Void;
}

