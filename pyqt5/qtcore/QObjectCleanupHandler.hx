package pyqt5.qtcore;

import pyqt5.qtcore.QObject;

@:pythonImport("PyQt5.QtCore", "QObjectCleanupHandler")
@:native("QObjectCleanupHandler")
extern class QObjectCleanupHandler extends QObject {
	function new();

	function add(object:QObject):QObject;
	function remove(object:QObject):Void;
	function isEmpty():Bool;
	function clear():Void;
}

