package pyqt5.qtcore;

import pyqt5.qtcore.QString;
import python.Bytes;
import pyqt5.qtcore.QLocale;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QDateTime;
import pyqt5.qtcore.QByteArray;

@:pythonImport("PyQt5.QtCore", "QResource")
@:native("QResource")
extern class QResource {
	@:overload(function(rccData:UInt, ?mapRoot:QString):Bool {})
	static function registerResource(rccFileName:QString, ?mapRoot:QString):Bool;
	@:overload(function(rccData:UInt, ?mapRoot:QString):Bool {})
	static function unregisterResource(rccFileName:QString, ?mapRoot:QString):Bool;

	@:overload(function(?fileName:QString):QResource {})
	function new(?v:QResource);

	function absoluteFilePath():QString;
	function data():Bytes;
	function fileName():QString;
	function isCompressed():Bool;
	function isValid():Bool;
	function locale():QLocale;
	function setFileName(file:QString):Void;
	function setLocale(locale:QLocale):Void;
	function size():Int;
	function children():QStringList;
	function isDir():Bool;
	function isFile():Bool;
	function lastModified():QDateTime;
	function compressionAlgorithm():QResourceCompression;
	function uncompressedSize():Int;
	function uncompressedData():QByteArray;
}

@:pythonImport("PyQt5.QtCore", "QResource")
@:native("QResource")
extern enum abstract QResourceCompression(Int) from Int to Int {
	var NoCompression;
	var ZlibCompression;
	var ZstdCompression;
}

