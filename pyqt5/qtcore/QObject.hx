package pyqt5.qtcore;

import pyqt5.qtcore.QList;

typedef QObjectList = QList<QObject>;

@:pythonImport("PyQt5.QtCore", "QObject")
@:native("QObject")
extern class QObject {
}

@:pythonImport("PyQt5.QtCore", "QSignalBlocker")
@:native("QSignalBlocker")
extern class QSignalBlocker {
	@:overload(function(o:QObject):QSignalBlocker {})
	function new(?v:QSignalBlocker);

	function reblock():Void;
	function unblock():Void;
}

