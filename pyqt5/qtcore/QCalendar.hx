package pyqt5.qtcore;


@:pythonImport("PyQt5.QtCore", "QCalendar")
@:native("QCalendar")
extern class QCalendar {
}

@:pythonImport("PyQt5.QtCore", "YearMonthDay")
@:native("YearMonthDay")
extern class YearMonthDay {
	@:overload(function():YearMonthDay {})
	function new(year:Int, ?month:Int, ?day:Int);

	function isValid():Bool;
}

@:pythonImport("PyQt5.QtCore", "System")
@:native("QCalendar.System")
extern enum abstract QCalendarSystem(Int) from Int to Int {
	var Gregorian;
	var Julian;
	var Milankovic;
	var Jalali;
	var IslamicCivil;
}

