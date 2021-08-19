package pyqt5.qtcore;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QGlobal;

typedef QCommandLineOptionFlags = QFlags<QCommandLineOptionFlag>;

@:pythonImport("PyQt5.QtCore", "QCommandLineOption")
@:native("QCommandLineOption")
extern class QCommandLineOption {
	@:overload(function(name:QString):QCommandLineOption {})
	@:overload(function(names:QStringList):QCommandLineOption {})
	@:overload(function(name:QString, description:QString, ?valueName:QString):QCommandLineOption {})
	@:overload(function(names:QStringList, description:QString, ?valueName:QString):QCommandLineOption {})
	function new(other:QCommandLineOption);

	function swap(other:QCommandLineOption):Void;
	function names():QStringList;
	function setValueName(name:QString):Void;
	function valueName():QString;
	function setDescription(description:QString):Void;
	function description():QString;
	function setDefaultValue(defaultValue:QString):Void;
	function setDefaultValues(defaultValues:QStringList):Void;
	function defaultValues():QStringList;
	function setHidden(hidden:Bool):Void;
	function isHidden():Bool;
	function flags():QCommandLineOptionFlags;
	function setFlags(aflags:QCommandLineOptionFlags):Void;
}

@:pythonImport("PyQt5.QtCore", "QCommandLineOption")
@:native("QCommandLineOption")
extern enum abstract QCommandLineOptionFlag(Int) from Int to Int {
	var HiddenFromHelp;
	var ShortOptionStyle;
}

