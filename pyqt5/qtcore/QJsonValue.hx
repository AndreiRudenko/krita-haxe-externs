package pyqt5.qtcore;

import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QJsonArray;
import pyqt5.qtcore.QJsonObject;
import pyqt5.qtcore.QString;

@:pythonImport("PyQt5.QtCore", "QJsonValue")
@:native("QJsonValue")
extern class QJsonValue {
	static function fromVariant(variant:QVariant):QJsonValue;

	@:overload(function(type:QJsonValueType):QJsonValue {})
	function new(other:QJsonValue);

	function toVariant():QVariant;
	function type():QJsonValueType;
	function isNull():Bool;
	function isBool():Bool;
	function isDouble():Bool;
	function isString():Bool;
	function isArray():Bool;
	function isObject():Bool;
	function isUndefined():Bool;
	function toBool(?defaultValue:Bool):Bool;
	function toInt(?defaultValue:Int):Int;
	function toDouble(?defaultValue:Float):Float;
	@:overload(function(defaultValue:QJsonArray):QJsonArray {})
	function toArray():QJsonArray;
	@:overload(function(defaultValue:QJsonObject):QJsonObject {})
	function toObject():QJsonObject;
	@:overload(function(defaultValue:QString):QString {})
	function toString():QString;
	function swap(other:QJsonValue):Void;
}

@:pythonImport("PyQt5.QtCore", "Type")
@:native("QJsonValue.Type")
extern enum abstract QJsonValueType(Int) from Int to Int {
	var Null;
	var Bool;
	var Double;
	var String;
	var Array;
	var Object;
	var Undefined;
}

