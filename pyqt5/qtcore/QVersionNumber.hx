package pyqt5.qtcore;

import pyqt5.qtcore.QVector;
import pyqt5.qtcore.QString;

@:pythonImport("PyQt5.QtCore", "QVersionNumber")
@:native("QVersionNumber")
extern class QVersionNumber {
	static function compare(v1:QVersionNumber, v2:QVersionNumber):Int;
	static function commonPrefix(v1:QVersionNumber, v2:QVersionNumber):QVersionNumber;
	static function fromString(string:QString, ?suffixIndex:Int):QVersionNumber;

	@:overload(function():QVersionNumber {})
	@:overload(function(seg:QVector<Int>):QVersionNumber {})
	@:overload(function(maj:Int):QVersionNumber {})
	@:overload(function(maj:Int, min:Int):QVersionNumber {})
	function new(maj:Int, min:Int, mic:Int);

	function isNull():Bool;
	function isNormalized():Bool;
	function majorVersion():Int;
	function minorVersion():Int;
	function microVersion():Int;
	function normalized():QVersionNumber;
	function segments():QVector<Int>;
	function segmentAt(index:Int):Int;
	function segmentCount():Int;
	function isPrefixOf(other:QVersionNumber):Bool;
	function toString():QString;
}

