package pyqt5.qtcore;

import pyqt5.qtcore.QByteArray;

@:pythonImport("PyQt5.QtCore", "QByteArrayMatcher")
@:native("QByteArrayMatcher")
extern class QByteArrayMatcher {
	@:overload(function():QByteArrayMatcher {})
	@:overload(function(pattern:QByteArray):QByteArrayMatcher {})
	function new(other:QByteArrayMatcher);

	function setPattern(pattern:QByteArray):Void;
	function indexIn(ba:QByteArray, ?from:Int):Int;
	function pattern():QByteArray;
}

