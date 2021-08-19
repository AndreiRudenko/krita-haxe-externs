package pyqt5.qtcore;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.QJsonObject;
import pyqt5.qtcore.QJsonArray;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QVariant;

@:pythonImport("PyQt5.QtCore", "QJsonParseError")
@:native("QJsonParseError")
extern class QJsonParseError {
	function errorString():QString;
}

@:pythonImport("PyQt5.QtCore", "ParseError")
@:native("QJsonParseError.ParseError")
extern enum abstract QJsonParseErrorParseError(Int) from Int to Int {
	var NoError;
	var UnterminatedObject;
	var MissingNameSeparator;
	var UnterminatedArray;
	var MissingValueSeparator;
	var IllegalValue;
	var TerminationByNumber;
	var IllegalNumber;
	var IllegalEscapeSequence;
	var IllegalUTF8String;
	var UnterminatedString;
	var MissingObject;
	var DeepNesting;
	var DocumentTooLarge;
	var GarbageAtEnd;
}

@:pythonImport("PyQt5.QtCore", "QJsonDocument")
@:native("QJsonDocument")
extern class QJsonDocument {
	static function fromRawData(data:Int, size:Int, ?validation:QJsonDocumentDataValidation):QJsonDocument;
	static function fromBinaryData(data:QByteArray, ?validation:QJsonDocumentDataValidation):QJsonDocument;
	static function fromVariant(variant:QVariant):QJsonDocument;
	static function fromJson(json:QByteArray, ?error:QJsonParseError):QJsonDocument;

	@:overload(function():QJsonDocument {})
	@:overload(function(object:QJsonObject):QJsonDocument {})
	@:overload(function(array:QJsonArray):QJsonDocument {})
	function new(other:QJsonDocument);

	function rawData(size:Int):Int;
	function toBinaryData():QByteArray;
	function toVariant():QVariant;
	@:overload(function(format:QJsonDocumentJsonFormat):QByteArray {})
	function toJson():QByteArray;
	function isEmpty():Bool;
	function isArray():Bool;
	function isObject():Bool;
	function object():QJsonObject;
	function array():QJsonArray;
	function setObject(object:QJsonObject):Void;
	function setArray(array:QJsonArray):Void;
	function isNull():Bool;
	function swap(other:QJsonDocument):Void;
}

@:pythonImport("PyQt5.QtCore", "DataValidation")
@:native("QJsonDocument.DataValidation")
extern enum abstract QJsonDocumentDataValidation(Int) from Int to Int {
	var Validate;
	var BypassValidation;
}

@:pythonImport("PyQt5.QtCore", "JsonFormat")
@:native("QJsonDocument.JsonFormat")
extern enum abstract QJsonDocumentJsonFormat(Int) from Int to Int {
	var Indented;
	var Compact;
}

