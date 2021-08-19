package pyqt5.qtcore;

import pyqt5.qtcore.QMutex;
import pyqt5.qtcore.QDeadlineTimer;
import pyqt5.qtcore.QReadWriteLock;

@:pythonImport("PyQt5.QtCore", "QWaitCondition")
@:native("QWaitCondition")
extern class QWaitCondition {
	@:overload(function():QWaitCondition {})
	function new(?v:QWaitCondition);

	@:overload(function(lockedMutex:QMutex, deadline:QDeadlineTimer):Bool {})
	@:overload(function(readWriteLock:QReadWriteLock, long:UInt):Bool {})
	@:overload(function(lockedReadWriteLock:QReadWriteLock, deadline:QDeadlineTimer):Bool {})
	function wait(mutex:QMutex, long:UInt):Bool;
	function wakeOne():Void;
	function wakeAll():Void;
}

