package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtCore", "QSocketNotifier")
@:native("QSocketNotifier")
extern class QSocketNotifier extends QObject {
	var activated:QSignal1<Int>;

	function new(socket:Int, ?v:QSocketNotifierType, ?parent:QObject);

	function socket():Int;
	function type():QSocketNotifierType;
	function isEnabled():Bool;
	function setEnabled(?v:Bool):Void;
	function event(?v:QEvent):Bool;
}

@:pythonImport("PyQt5.QtCore", "QSocketNotifier")
@:native("QSocketNotifier")
extern enum abstract QSocketNotifierType(Int) from Int to Int {
	var Read;
	var Write;
	var Exception;
}

