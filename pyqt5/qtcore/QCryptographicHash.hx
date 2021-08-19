package pyqt5.qtcore;

import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QIODevice;

@:pythonImport("PyQt5.QtCore", "QCryptographicHash")
@:native("QCryptographicHash")
extern class QCryptographicHash {
	static function hash(data:QByteArray, method:QCryptographicHashAlgorithm):QByteArray;
	static function hashLength(method:QCryptographicHashAlgorithm):Int;

	@:overload(function(method:QCryptographicHashAlgorithm):QCryptographicHash {})
	function new(?v:QCryptographicHash);

	function reset():Void;
	@:overload(function(data:QByteArray):Void {})
	@:overload(function(device:QIODevice):Bool {})
	function addData(data:Int, length:Int):Void;
	function result():QByteArray;
}

@:pythonImport("PyQt5.QtCore", "Algorithm")
@:native("QCryptographicHash.Algorithm")
extern enum abstract QCryptographicHashAlgorithm(Int) from Int to Int {
	var Md4;
	var Md5;
	var Sha1;
	var Sha224;
	var Sha256;
	var Sha384;
	var Sha512;
	var Sha3_224;
	var Sha3_256;
	var Sha3_384;
	var Sha3_512;
	var Keccak_224;
	var Keccak_256;
	var Keccak_384;
	var Keccak_512;
}

