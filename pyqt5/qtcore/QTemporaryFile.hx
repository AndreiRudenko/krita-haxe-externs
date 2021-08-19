package pyqt5.qtcore;

import pyqt5.qtcore.QFile;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QIODevice;

@:pythonImport("PyQt5.QtCore", "QTemporaryFile")
@:native("QTemporaryFile")
extern class QTemporaryFile extends QFile {
	@:overload(function(file:QFile):QTemporaryFile {})
	static function createNativeFile(fileName:QString):QTemporaryFile;

	@:overload(function():QTemporaryFile {})
	@:overload(function(templateName:QString):QTemporaryFile {})
	@:overload(function(parent:QObject):QTemporaryFile {})
	function new(templateName:QString, parent:QObject);

	function autoRemove():Bool;
	function setAutoRemove(b:Bool):Void;
	@:overload(function(flags:QIODeviceOpenMode):Bool {})
	function open():Bool;
	function fileName():QString;
	function fileTemplate():QString;
	function setFileTemplate(name:QString):Void;
	function rename(newName:QString):Bool;
}

