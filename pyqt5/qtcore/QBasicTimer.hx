package pyqt5.qtcore;

import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QObject;

@:pythonImport("PyQt5.QtCore", "QBasicTimer")
@:native("QBasicTimer")
extern class QBasicTimer {
	@:overload(function():QBasicTimer {})
	function new(?v:QBasicTimer);

	function isActive():Bool;
	function timerId():Int;
	@:overload(function(msec:Int, obj:QObject):Void {})
	function start(msec:Int, timerType:QtTimerType, obj:QObject):Void;
	function stop():Void;
	function swap(other:QBasicTimer):Void;
}

