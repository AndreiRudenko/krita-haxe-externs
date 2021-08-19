package pyqt5.qtcore;

import pyqt5.qtcore.QString;

@:pythonImport("PyQt5.QtCore", "QOperatingSystemVersion")
@:native("QOperatingSystemVersion")
extern class QOperatingSystemVersion {
	static function current():QOperatingSystemVersion;
	static function currentType():QOperatingSystemVersionOSType;

	@:overload(function(osType:QOperatingSystemVersionOSType, vmajor:Int, ?vminor:Int, ?vmicro:Int):QOperatingSystemVersion {})
	function new();

	function majorVersion():Int;
	function minorVersion():Int;
	function microVersion():Int;
	function segmentCount():Int;
	function type():QOperatingSystemVersionOSType;
	function name():QString;
}

@:pythonImport("PyQt5.QtCore", "QOperatingSystemVersion")
@:native("QOperatingSystemVersion")
extern enum abstract QOperatingSystemVersionOSType(Int) from Int to Int {
	var Unknown;
	var Windows;
	var MacOS;
	var IOS;
	var TvOS;
	var WatchOS;
	var Android;
}

