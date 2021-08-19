package pyqt5.qtcore;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QStringList;

@:pythonImport("PyQt5.QtCore", "QRegExp")
@:native("QRegExp")
extern class QRegExp {
	static function escape(str:QString):QString;

	@:overload(function():QRegExp {})
	@:overload(function(pattern:QString, ?cs:QtCaseSensitivity, ?syntax:QRegExpPatternSyntax):QRegExp {})
	function new(rx:QRegExp);

	function isEmpty():Bool;
	function isValid():Bool;
	function pattern():QString;
	function setPattern(pattern:QString):Void;
	function caseSensitivity():QtCaseSensitivity;
	function setCaseSensitivity(cs:QtCaseSensitivity):Void;
	function patternSyntax():QRegExpPatternSyntax;
	function setPatternSyntax(syntax:QRegExpPatternSyntax):Void;
	function isMinimal():Bool;
	function setMinimal(minimal:Bool):Void;
	function exactMatch(str:QString):Bool;
	function indexIn(str:QString, ?offset:Int, ?caretMode:QRegExpCaretMode):Int;
	function lastIndexIn(str:QString, ?offset:Int, ?caretMode:QRegExpCaretMode):Int;
	function matchedLength():Int;
	function capturedTexts():QStringList;
	function cap(?nth:Int):QString;
	function pos(?nth:Int):Int;
	function errorString():QString;
	function captureCount():Int;
	function swap(other:QRegExp):Void;
}

@:pythonImport("PyQt5.QtCore", "QRegExp")
@:native("QRegExp")
extern enum abstract QRegExpPatternSyntax(Int) from Int to Int {
	var RegExp;
	var RegExp2;
	var Wildcard;
	var FixedString;
	var WildcardUnix;
	var W3CXmlSchema11;
}

@:pythonImport("PyQt5.QtCore", "QRegExp")
@:native("QRegExp")
extern enum abstract QRegExpCaretMode(Int) from Int to Int {
	var CaretAtZero;
	var CaretAtOffset;
	var CaretWontMatch;
}

