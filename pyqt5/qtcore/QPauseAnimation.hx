package pyqt5.qtcore;

import pyqt5.qtcore.QAbstractAnimation;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtCore", "QPauseAnimation")
@:native("QPauseAnimation")
extern class QPauseAnimation extends QAbstractAnimation {
	@:overload(function(?parent:QObject):QPauseAnimation {})
	function new(msecs:Int, ?parent:QObject);

	function duration():Int;
	function setDuration(msecs:Int):Void;
	function event(e:QEvent):Bool;
	function updateCurrentTime(?v:Int):Void;
}

