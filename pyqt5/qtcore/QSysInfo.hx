package pyqt5.qtcore;

import pyqt5.qtcore.QString;

@:pythonImport("PyQt5.QtCore", "QSysInfo")
@:native("QSysInfo")
extern class QSysInfo {
	static function buildAbi():QString;
	static function buildCpuArchitecture():QString;
	static function currentCpuArchitecture():QString;
	static function kernelType():QString;
	static function kernelVersion():QString;
	static function prettyProductName():QString;
	static function productType():QString;
	static function productVersion():QString;
	static function machineHostName():QString;
}

@:pythonImport("PyQt5.QtCore", "QSysInfo")
@:native("QSysInfo")
extern enum abstract QSysInfoSizes(Int) from Int to Int {
	var WordSize;
}

@:pythonImport("PyQt5.QtCore", "QSysInfo")
@:native("QSysInfo")
extern enum abstract QSysInfoEndian(Int) from Int to Int {
	var BigEndian;
	var LittleEndian;
	var ByteOrder;
}

