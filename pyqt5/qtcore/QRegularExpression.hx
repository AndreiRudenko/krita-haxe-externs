package pyqt5.qtcore;

import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QStringList;

typedef QRegularExpressionPatternOptions = QFlags<QRegularExpressionPatternOption>;
typedef QRegularExpressionMatchOptions = QFlags<QRegularExpressionMatchOption>;

@:pythonImport("PyQt5.QtCore", "QRegularExpression")
@:native("QRegularExpression")
extern class QRegularExpression {
	static function escape(str:QString):QString;
	static function wildcardToRegularExpression(str:QString):QString;
	static function anchoredPattern(expression:QString):QString;

	@:overload(function():QRegularExpression {})
	@:overload(function(pattern:QString, ?options:QRegularExpressionPatternOptions):QRegularExpression {})
	function new(re:QRegularExpression);

	function patternOptions():QRegularExpressionPatternOptions;
	function setPatternOptions(options:QRegularExpressionPatternOptions):Void;
	function swap(re:QRegularExpression):Void;
	function pattern():QString;
	function setPattern(pattern:QString):Void;
	function isValid():Bool;
	function patternErrorOffset():Int;
	function errorString():QString;
	function captureCount():Int;
	function match(subject:QString, ?offset:Int, ?matchType:QRegularExpressionMatchType, ?matchOptions:QRegularExpressionMatchOptions):QRegularExpressionMatch;
	function globalMatch(subject:QString, ?offset:Int, ?matchType:QRegularExpressionMatchType, ?matchOptions:QRegularExpressionMatchOptions):QRegularExpressionMatchIterator;
	function namedCaptureGroups():QStringList;
	function optimize():Void;
}

@:pythonImport("PyQt5.QtCore", "QRegularExpression")
@:native("QRegularExpression")
extern enum abstract QRegularExpressionPatternOption(Int) from Int to Int {
	var NoPatternOption;
	var CaseInsensitiveOption;
	var DotMatchesEverythingOption;
	var MultilineOption;
	var ExtendedPatternSyntaxOption;
	var InvertedGreedinessOption;
	var DontCaptureOption;
	var UseUnicodePropertiesOption;
	var OptimizeOnFirstUsageOption;
	var DontAutomaticallyOptimizeOption;
}

@:pythonImport("PyQt5.QtCore", "QRegularExpression")
@:native("QRegularExpression")
extern enum abstract QRegularExpressionMatchType(Int) from Int to Int {
	var NormalMatch;
	var PartialPreferCompleteMatch;
	var PartialPreferFirstMatch;
	var NoMatch;
}

@:pythonImport("PyQt5.QtCore", "QRegularExpression")
@:native("QRegularExpression")
extern enum abstract QRegularExpressionMatchOption(Int) from Int to Int {
	var NoMatchOption;
	var AnchoredMatchOption;
	var DontCheckSubjectStringMatchOption;
}

@:pythonImport("PyQt5.QtCore", "QRegularExpressionMatch")
@:native("QRegularExpressionMatch")
extern class QRegularExpressionMatch {
	@:overload(function():QRegularExpressionMatch {})
	function new(match:QRegularExpressionMatch);

	function swap(match:QRegularExpressionMatch):Void;
	function regularExpression():QRegularExpression;
	function matchType():QRegularExpressionMatchType;
	function matchOptions():QRegularExpressionMatchOptions;
	function hasMatch():Bool;
	function hasPartialMatch():Bool;
	function isValid():Bool;
	function lastCapturedIndex():Int;
	@:overload(function(name:QString):QString {})
	function captured(?nth:Int):QString;
	function capturedTexts():QStringList;
	@:overload(function(name:QString):Int {})
	function capturedStart(?nth:Int):Int;
	@:overload(function(name:QString):Int {})
	function capturedLength(?nth:Int):Int;
	@:overload(function(name:QString):Int {})
	function capturedEnd(?nth:Int):Int;
}

@:pythonImport("PyQt5.QtCore", "QRegularExpressionMatchIterator")
@:native("QRegularExpressionMatchIterator")
extern class QRegularExpressionMatchIterator {
	@:overload(function():QRegularExpressionMatchIterator {})
	function new(iterator:QRegularExpressionMatchIterator);

	function swap(iterator:QRegularExpressionMatchIterator):Void;
	function isValid():Bool;
	function hasNext():Bool;
	function next():QRegularExpressionMatch;
	function peekNext():QRegularExpressionMatch;
	function regularExpression():QRegularExpression;
	function matchType():QRegularExpressionMatchType;
	function matchOptions():QRegularExpressionMatchOptions;
}

