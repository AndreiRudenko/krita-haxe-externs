package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QGuiApplication;
import pyqt5.qtwidgets.QStyle;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QPalette;
import pyqt5.qtgui.QFont;
import pyqt5.qtgui.QFontMetrics;
import pyqt5.qtgui.QIcon;
import pyqt5.qtwidgets.QApplication;
import pyqt5.qtwidgets.QDesktopWidget;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QSignal;

typedef QWidgetList = QList<QWidget>;

@:pythonImport("PyQt5.QtWidgets", "QApplication")
@:native("QApplication")
extern class QApplication extends QGuiApplication {
	static function style():QStyle;
	@:overload(function(?v:QString):QStyle {})
	static function setStyle(?v:QStyle):Void;
	static function colorSpec():Int;
	static function setColorSpec(?v:Int):Void;
	@:overload(function(?v:QWidget):QPalette {})
	@:overload(function(className:Int):QPalette {})
	static function palette():QPalette;
	static function setPalette(?v:QPalette, ?className:Int):Void;
	@:overload(function(?v:QWidget):QFont {})
	@:overload(function(className:Int):QFont {})
	static function font():QFont;
	static function setFont(?v:QFont, ?className:Int):Void;
	static function fontMetrics():QFontMetrics;
	static function setWindowIcon(icon:QIcon):Void;
	static function windowIcon():QIcon;
	static function allWidgets():QWidgetList;
	static function topLevelWidgets():QWidgetList;
	static function desktop():QDesktopWidget;
	static function activePopupWidget():QWidget;
	static function activeModalWidget():QWidget;
	static function focusWidget():QWidget;
	static function activeWindow():QWidget;
	static function setActiveWindow(act:QWidget):Void;
	@:overload(function(x:Int, y:Int):QWidget {})
	static function widgetAt(p:QPoint):QWidget;
	@:overload(function(x:Int, y:Int):QWidget {})
	static function topLevelAt(p:QPoint):QWidget;
	static function beep():Void;
	static function alert(widget:QWidget, ?msecs:Int):Void;
	static function setCursorFlashTime(?v:Int):Void;
	static function cursorFlashTime():Int;
	static function setDoubleClickInterval(?v:Int):Void;
	static function doubleClickInterval():Int;
	static function setKeyboardInputInterval(?v:Int):Void;
	static function keyboardInputInterval():Int;
	static function setWheelScrollLines(?v:Int):Void;
	static function wheelScrollLines():Int;
	static function setGlobalStrut(?v:QSize):Void;
	static function globalStrut():QSize;
	static function setStartDragTime(ms:Int):Void;
	static function startDragTime():Int;
	static function setStartDragDistance(l:Int):Void;
	static function startDragDistance():Int;
	static function isEffectEnabled(?v:QtUIEffect):Bool;
	static function setEffectEnabled(?v:QtUIEffect, ?enabled:Bool):Void;
	static function exec():Int;
	static function aboutQt():Void;
	static function closeAllWindows():Void;

	var focusChanged:QSignal2<QWidget, QWidget>;

	function new(argv:Array<String>);

	function notify(?v:QObject, ?v:QEvent):Bool;
	function autoSipEnabled():Bool;
	function styleSheet():QString;
	function setAutoSipEnabled(enabled:Bool):Void;
	function setStyleSheet(sheet:QString):Void;
	function event(?v:QEvent):Bool;
}

@:pythonImport("PyQt5.QtWidgets", "ColorSpec")
@:native("QApplication.ColorSpec")
extern enum abstract QApplicationColorSpec(Int) from Int to Int {
	var NormalColor;
	var CustomColor;
	var ManyColor;
}

