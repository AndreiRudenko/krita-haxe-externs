package pyqt5.qtcore;

import pyqt5.qtcore.QFileDevice;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QIODevice;

@:pythonImport("PyQt5.QtCore", "QSaveFile")
@:native("QSaveFile")
extern class QSaveFile extends QFileDevice {
	@:overload(function(name:QString):QSaveFile {})
	@:overload(function(?parent:QObject):QSaveFile {})
	function new(name:QString, parent:QObject);

	function fileName():QString;
	function setFileName(name:QString):Void;
	function open(flags:QIODeviceOpenMode):Bool;
	function commit():Bool;
	function cancelWriting():Void;
	function setDirectWriteFallback(enabled:Bool):Void;
	function directWriteFallback():Bool;
	function writeData(data:Int, len:Int):Int;
}

