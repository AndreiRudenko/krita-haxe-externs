package pyqt5.qtcore;

import pyqt5.qtcore.QCalendar;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QTimeZone;

@:pythonImport("PyQt5.QtCore", "QDate")
@:native("QDate")
extern class QDate {
	static function shortMonthName(month:Int, ?type:QDateMonthNameType):QString;
	static function shortDayName(weekday:Int, ?type:QDateMonthNameType):QString;
	static function longMonthName(month:Int, ?type:QDateMonthNameType):QString;
	static function longDayName(weekday:Int, ?type:QDateMonthNameType):QString;
	static function currentDate():QDate;
	@:overload(function(s:QString, format:QString):QDate {})
	@:overload(function(s:QString, format:QString, cal:QCalendar):QDate {})
	static function fromString(string:QString, ?format:QtDateFormat):QDate;
	static function isValid(y:Int, m:Int, d:Int):Bool;
	static function isLeapYear(year:Int):Bool;
	static function fromJulianDay(jd:Int):QDate;

	@:overload(function():QDate {})
	@:overload(function(y:Int, m:Int, d:Int):QDate {})
	function new(y:Int, m:Int, d:Int, cal:QCalendar);

	function toPyDate():Dynamic;
	function isNull():Bool;
	function isValid():Bool;
	@:overload(function(cal:QCalendar):Int {})
	function year():Int;
	@:overload(function(cal:QCalendar):Int {})
	function month():Int;
	@:overload(function(cal:QCalendar):Int {})
	function day():Int;
	@:overload(function(cal:QCalendar):Int {})
	function dayOfWeek():Int;
	@:overload(function(cal:QCalendar):Int {})
	function dayOfYear():Int;
	@:overload(function(cal:QCalendar):Int {})
	function daysInMonth():Int;
	@:overload(function(cal:QCalendar):Int {})
	function daysInYear():Int;
	function weekNumber(?yearNumber:Int):Int;
	@:overload(function(f:QtDateFormat, cal:QCalendar):QString {})
	@:overload(function(format:QString):QString {})
	@:overload(function(format:QString, cal:QCalendar):QString {})
	function toString(?format:QtDateFormat):QString;
	function addDays(days:Int):QDate;
	@:overload(function(months:Int, cal:QCalendar):QDate {})
	function addMonths(months:Int):QDate;
	@:overload(function(years:Int, cal:QCalendar):QDate {})
	function addYears(years:Int):QDate;
	function daysTo(?v:QDate):Int;
	function toJulianDay():Int;
	@:overload(function(year:Int, month:Int, day:Int, cal:QCalendar):Bool {})
	function setDate(year:Int, month:Int, date:Int):Bool;
	@:overload(function(year:Int, month:Int, day:Int):Void {})
	function getDate(year:Int, month:Int, day:Int):Void;
	@:overload(function(zone:QTimeZone):QDateTime {})
	function startOfDay(?spec:QtTimeSpec, ?offsetSeconds:Int):QDateTime;
	@:overload(function(zone:QTimeZone):QDateTime {})
	function endOfDay(?spec:QtTimeSpec, ?offsetSeconds:Int):QDateTime;
}

@:pythonImport("PyQt5.QtCore", "QDate")
@:native("QDate")
extern enum abstract QDateMonthNameType(Int) from Int to Int {
	var DateFormat;
	var StandaloneFormat;
}

@:pythonImport("PyQt5.QtCore", "QTime")
@:native("QTime")
extern class QTime {
	static function currentTime():QTime;
	@:overload(function(s:QString, format:QString):QTime {})
	static function fromString(string:QString, ?format:QtDateFormat):QTime;
	static function isValid(h:Int, m:Int, s:Int, ?msec:Int):Bool;
	static function fromMSecsSinceStartOfDay(msecs:Int):QTime;

	@:overload(function():QTime {})
	function new(h:Int, m:Int, ?second:Int, ?msec:Int);

	function toPyTime():Dynamic;
	function isNull():Bool;
	function isValid():Bool;
	function hour():Int;
	function minute():Int;
	function second():Int;
	function msec():Int;
	@:overload(function(format:QString):QString {})
	function toString(?format:QtDateFormat):QString;
	function setHMS(h:Int, m:Int, s:Int, ?msec:Int):Bool;
	function addSecs(secs:Int):QTime;
	function secsTo(?v:QTime):Int;
	function addMSecs(ms:Int):QTime;
	function msecsTo(?v:QTime):Int;
	function start():Void;
	function restart():Int;
	function elapsed():Int;
	function msecsSinceStartOfDay():Int;
}

