package pyqt5.qtcore;

import pyqt5.qtcore.QVector;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QLocale;
import pyqt5.qtcore.QDateTime;
import pyqt5.qtcore.QList;

typedef QTimeZoneOffsetDataList = QVector<OffsetData>;

@:pythonImport("PyQt5.QtCore", "QTimeZone")
@:native("QTimeZone")
extern class QTimeZone {
	static function systemTimeZoneId():QByteArray;
	static function isTimeZoneIdAvailable(ianaId:QByteArray):Bool;
	@:overload(function(country:QLocaleCountry):QList<QByteArray> {})
	@:overload(function(offsetSeconds:Int):QList<QByteArray> {})
	static function availableTimeZoneIds():QList<QByteArray>;
	static function ianaIdToWindowsId(ianaId:QByteArray):QByteArray;
	@:overload(function(windowsId:QByteArray, country:QLocaleCountry):QByteArray {})
	static function windowsIdToDefaultIanaId(windowsId:QByteArray):QByteArray;
	@:overload(function(windowsId:QByteArray, country:QLocaleCountry):QList<QByteArray> {})
	static function windowsIdToIanaIds(windowsId:QByteArray):QList<QByteArray>;
	static function systemTimeZone():QTimeZone;
	static function utc():QTimeZone;

	@:overload(function():QTimeZone {})
	@:overload(function(ianaId:QByteArray):QTimeZone {})
	@:overload(function(offsetSeconds:Int):QTimeZone {})
	@:overload(function(zoneId:QByteArray, offsetSeconds:Int, name:QString, abbreviation:QString, ?country:QLocaleCountry, ?comment:QString):QTimeZone {})
	function new(other:QTimeZone);

	function swap(other:QTimeZone):Void;
	function isValid():Bool;
	function id():QByteArray;
	function country():QLocaleCountry;
	function comment():QString;
	@:overload(function(timeType:QTimeZoneTimeType, ?nameType:QTimeZoneNameType, ?locale:QLocale):QString {})
	function displayName(atDateTime:QDateTime, ?nameType:QTimeZoneNameType, ?locale:QLocale):QString;
	function abbreviation(atDateTime:QDateTime):QString;
	function offsetFromUtc(atDateTime:QDateTime):Int;
	function standardTimeOffset(atDateTime:QDateTime):Int;
	function daylightTimeOffset(atDateTime:QDateTime):Int;
	function hasDaylightTime():Bool;
	function isDaylightTime(atDateTime:QDateTime):Bool;
	function offsetData(forDateTime:QDateTime):OffsetData;
	function hasTransitions():Bool;
	function nextTransition(afterDateTime:QDateTime):OffsetData;
	function previousTransition(beforeDateTime:QDateTime):OffsetData;
	function transitions(fromDateTime:QDateTime, toDateTime:QDateTime):QTimeZoneOffsetDataList;
}

@:pythonImport("PyQt5.QtCore", "QTimeZone")
@:native("QTimeZone")
extern enum abstract QTimeZoneTimeType(Int) from Int to Int {
	var StandardTime;
	var DaylightTime;
	var GenericTime;
}

@:pythonImport("PyQt5.QtCore", "QTimeZone")
@:native("QTimeZone")
extern enum abstract QTimeZoneNameType(Int) from Int to Int {
	var DefaultName;
	var LongName;
	var ShortName;
	var OffsetName;
}

@:pythonImport("PyQt5.QtCore", "OffsetData")
@:native("OffsetData")
extern class OffsetData {
}

