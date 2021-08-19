package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractSpinBox;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QDateTime;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QSignal;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtgui.QValidator;
import pyqt5.qtwidgets.QCalendarWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QCalendar;

typedef QDateTimeEditSections = QFlags<QDateTimeEditSection>;

@:pythonImport("PyQt5.QtWidgets", "QDateTimeEdit")
@:native("QDateTimeEdit")
extern class QDateTimeEdit extends QAbstractSpinBox {
	var dateTimeChanged:QSignal1<QDateTime>;
	var timeChanged:QSignal1<QTime>;
	var dateChanged:QSignal1<QDate>;

	@:overload(function(?parent:QWidget):QDateTimeEdit {})
	@:overload(function(datetime:QDateTime, ?parent:QWidget):QDateTimeEdit {})
	@:overload(function(date:QDate, ?parent:QWidget):QDateTimeEdit {})
	function new(time:QTime, ?parent:QWidget);

	function dateTime():QDateTime;
	function date():QDate;
	function time():QTime;
	function minimumDate():QDate;
	function setMinimumDate(min:QDate):Void;
	function clearMinimumDate():Void;
	function maximumDate():QDate;
	function setMaximumDate(max:QDate):Void;
	function clearMaximumDate():Void;
	function setDateRange(min:QDate, max:QDate):Void;
	function minimumTime():QTime;
	function setMinimumTime(min:QTime):Void;
	function clearMinimumTime():Void;
	function maximumTime():QTime;
	function setMaximumTime(max:QTime):Void;
	function clearMaximumTime():Void;
	function setTimeRange(min:QTime, max:QTime):Void;
	function displayedSections():QDateTimeEditSections;
	function currentSection():QDateTimeEditSection;
	function setCurrentSection(section:QDateTimeEditSection):Void;
	function sectionText(s:QDateTimeEditSection):QString;
	function displayFormat():QString;
	function setDisplayFormat(format:QString):Void;
	function calendarPopup():Bool;
	function setCalendarPopup(enable:Bool):Void;
	function setSelectedSection(section:QDateTimeEditSection):Void;
	function sizeHint():QSize;
	function clear():Void;
	function stepBy(steps:Int):Void;
	function event(e:QEvent):Bool;
	function sectionAt(index:Int):QDateTimeEditSection;
	function currentSectionIndex():Int;
	function setCurrentSectionIndex(index:Int):Void;
	function sectionCount():Int;
	function setDateTime(dateTime:QDateTime):Void;
	function setDate(date:QDate):Void;
	function setTime(time:QTime):Void;
	function initStyleOption(option:QStyleOptionSpinBox):Void;
	function keyPressEvent(e:QKeyEvent):Void;
	function wheelEvent(e:QWheelEvent):Void;
	function focusInEvent(e:QFocusEvent):Void;
	function focusNextPrevChild(next:Bool):Bool;
	function mousePressEvent(event:QMouseEvent):Void;
	function paintEvent(event:QPaintEvent):Void;
	function validate(input:QString, pos:Int):QValidatorState;
	function fixup(input:QString):Void;
	function dateTimeFromText(text:QString):QDateTime;
	function textFromDateTime(dt:QDateTime):QString;
	function stepEnabled():QAbstractSpinBoxStepEnabled;
	function minimumDateTime():QDateTime;
	function clearMinimumDateTime():Void;
	function setMinimumDateTime(dt:QDateTime):Void;
	function maximumDateTime():QDateTime;
	function clearMaximumDateTime():Void;
	function setMaximumDateTime(dt:QDateTime):Void;
	function setDateTimeRange(min:QDateTime, max:QDateTime):Void;
	function calendarWidget():QCalendarWidget;
	function setCalendarWidget(calendarWidget:QCalendarWidget):Void;
	function timeSpec():QtTimeSpec;
	function setTimeSpec(spec:QtTimeSpec):Void;
	function calendar():QCalendar;
	function setCalendar(calendar:QCalendar):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QDateTimeEdit")
@:native("QDateTimeEdit")
extern enum abstract QDateTimeEditSection(Int) from Int to Int {
	var NoSection;
	var AmPmSection;
	var MSecSection;
	var SecondSection;
	var MinuteSection;
	var HourSection;
	var DaySection;
	var MonthSection;
	var YearSection;
	var TimeSections_Mask;
	var DateSections_Mask;
}

@:pythonImport("PyQt5.QtWidgets", "QTimeEdit")
@:native("QTimeEdit")
extern class QTimeEdit extends QDateTimeEdit {
	@:overload(function(?parent:QWidget):QTimeEdit {})
	function new(time:QTime, ?parent:QWidget);
}

@:pythonImport("PyQt5.QtWidgets", "QDateEdit")
@:native("QDateEdit")
extern class QDateEdit extends QDateTimeEdit {
	@:overload(function(?parent:QWidget):QDateEdit {})
	function new(date:QDate, ?parent:QWidget);
}

