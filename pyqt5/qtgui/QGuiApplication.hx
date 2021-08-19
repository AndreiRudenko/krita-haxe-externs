package pyqt5.qtgui;

import pyqt5.qtcore.QCoreApplication;
import pyqt5.qtgui.QWindowdefs;
import pyqt5.qtcore.QPoint;
import pyqt5.qtgui.QWindow;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QScreen;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QCursor;
import pyqt5.qtgui.QFont;
import pyqt5.qtgui.QClipboard;
import pyqt5.qtgui.QPalette;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QSessionManager;
import pyqt5.qtgui.QStyleHints;
import pyqt5.qtgui.QInputMethod;
import pyqt5.qtgui.QIcon;

@:pythonImport("PyQt5.QtGui", "QGuiApplication")
@:native("QGuiApplication")
extern class QGuiApplication extends QCoreApplication {
	static function allWindows():QWindowList;
	static function topLevelWindows():QWindowList;
	static function topLevelAt(pos:QPoint):QWindow;
	static function platformName():QString;
	static function focusWindow():QWindow;
	static function focusObject():QObject;
	static function primaryScreen():QScreen;
	static function screens():QList<QScreen>;
	static function overrideCursor():QCursor;
	static function setOverrideCursor(?v:QCursor):Void;
	static function changeOverrideCursor(?v:QCursor):Void;
	static function restoreOverrideCursor():Void;
	static function font():QFont;
	static function setFont(?v:QFont):Void;
	static function clipboard():QClipboard;
	static function palette():QPalette;
	static function setPalette(pal:QPalette):Void;
	static function keyboardModifiers():QtKeyboardModifiers;
	static function queryKeyboardModifiers():QtKeyboardModifiers;
	static function mouseButtons():QtMouseButtons;
	static function setLayoutDirection(direction:QtLayoutDirection):Void;
	static function layoutDirection():QtLayoutDirection;
	static function isRightToLeft():Bool;
	static function isLeftToRight():Bool;
	static function setDesktopSettingsAware(on:Bool):Void;
	static function desktopSettingsAware():Bool;
	static function setQuitOnLastWindowClosed(quit:Bool):Void;
	static function quitOnLastWindowClosed():Bool;
	static function exec():Int;
	static function setApplicationDisplayName(name:QString):Void;
	static function applicationDisplayName():QString;
	static function modalWindow():QWindow;
	static function styleHints():QStyleHints;
	static function inputMethod():QInputMethod;
	static function applicationState():QtApplicationState;
	static function sync():Void;
	static function setWindowIcon(icon:QIcon):Void;
	static function windowIcon():QIcon;
	static function isFallbackSessionManagementEnabled():Bool;
	static function setFallbackSessionManagementEnabled(?v:Bool):Void;
	static function setDesktopFileName(name:QString):Void;
	static function desktopFileName():QString;
	static function screenAt(point:QPoint):QScreen;
	static function setHighDpiScaleFactorRoundingPolicy(policy:QtHighDpiScaleFactorRoundingPolicy):Void;
	static function highDpiScaleFactorRoundingPolicy():QtHighDpiScaleFactorRoundingPolicy;

	var fontDatabaseChanged:QSignal0;
	var screenAdded:QSignal1<QScreen>;
	var lastWindowClosed:QSignal0;
	var focusObjectChanged:QSignal1<QObject>;
	var commitDataRequest:QSignal1<QSessionManager>;
	var saveStateRequest:QSignal1<QSessionManager>;
	var focusWindowChanged:QSignal1<QWindow>;
	var applicationStateChanged:QSignal1<QtApplicationState>;
	var applicationDisplayNameChanged:QSignal0;
	var screenRemoved:QSignal1<QScreen>;
	var layoutDirectionChanged:QSignal1<QtLayoutDirection>;
	var paletteChanged:QSignal1<QPalette>;
	var primaryScreenChanged:QSignal1<QScreen>;
	var fontChanged:QSignal1<QFont>;

	function new(argv:Array<String>);

	function notify(?v:QObject, ?v:QEvent):Bool;
	function devicePixelRatio():Float;
	function isSessionRestored():Bool;
	function sessionId():QString;
	function sessionKey():QString;
	function isSavingSession():Bool;
	function event(?v:QEvent):Bool;
}

