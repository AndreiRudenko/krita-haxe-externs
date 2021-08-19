package pyqt5.qtcore;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.QDateTime;
import pyqt5.qtcore.QVersionNumber;

@:pythonImport("PyQt5.QtCore", "QLibraryInfo")
@:native("QLibraryInfo")
extern class QLibraryInfo {
	static function licensee():QString;
	static function licensedProducts():QString;
	static function location(?v:QLibraryInfoLibraryLocation):QString;
	static function buildDate():QDate;
	static function isDebugBuild():Bool;
	static function version():QVersionNumber;

	function new();
}

@:pythonImport("PyQt5.QtCore", "QLibraryInfo")
@:native("QLibraryInfo")
extern enum abstract QLibraryInfoLibraryLocation(Int) from Int to Int {
	var PrefixPath;
	var DocumentationPath;
	var HeadersPath;
	var LibrariesPath;
	var BinariesPath;
	var PluginsPath;
	var DataPath;
	var TranslationsPath;
	var SettingsPath;
	var ExamplesPath;
	var ImportsPath;
	var TestsPath;
	var LibraryExecutablesPath;
	var Qml2ImportsPath;
	var ArchDataPath;
}

