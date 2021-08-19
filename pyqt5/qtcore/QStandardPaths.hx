package pyqt5.qtcore;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QGlobal;

typedef QStandardPathsLocateOptions = QFlags<QStandardPathsLocateOption>;

@:pythonImport("PyQt5.QtCore", "QStandardPaths")
@:native("QStandardPaths")
extern class QStandardPaths {
	static function writableLocation(type:QStandardPathsStandardLocation):QString;
	static function standardLocations(type:QStandardPathsStandardLocation):QStringList;
	static function locate(type:QStandardPathsStandardLocation, fileName:QString, ?options:QFlags<QStandardPathsLocateOption>):QString;
	static function locateAll(type:QStandardPathsStandardLocation, fileName:QString, ?options:QFlags<QStandardPathsLocateOption>):QStringList;
	static function displayName(type:QStandardPathsStandardLocation):QString;
	static function findExecutable(executableName:QString, ?paths:QStringList):QString;
	static function enableTestMode(testMode:Bool):Void;
	static function setTestModeEnabled(testMode:Bool):Void;

	function new();
}

@:pythonImport("PyQt5.QtCore", "QStandardPaths")
@:native("QStandardPaths")
extern enum abstract QStandardPathsStandardLocation(Int) from Int to Int {
	var DesktopLocation;
	var DocumentsLocation;
	var FontsLocation;
	var ApplicationsLocation;
	var MusicLocation;
	var MoviesLocation;
	var PicturesLocation;
	var TempLocation;
	var HomeLocation;
	var DataLocation;
	var CacheLocation;
	var GenericDataLocation;
	var RuntimeLocation;
	var ConfigLocation;
	var DownloadLocation;
	var GenericCacheLocation;
	var GenericConfigLocation;
	var AppDataLocation;
	var AppLocalDataLocation;
	var AppConfigLocation;
}

@:pythonImport("PyQt5.QtCore", "QStandardPaths")
@:native("QStandardPaths")
extern enum abstract QStandardPathsLocateOption(Int) from Int to Int {
	var LocateFile;
	var LocateDirectory;
}

