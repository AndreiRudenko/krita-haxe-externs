package pyqt5.qtcore;

import pyqt5.qtcore.QCommandLineOption;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QCoreApplication;
import pyqt5.qtcore.QList;

@:pythonImport("PyQt5.QtCore", "QCommandLineParser")
@:native("QCommandLineParser")
extern class QCommandLineParser {
	@:overload(function():QCommandLineParser {})
	function new(?v:QCommandLineParser);

	function setSingleDashWordOptionMode(parsingMode:QCommandLineParserSingleDashWordOptionMode):Void;
	function addOption(commandLineOption:QCommandLineOption):Bool;
	function addVersionOption():QCommandLineOption;
	function addHelpOption():QCommandLineOption;
	function setApplicationDescription(description:QString):Void;
	function applicationDescription():QString;
	function addPositionalArgument(name:QString, description:QString, ?syntax:QString):Void;
	function clearPositionalArguments():Void;
	@:overload(function(app:QCoreApplication):Void {})
	function process(arguments:QStringList):Void;
	function parse(arguments:QStringList):Bool;
	function errorText():QString;
	@:overload(function(option:QCommandLineOption):Bool {})
	function isSet(name:QString):Bool;
	@:overload(function(option:QCommandLineOption):QString {})
	function value(name:QString):QString;
	@:overload(function(option:QCommandLineOption):QStringList {})
	function values(name:QString):QStringList;
	function positionalArguments():QStringList;
	function optionNames():QStringList;
	function unknownOptionNames():QStringList;
	function showHelp(?exitCode:Int):Void;
	function helpText():QString;
	function addOptions(options:QList<QCommandLineOption>):Bool;
	function showVersion():Void;
	function setOptionsAfterPositionalArgumentsMode(mode:QCommandLineParserOptionsAfterPositionalArgumentsMode):Void;
}

@:pythonImport("PyQt5.QtCore", "QCommandLineParser")
@:native("QCommandLineParser")
extern enum abstract QCommandLineParserSingleDashWordOptionMode(Int) from Int to Int {
	var ParseAsCompactedShortOptions;
	var ParseAsLongOptions;
}

@:pythonImport("PyQt5.QtCore", "QCommandLineParser")
@:native("QCommandLineParser")
extern enum abstract QCommandLineParserOptionsAfterPositionalArgumentsMode(Int) from Int to Int {
	var ParseAsOptions;
	var ParseAsPositionalArguments;
}

