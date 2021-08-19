package pyqt5.qtcore;

import pyqt5.qtcore.QAbstractState;
import pyqt5.qtcore.QState;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtCore", "QFinalState")
@:native("QFinalState")
extern class QFinalState extends QAbstractState {
	function new(?parent:QState);

	function onEntry(event:QEvent):Void;
	function onExit(event:QEvent):Void;
	function event(e:QEvent):Bool;
}

