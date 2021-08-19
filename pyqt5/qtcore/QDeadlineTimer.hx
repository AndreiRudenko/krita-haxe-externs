package pyqt5.qtcore;

import pyqt5.qtcore.Qt;

@:pythonImport("PyQt5.QtCore", "QDeadlineTimer")
@:native("QDeadlineTimer")
extern class QDeadlineTimer {
	static function addNSecs(dt:QDeadlineTimer, nsecs:Int):QDeadlineTimer;
	static function current(?type:QtTimerType):QDeadlineTimer;

	@:overload(function(?type:QtTimerType):QDeadlineTimer {})
	@:overload(function(?v:QDeadlineTimerForeverConstant, ?type:QtTimerType):QDeadlineTimer {})
	function new(msecs:Int, ?type:QtTimerType);

	function swap(other:QDeadlineTimer):Void;
	function isForever():Bool;
	function hasExpired():Bool;
	function timerType():QtTimerType;
	function setTimerType(type:QtTimerType):Void;
	function remainingTime():Int;
	function remainingTimeNSecs():Int;
	function setRemainingTime(msecs:Int, ?type:QtTimerType):Void;
	function setPreciseRemainingTime(secs:Int, ?nsecs:Int, ?type:QtTimerType):Void;
	function deadline():Int;
	function deadlineNSecs():Int;
	function setDeadline(msecs:Int, ?type:QtTimerType):Void;
	function setPreciseDeadline(secs:Int, ?nsecs:Int, ?type:QtTimerType):Void;
}

@:pythonImport("PyQt5.QtCore", "QDeadlineTimer")
@:native("QDeadlineTimer")
extern enum abstract QDeadlineTimerForeverConstant(Int) from Int to Int {
	var Forever;
}

