package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QDeadlineTimer;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QAbstractEventDispatcher;

@:pythonImport("PyQt5.QtCore", "QThread")
@:native("QThread")
extern class QThread extends QObject {
	static function currentThread():QThread;
	static function currentThreadId():Int;
	static function idealThreadCount():Int;
	static function yieldCurrentThread():Void;
	static function setTerminationEnabled(?enabled:Bool):Void;
	static function sleep(long:UInt):Void;
	static function msleep(long:UInt):Void;
	static function usleep(long:UInt):Void;

	var started:QSignal0;
	var finished:QSignal0;

	function new(?parent:QObject);

	function isFinished():Bool;
	function isRunning():Bool;
	function setPriority(priority:QThreadPriority):Void;
	function priority():QThreadPriority;
	function setStackSize(stackSize:UInt):Void;
	function stackSize():UInt;
	function exit(?returnCode:Int):Void;
	function start(?priority:QThreadPriority):Void;
	function terminate():Void;
	function quit():Void;
	@:overload(function(deadline:QDeadlineTimer):Bool {})
	function wait(long:UInt):Bool;
	function run():Void;
	function exec():Int;
	function event(event:QEvent):Bool;
	function eventDispatcher():QAbstractEventDispatcher;
	function setEventDispatcher(eventDispatcher:QAbstractEventDispatcher):Void;
	function requestInterruption():Void;
	function isInterruptionRequested():Bool;
	function loopLevel():Int;
}

@:pythonImport("PyQt5.QtCore", "Priority")
@:native("QThread.Priority")
extern enum abstract QThreadPriority(Int) from Int to Int {
	var IdlePriority;
	var LowestPriority;
	var LowPriority;
	var NormalPriority;
	var HighPriority;
	var HighestPriority;
	var TimeCriticalPriority;
	var InheritPriority;
}

