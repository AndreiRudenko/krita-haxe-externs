package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QDateTime;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QTextFormat;
import pyqt5.qtcore.QMap;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QCalendar;

@:pythonImport("PyQt5.QtWidgets", "QCalendarWidget")
@:native("QCalendarWidget")
extern class QCalendarWidget extends QWidget {
	var activated:QSignal1<QDate>;
	var clicked:QSignal1<QDate>;
	var currentPageChanged:QSignal2<Int, Int>;
	var selectionChanged:QSignal0;

	function new(?parent:QWidget);

	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function selectedDate():QDate;
	function yearShown():Int;
	function monthShown():Int;
	function minimumDate():QDate;
	function setMinimumDate(date:QDate):Void;
	function maximumDate():QDate;
	function setMaximumDate(date:QDate):Void;
	function firstDayOfWeek():QtDayOfWeek;
	function setFirstDayOfWeek(dayOfWeek:QtDayOfWeek):Void;
	function isGridVisible():Bool;
	function setGridVisible(show:Bool):Void;
	function selectionMode():QCalendarWidgetSelectionMode;
	function setSelectionMode(mode:QCalendarWidgetSelectionMode):Void;
	function horizontalHeaderFormat():QCalendarWidgetHorizontalHeaderFormat;
	function setHorizontalHeaderFormat(format:QCalendarWidgetHorizontalHeaderFormat):Void;
	function verticalHeaderFormat():QCalendarWidgetVerticalHeaderFormat;
	function setVerticalHeaderFormat(format:QCalendarWidgetVerticalHeaderFormat):Void;
	function headerTextFormat():QTextCharFormat;
	function setHeaderTextFormat(format:QTextCharFormat):Void;
	function weekdayTextFormat(dayOfWeek:QtDayOfWeek):QTextCharFormat;
	function setWeekdayTextFormat(dayOfWeek:QtDayOfWeek, format:QTextCharFormat):Void;
	@:overload(function(date:QDate):QTextCharFormat {})
	function dateTextFormat():QMap<QDate, QTextCharFormat>;
	function setDateTextFormat(date:QDate, color:QTextCharFormat):Void;
	function updateCell(date:QDate):Void;
	function updateCells():Void;
	function event(event:QEvent):Bool;
	function eventFilter(watched:QObject, event:QEvent):Bool;
	function mousePressEvent(event:QMouseEvent):Void;
	function resizeEvent(event:QResizeEvent):Void;
	function keyPressEvent(event:QKeyEvent):Void;
	function paintCell(painter:QPainter, rect:QRect, date:QDate):Void;
	function setCurrentPage(year:Int, month:Int):Void;
	function setDateRange(min:QDate, max:QDate):Void;
	function setSelectedDate(date:QDate):Void;
	function showNextMonth():Void;
	function showNextYear():Void;
	function showPreviousMonth():Void;
	function showPreviousYear():Void;
	function showSelectedDate():Void;
	function showToday():Void;
	function isNavigationBarVisible():Bool;
	function isDateEditEnabled():Bool;
	function setDateEditEnabled(enable:Bool):Void;
	function dateEditAcceptDelay():Int;
	function setDateEditAcceptDelay(delay:Int):Void;
	function setNavigationBarVisible(visible:Bool):Void;
	function calendar():QCalendar;
	function setCalendar(calendar:QCalendar):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QCalendarWidget")
@:native("QCalendarWidget")
extern enum abstract QCalendarWidgetHorizontalHeaderFormat(Int) from Int to Int {
	var NoHorizontalHeader;
	var SingleLetterDayNames;
	var ShortDayNames;
	var LongDayNames;
}

@:pythonImport("PyQt5.QtWidgets", "QCalendarWidget")
@:native("QCalendarWidget")
extern enum abstract QCalendarWidgetVerticalHeaderFormat(Int) from Int to Int {
	var NoVerticalHeader;
	var ISOWeekNumbers;
}

@:pythonImport("PyQt5.QtWidgets", "QCalendarWidget")
@:native("QCalendarWidget")
extern enum abstract QCalendarWidgetSelectionMode(Int) from Int to Int {
	var NoSelection;
	var SingleSelection;
}