@:pythonImport("PyQt5.QtCore", "QDateTime")
@:native("QDateTime")
extern class QDateTime {
	static function currentDateTime():QDateTime;
	@:overload(function(s:QString, format:QString):QDateTime {})
	@:overload(function(s:QString, format:QString, cal:QCalendar):QDateTime {})
	static function fromString(string:QString, ?format:QtDateFormat):QDateTime;
	@:overload(function(secsSince1Jan1970UTC:UInt, spec:QtTimeSpec, ?offsetSeconds:Int):QDateTime {})
	@:overload(function(secsSince1Jan1970UTC:UInt, timeZone:QTimeZone):QDateTime {})
	static function fromTime_t(secsSince1Jan1970UTC:UInt):QDateTime;
	static function currentDateTimeUtc():QDateTime;
	@:overload(function(msecs:Int, spec:QtTimeSpec, ?offsetSeconds:Int):QDateTime {})
	@:overload(function(msecs:Int, timeZone:QTimeZone):QDateTime {})
	static function fromMSecsSinceEpoch(msecs:Int):QDateTime;
	static function currentMSecsSinceEpoch():Int;
	@:overload(function(secs:Int, timeZone:QTimeZone):QDateTime {})
	static function fromSecsSinceEpoch(secs:Int, ?spec:QtTimeSpec, ?offsetSeconds:Int):QDateTime;
	static function currentSecsSinceEpoch():Int;

	@:overload(function():QDateTime {})
	@:overload(function(other:QDateTime):QDateTime {})
	@:overload(function(?v:QDate):QDateTime {})
	@:overload(function(date:QDate, time:QTime, ?timeSpec:QtTimeSpec):QDateTime {})
	@:overload(function(year:Int, month:Int, day:Int, hour:Int, minute:Int, ?second:Int, ?msec:Int, ?timeSpec:Int):QDateTime {})
	@:overload(function(date:QDate, time:QTime, spec:QtTimeSpec, offsetSeconds:Int):QDateTime {})
	function new(date:QDate, time:QTime, timeZone:QTimeZone);

	function toPyDateTime():Dynamic;
	function isNull():Bool;
	function isValid():Bool;
	function date():QDate;
	function time():QTime;
	function timeSpec():QtTimeSpec;
	function toTime_t():UInt;
	function setDate(date:QDate):Void;
	function setTime(time:QTime):Void;
	function setTimeSpec(spec:QtTimeSpec):Void;
	function setTime_t(secsSince1Jan1970UTC:UInt):Void;
	@:overload(function(format:QString):QString {})
	@:overload(function(format:QString, cal:QCalendar):QString {})
	function toString(?format:QtDateFormat):QString;
	function addDays(days:Int):QDateTime;
	function addMonths(months:Int):QDateTime;
	function addYears(years:Int):QDateTime;
	function addSecs(secs:Int):QDateTime;
	function addMSecs(msecs:Int):QDateTime;
	function toTimeSpec(spec:QtTimeSpec):QDateTime;
	function toLocalTime():QDateTime;
	function toUTC():QDateTime;
	function daysTo(?v:QDateTime):Int;
	function secsTo(?v:QDateTime):Int;
	function toMSecsSinceEpoch():Int;
	function setMSecsSinceEpoch(msecs:Int):Void;
	function msecsTo(?v:QDateTime):Int;
	function swap(other:QDateTime):Void;
	function offsetFromUtc():Int;
	function timeZone():QTimeZone;
	function timeZoneAbbreviation():QString;
	function isDaylightTime():Bool;
	function setOffsetFromUtc(offsetSeconds:Int):Void;
	function setTimeZone(toZone:QTimeZone):Void;
	function toOffsetFromUtc(offsetSeconds:Int):QDateTime;
	function toTimeZone(toZone:QTimeZone):QDateTime;
	function toSecsSinceEpoch():Int;
	function setSecsSinceEpoch(secs:Int):Void;
}

@:pythonImport("PyQt5.QtCore", "QDateTime")
@:native("QDateTime")
extern enum abstract QDateTimeYearRange(Int) from Int to Int {
	var First;
	var Last;
}

