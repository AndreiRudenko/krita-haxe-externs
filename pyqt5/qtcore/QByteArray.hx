package pyqt5.qtcore;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.QList;
import python.Bytes;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.Qt;

typedef QByteArrayBase64Options = QFlags<QByteArrayBase64Option>;

@:pythonImport("PyQt5.QtCore", "QByteArray")
@:native("QByteArray")
extern class QByteArray {
	@:overload(function(n:Int, ?base:Int):QByteArray {})
	static function number(n:Float, ?format:Int, ?precision:Int):QByteArray;
	@:overload(function(base64:QByteArray, options:QByteArrayBase64Options):QByteArray {})
	static function fromBase64(base64:QByteArray):QByteArray;
	static function fromRawData(?v:Int, size:Int):QByteArray;
	static function fromHex(hexEncoded:QByteArray):QByteArray;
	static function fromPercentEncoding(input:QByteArray, ?percent:Int):QByteArray;
	static function fromBase64Encoding(base64:QByteArray, ?options:QByteArrayBase64Options):FromBase64Result;

	@:overload(function():QByteArray {})
	@:overload(function(size:Int, c:Int):QByteArray {})
	function new(a:QByteArray);

	function resize(size:Int):Void;
	function fill(ch:Int, ?size:Int):QByteArray;
	function clear():Void;
	@:overload(function(str:QString, ?from:Int):Int {})
	function indexOf(ba:QByteArray, ?from:Int):Int;
	@:overload(function(str:QString, ?from:Int):Int {})
	function lastIndexOf(ba:QByteArray, ?from:Int):Int;
	@:overload(function():Int {})
	function count(a:QByteArray):Int;
	function left(len:Int):QByteArray;
	function right(len:Int):QByteArray;
	function mid(pos:Int, ?length:Int):QByteArray;
	function startsWith(a:QByteArray):Bool;
	function endsWith(a:QByteArray):Bool;
	function truncate(pos:Int):Void;
	function chop(n:Int):Void;
	function toLower():QByteArray;
	function toUpper():QByteArray;
	function trimmed():QByteArray;
	function simplified():QByteArray;
	function leftJustified(width:Int, ?fill:Int, ?truncate:Bool):QByteArray;
	function rightJustified(width:Int, ?fill:Int, ?truncate:Bool):QByteArray;
	@:overload(function(count:Int, c:Int):QByteArray {})
	function prepend(a:QByteArray):QByteArray;
	@:overload(function(s:QString):QByteArray {})
	@:overload(function(count:Int, c:Int):QByteArray {})
	function append(a:QByteArray):QByteArray;
	@:overload(function(i:Int, s:QString):QByteArray {})
	@:overload(function(i:Int, count:Int, c:Int):QByteArray {})
	function insert(i:Int, a:QByteArray):QByteArray;
	function remove(index:Int, len:Int):QByteArray;
	@:overload(function(before:QByteArray, after:QByteArray):QByteArray {})
	@:overload(function(before:QString, after:QByteArray):QByteArray {})
	function replace(index:Int, len:Int, s:QByteArray):QByteArray;
	function split(sep:Int):QList<QByteArray>;
	function toShort(?ok:Bool, ?base:Int):Int;
	function toUShort(?ok:Bool, ?base:Int):UInt;
	function toInt(?ok:Bool, ?base:Int):Int;
	function toUInt(?ok:Bool, ?base:Int):UInt;
	function toLong(?ok:Bool, ?base:Int):Int;
	function toULong(?ok:Bool, ?base:Int):UInt;
	function toLongLong(?ok:Bool, ?base:Int):Int;
	function toULongLong(?ok:Bool, ?base:Int):UInt;
	function toFloat(?ok:Bool):Float;
	function toDouble(?ok:Bool):Float;
	@:overload(function(options:QByteArrayBase64Options):QByteArray {})
	function toBase64():QByteArray;
	@:overload(function(n:Int, ?base:Int):QByteArray {})
	function setNum(n:Float, ?format:Int, ?precision:Int):QByteArray;
	function length():Int;
	function isNull():Bool;
	function size():Int;
	function at(i:Int):Int;
	function isEmpty():Bool;
	function data():Bytes;
	function capacity():Int;
	function reserve(size:Int):Void;
	function squeeze():Void;
	function push_back(a:QByteArray):Void;
	function push_front(a:QByteArray):Void;
	function contains(a:QByteArray):Bool;
	@:overload(function(separator:Int):QByteArray {})
	function toHex():QByteArray;
	function toPercentEncoding(?exclude:QByteArray, ?include:QByteArray, ?percent:Int):QByteArray;
	function repeated(times:Int):QByteArray;
	function swap(other:QByteArray):Void;
	function chopped(len:Int):QByteArray;
	function compare(a:QByteArray, ?cs:QtCaseSensitivity):Int;
	function isUpper():Bool;
	function isLower():Bool;
}

@:pythonImport("PyQt5.QtCore", "Base64Option")
@:native("QByteArray.Base64Option")
extern enum abstract QByteArrayBase64Option(Int) from Int to Int {
	var Base64Encoding;
	var Base64UrlEncoding;
	var KeepTrailingEquals;
	var OmitTrailingEquals;
	var IgnoreBase64DecodingErrors;
	var AbortOnBase64DecodingErrors;
}

@:pythonImport("PyQt5.QtCore", "Base64DecodingStatus")
@:native("QByteArray.Base64DecodingStatus")
extern enum abstract QByteArrayBase64DecodingStatus(Int) from Int to Int {
	var Ok;
	var IllegalInputLength;
	var IllegalCharacter;
	var IllegalPadding;
}

@:pythonImport("PyQt5.QtCore", "FromBase64Result")
@:native("FromBase64Result")
extern class FromBase64Result {
	function swap(other:FromBase64Result):Void;
}

