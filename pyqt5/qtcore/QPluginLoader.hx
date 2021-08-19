package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QLibrary;

@:pythonImport("PyQt5.QtCore", "QPluginLoader")
@:native("QPluginLoader")
extern class QPluginLoader extends QObject {
	static function staticInstances():QObjectList;

	@:overload(function(?parent:QObject):QPluginLoader {})
	function new(fileName:QString, ?parent:QObject);

	function instance():QObject;
	function load():Bool;
	function unload():Bool;
	function isLoaded():Bool;
	function setFileName(fileName:QString):Void;
	function fileName():QString;
	function errorString():QString;
	function setLoadHints(loadHints:QLibraryLoadHints):Void;
	function loadHints():QLibraryLoadHints;
}

