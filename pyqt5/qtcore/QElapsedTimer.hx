package pyqt5.qtcore;


@:pythonImport("PyQt5.QtCore", "QElapsedTimer")
@:native("QElapsedTimer")
extern class QElapsedTimer {
	static function clockType():QElapsedTimerClockType;
	static function isMonotonic():Bool;

	function new();

	function start():Void;
	function restart():Int;
	function invalidate():Void;
	function isValid():Bool;
	function elapsed():Int;
	function hasExpired(timeout:Int):Bool;
	function msecsSinceReference():Int;
	function msecsTo(other:QElapsedTimer):Int;
	function secsTo(other:QElapsedTimer):Int;
	function nsecsElapsed():Int;
}

@:pythonImport("PyQt5.QtCore", "ClockType")
@:native("QElapsedTimer.ClockType")
extern enum abstract QElapsedTimerClockType(Int) from Int to Int {
	var SystemTime;
	var MonotonicClock;
	var TickCounter;
	var MachAbsoluteTime;
	var PerformanceCounter;
}

