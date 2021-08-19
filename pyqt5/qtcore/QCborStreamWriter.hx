package pyqt5.qtcore;

import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QCborError;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QCborStreamWriter;
import python.Tuple;

@:pythonImport("PyQt5.QtCore", "QCborStreamWriter")
@:native("QCborStreamWriter")
extern class QCborStreamWriter {
	@:overload(function(device:QIODevice):QCborStreamWriter {})
	@:overload(function(data:QByteArray):QCborStreamWriter {})
	function new(?v:QCborStreamWriter);

	function setDevice(device:QIODevice):Void;
	function device():QIODevice;
	@:overload(function(tag:QCborErrorQCborKnownTags):Void {})
	@:overload(function(str:QString):Void {})
	@:overload(function(ba:QByteArray):Void {})
	@:overload(function(b:Bool):Void {})
	@:overload(function(d:Float):Void {})
	@:overload(function(?v:Int):Void {})
	function append(st:QCborErrorQCborSimpleType):Void;
	function appendNull():Void;
	function appendUndefined():Void;
	@:overload(function(count:UInt):Void {})
	function startArray():Void;
	function endArray():Bool;
	@:overload(function(count:UInt):Void {})
	function startMap():Void;
	function endMap():Bool;
}

@:pythonImport("PyQt5.QtCore", "QCborStreamReader")
@:native("QCborStreamReader")
extern class QCborStreamReader {
	@:overload(function():QCborStreamReader {})
	@:overload(function(data:QByteArray):QCborStreamReader {})
	@:overload(function(device:QIODevice):QCborStreamReader {})
	function new(?v:QCborStreamReader);

	function setDevice(device:QIODevice):Void;
	function device():QIODevice;
	function addData(data:QByteArray):Void;
	function reparse():Void;
	function clear():Void;
	function reset():Void;
	function lastError():QCborError;
	function currentOffset():Int;
	function isValid():Bool;
	function containerDepth():Int;
	function parentContainerType():QCborStreamReaderType;
	function hasNext():Bool;
	function next(?maxRecursion:Int):Bool;
	function type():QCborStreamReaderType;
	function isUnsignedInteger():Bool;
	function isNegativeInteger():Bool;
	function isInteger():Bool;
	function isByteArray():Bool;
	function isString():Bool;
	function isArray():Bool;
	function isMap():Bool;
	function isTag():Bool;
	@:overload(function(st:QCborErrorQCborSimpleType):Bool {})
	function isSimpleType():Bool;
	function isFloat16():Bool;
	function isFloat():Bool;
	function isDouble():Bool;
	function isInvalid():Bool;
	function isFalse():Bool;
	function isTrue():Bool;
	function isBool():Bool;
	function isNull():Bool;
	function isUndefined():Bool;
	function isLengthKnown():Bool;
	function length():UInt;
	function isContainer():Bool;
	function enterContainer():Bool;
	function leaveContainer():Bool;
	function readString():Tuple2<String, QCborStreamReaderStringResultCode>;
	function readByteArray():Tuple2<QByteArray, QCborStreamReaderStringResultCode>;
	function toBool():Bool;
	function toUnsignedInteger():UInt;
	function toSimpleType():QCborErrorQCborSimpleType;
	function toDouble():Float;
	function toInteger():Int;
}

@:pythonImport("PyQt5.QtCore", "QCborStreamReader")
@:native("QCborStreamReader")
extern enum abstract QCborStreamReaderType(Int) from Int to Int {
	var UnsignedInteger;
	var NegativeInteger;
	var ByteString;
	var ByteArray;
	var TextString;
	var String;
	var Array;
	var Map;
	var Tag;
	var SimpleType;
	var HalfFloat;
	var Float16;
	var Float;
	var Double;
	var Invalid;
}

@:pythonImport("PyQt5.QtCore", "QCborStreamReader")
@:native("QCborStreamReader")
extern enum abstract QCborStreamReaderStringResultCode(Int) from Int to Int {
	var EndOfString;
	var Ok;
	var Error;
}

