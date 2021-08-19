package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QEventLoop;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QTranslator;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QAbstractEventDispatcher;
import pyqt5.qtcore.QAbstractNativeEventFilter;

@:pythonImport("PyQt5.QtCore", "QCoreApplication")
@:native("QCoreApplication")
extern class QCoreApplication extends QObject {
	static function setOrganizationDomain(orgDomain:QString):Void;
	static function organizationDomain():QString;
	static function setOrganizationName(orgName:QString):Void;
	static function organizationName():QString;
	static function setApplicationName(application:QString):Void;
	static function applicationName():QString;
	static function arguments():QStringList;
	static function instance():QCoreApplication;
	static function exec():Int;
	@:overload(function(flags:QEventLoopProcessEventsFlags, maxtime:Int):Void {})
	static function processEvents(?flags:QEventLoopProcessEventsFlags):Void;
	static function exit(?returnCode:Int):Void;
	static function sendEvent(receiver:QObject, event:QEvent):Bool;
	static function postEvent(receiver:QObject, event:QEvent, ?priority:Int):Void;
	static function sendPostedEvents(?receiver:QObject, ?eventType:Int):Void;
	static function removePostedEvents(receiver:QObject, ?eventType:Int):Void;
	static function hasPendingEvents():Bool;
	static function startingUp():Bool;
	static function closingDown():Bool;
	static function applicationDirPath():QString;
	static function applicationFilePath():QString;
	static function setLibraryPaths(?v:QStringList):Void;
	static function libraryPaths():QStringList;
	static function addLibraryPath(?v:QString):Void;
	static function removeLibraryPath(?v:QString):Void;
	static function installTranslator(messageFile:QTranslator):Bool;
	static function removeTranslator(messageFile:QTranslator):Bool;
	static function translate(context:Int, sourceText:Int, ?disambiguation:Int, ?n:Int):QString;
	static function flush():Void;
	static function setAttribute(attribute:QtApplicationAttribute, ?on:Bool):Void;
	static function testAttribute(attribute:QtApplicationAttribute):Bool;
	static function quit():Void;
	static function setApplicationVersion(version:QString):Void;
	static function applicationVersion():QString;
	static function applicationPid():Int;
	static function eventDispatcher():QAbstractEventDispatcher;
	static function setEventDispatcher(eventDispatcher:QAbstractEventDispatcher):Void;
	static function isQuitLockEnabled():Bool;
	static function setQuitLockEnabled(enabled:Bool):Void;
	static function setSetuidAllowed(allow:Bool):Void;
	static function isSetuidAllowed():Bool;

	var aboutToQuit:QSignal0;

	function new(argv:Array<String>);

	function notify(?v:QObject, ?v:QEvent):Bool;
	function event(?v:QEvent):Bool;
	function installNativeEventFilter(filterObj:QAbstractNativeEventFilter):Void;
	function removeNativeEventFilter(filterObj:QAbstractNativeEventFilter):Void;
}

