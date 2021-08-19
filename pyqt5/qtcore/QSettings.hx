package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QTextCodec;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtCore", "QSettings")
@:native("QSettings")
extern class QSettings extends QObject {
	static function setPath(format:QSettingsFormat, scope:QSettingsScope, path:QString):Void;
	static function setDefaultFormat(format:QSettingsFormat):Void;
	static function defaultFormat():QSettingsFormat;

	@:overload(function(organization:QString, ?application:QString):QSettings {})
	@:overload(function(scope:QSettingsScope, organization:QString, ?application:QString):QSettings {})
	@:overload(function(format:QSettingsFormat, scope:QSettingsScope, organization:QString, ?application:QString):QSettings {})
	@:overload(function(fileName:QString, format:QSettingsFormat, ?parent:QObject):QSettings {})
	@:overload(function(scope:QSettingsScope, ?parent:QObject):QSettings {})
	function new(?parent:QObject);

	function clear():Void;
	function sync():Void;
	function status():QSettingsStatus;
	function beginGroup(prefix:QString):Void;
	function endGroup():Void;
	function group():QString;
	function beginReadArray(prefix:QString):Int;
	function beginWriteArray(prefix:QString, ?size:Int):Void;
	function endArray():Void;
	function setArrayIndex(i:Int):Void;
	function allKeys():QStringList;
	function childKeys():QStringList;
	function childGroups():QStringList;
	function isWritable():Bool;
	function setValue(key:QString, value:QVariant):Void;
	function value(key:QString, ?defaultValue:QVariant, ?type:Dynamic):Dynamic;
	function remove(key:QString):Void;
	function contains(key:QString):Bool;
	function setFallbacksEnabled(b:Bool):Void;
	function fallbacksEnabled():Bool;
	function fileName():QString;
	function format():QSettingsFormat;
	function scope():QSettingsScope;
	function organizationName():QString;
	function applicationName():QString;
	@:overload(function(codecName:Int):Void {})
	function setIniCodec(codec:QTextCodec):Void;
	function iniCodec():QTextCodec;
	function isAtomicSyncRequired():Bool;
	function setAtomicSyncRequired(enable:Bool):Void;
	function event(event:QEvent):Bool;
}

@:pythonImport("PyQt5.QtCore", "QSettings")
@:native("QSettings")
extern enum abstract QSettingsStatus(Int) from Int to Int {
	var NoError;
	var AccessError;
	var FormatError;
}

@:pythonImport("PyQt5.QtCore", "QSettings")
@:native("QSettings")
extern enum abstract QSettingsFormat(Int) from Int to Int {
	var NativeFormat;
	var IniFormat;
	var InvalidFormat;
}

@:pythonImport("PyQt5.QtCore", "QSettings")
@:native("QSettings")
extern enum abstract QSettingsScope(Int) from Int to Int {
	var UserScope;
	var SystemScope;
}

