package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QThread;
import pyqt5.qtcore.QEventLoop;
import pyqt5.qtcore.QSocketNotifier;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QAbstractNativeEventFilter;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtCore", "QAbstractEventDispatcher")
@:native("QAbstractEventDispatcher")
extern class QAbstractEventDispatcher extends QObject {
	static function instance(?thread:QThread):QAbstractEventDispatcher;

	var aboutToBlock:QSignal0;
	var awake:QSignal0;

	function new(?parent:QObject);

	function processEvents(flags:QEventLoopProcessEventsFlags):Bool;
	function hasPendingEvents():Bool;
	function registerSocketNotifier(notifier:QSocketNotifier):Void;
	function unregisterSocketNotifier(notifier:QSocketNotifier):Void;
	@:overload(function(timerId:Int, interval:Int, timerType:QtTimerType, object:QObject):Void {})
	function registerTimer(interval:Int, timerType:QtTimerType, object:QObject):Int;
	function unregisterTimer(timerId:Int):Bool;
	function unregisterTimers(object:QObject):Bool;
	function registeredTimers(object:QObject):QList<TimerInfo>;
	function wakeUp():Void;
	function interrupt():Void;
	function flush():Void;
	function startingUp():Void;
	function closingDown():Void;
	function remainingTime(timerId:Int):Int;
	function installNativeEventFilter(filterObj:QAbstractNativeEventFilter):Void;
	function removeNativeEventFilter(filterObj:QAbstractNativeEventFilter):Void;
	function filterNativeEvent(eventType:QByteArray, message:Void, result:Int):Bool;
}

@:pythonImport("PyQt5.QtCore", "TimerInfo")
@:native("TimerInfo")
extern class TimerInfo {
	function new(id:Int, i:Int, t:QtTimerType);
}

