package pyqt5.qtcore;

import pyqt5.qtcore.QString;

@:pythonImport("PyQt5.QtCore", "QTemporaryDir")
@:native("QTemporaryDir")
extern class QTemporaryDir {
	@:overload(function():QTemporaryDir {})
	@:overload(function(templateName:QString):QTemporaryDir {})
	function new(?v:QTemporaryDir);

	function isValid():Bool;
	function autoRemove():Bool;
	function setAutoRemove(b:Bool):Void;
	function remove():Bool;
	function path():QString;
	function errorString():QString;
	function filePath(fileName:QString):QString;
}

