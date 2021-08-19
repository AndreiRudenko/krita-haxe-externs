package pyqt5.qtcore;

import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QString;

typedef QTextBoundaryFinderBoundaryReasons = QFlags<QTextBoundaryFinderBoundaryReason>;

@:pythonImport("PyQt5.QtCore", "QTextBoundaryFinder")
@:native("QTextBoundaryFinder")
extern class QTextBoundaryFinder {
	@:overload(function():QTextBoundaryFinder {})
	@:overload(function(other:QTextBoundaryFinder):QTextBoundaryFinder {})
	function new(type:QTextBoundaryFinderBoundaryType, string:QString);

	function isValid():Bool;
	function type():QTextBoundaryFinderBoundaryType;
	function string():QString;
	function toStart():Void;
	function toEnd():Void;
	function position():Int;
	function setPosition(position:Int):Void;
	function toNextBoundary():Int;
	function toPreviousBoundary():Int;
	function isAtBoundary():Bool;
	function boundaryReasons():QTextBoundaryFinderBoundaryReasons;
}

@:pythonImport("PyQt5.QtCore", "QTextBoundaryFinder")
@:native("QTextBoundaryFinder")
extern enum abstract QTextBoundaryFinderBoundaryReason(Int) from Int to Int {
	var NotAtBoundary;
	var SoftHyphen;
	var BreakOpportunity;
	var StartOfItem;
	var EndOfItem;
	var MandatoryBreak;
}

@:pythonImport("PyQt5.QtCore", "QTextBoundaryFinder")
@:native("QTextBoundaryFinder")
extern enum abstract QTextBoundaryFinderBoundaryType(Int) from Int to Int {
	var Grapheme;
	var Word;
	var Line;
	var Sentence;
}

