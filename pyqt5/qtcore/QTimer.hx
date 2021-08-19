package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtCore", "QTimer")
@:native("QTimer")
extern class QTimer extends QObject {
	@:overload(function(msec:Int, timerType:QtTimerType, slot:Dynamic):Void {})
	static function singleShot(msec:Int, slot:Dynamic):Void;

	var timeout:QSignal0;

	function new(?parent:QObject);

	function isActive():Bool;
	function timerId():Int;
	function setInterval(msec:Int):Void;
	function interval():Int;
	function isSingleShot():Bool;
	function setSingleShot(asingleShot:Bool):Void;
	@:overload(function():Void {})
	function start(msec:Int):Void;
	function stop():Void;
	function timerEvent(?v:QTimerEvent):Void;
	function setTimerType(atype:QtTimerType):Void;
	function timerType():QtTimerType;
	function remainingTime():Int;
}

