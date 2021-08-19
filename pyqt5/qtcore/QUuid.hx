package pyqt5.qtcore;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.QByteArray;

@:pythonImport("PyQt5.QtCore", "QUuid")
@:native("QUuid")
extern class QUuid {
	static function createUuid():QUuid;
	@:overload(function(ns:QUuid, baseData:QString):QUuid {})
	static function createUuidV3(ns:QUuid, baseData:QByteArray):QUuid;
	@:overload(function(ns:QUuid, baseData:QString):QUuid {})
	static function createUuidV5(ns:QUuid, baseData:QByteArray):QUuid;
	static function fromRfc4122(?v:QByteArray):QUuid;

	@:overload(function():QUuid {})
	@:overload(function(l:UInt, w1:UInt, w2:UInt, b1:UInt, b2:UInt, b3:UInt, b4:UInt, b5:UInt, b6:UInt, b7:UInt, b8:UInt):QUuid {})
	@:overload(function(?v:QString):QUuid {})
	function new(?v:QByteArray);

	@:overload(function(mode:QUuidStringFormat):QString {})
	function toString():QString;
	function isNull():Bool;
	function variant():QUuidVariant;
	function version():QUuidVersion;
	@:overload(function(mode:QUuidStringFormat):QByteArray {})
	function toByteArray():QByteArray;
	function toRfc4122():QByteArray;
}

@:pythonImport("PyQt5.QtCore", "Variant")
@:native("QUuid.Variant")
extern enum abstract QUuidVariant(Int) from Int to Int {
	var VarUnknown;
	var NCS;
	var DCE;
	var Microsoft;
	var Reserved;
}

@:pythonImport("PyQt5.QtCore", "Version")
@:native("QUuid.Version")
extern enum abstract QUuidVersion(Int) from Int to Int {
	var VerUnknown;
	var Time;
	var EmbeddedPOSIX;
	var Md5;
	var Name;
	var Random;
	var Sha1;
}

@:pythonImport("PyQt5.QtCore", "StringFormat")
@:native("QUuid.StringFormat")
extern enum abstract QUuidStringFormat(Int) from Int to Int {
	var WithBraces;
	var WithoutBraces;
	var Id128;
}

