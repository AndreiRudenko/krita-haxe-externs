package pyqt5.qtcore;

import pyqt5.qtcore.QCryptographicHash;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QIODevice;

@:pythonImport("PyQt5.QtCore", "QMessageAuthenticationCode")
@:native("QMessageAuthenticationCode")
extern class QMessageAuthenticationCode {
	static function hash(message:QByteArray, key:QByteArray, method:QCryptographicHashAlgorithm):QByteArray;

	@:overload(function(method:QCryptographicHashAlgorithm, ?key:QByteArray):QMessageAuthenticationCode {})
	function new(?v:QMessageAuthenticationCode);

	function reset():Void;
	function setKey(key:QByteArray):Void;
	@:overload(function(data:QByteArray):Void {})
	@:overload(function(device:QIODevice):Bool {})
	function addData(data:Int, length:Int):Void;
	function result():QByteArray;
}

