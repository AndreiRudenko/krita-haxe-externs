package pyqt5.qtgui;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QList;

@:pythonImport("PyQt5.QtGui", "QKeySequence")
@:native("QKeySequence")
extern class QKeySequence {
	static function mnemonic(text:QString):QKeySequence;
	static function fromString(str:QString, ?format:QKeySequenceSequenceFormat):QKeySequence;
	static function keyBindings(key:QKeySequenceStandardKey):QList<QKeySequence>;
	static function listFromString(str:QString, ?format:QKeySequenceSequenceFormat):QList<QKeySequence>;
	static function listToString(list:QList<QKeySequence>, ?format:QKeySequenceSequenceFormat):QString;

	@:overload(function():QKeySequence {})
	@:overload(function(ks:QKeySequence):QKeySequence {})
	@:overload(function(key:QString, ?format:QKeySequenceSequenceFormat):QKeySequence {})
	@:overload(function(k1:Int, ?key2:Int, ?key3:Int, ?key4:Int):QKeySequence {})
	function new(variant:QVariant);

	function count():Int;
	function isEmpty():Bool;
	function matches(seq:QKeySequence):QKeySequenceSequenceMatch;
	function isDetached():Bool;
	function swap(other:QKeySequence):Void;
	function toString(?format:QKeySequenceSequenceFormat):QString;
}

@:pythonImport("PyQt5.QtGui", "QKeySequence")
@:native("QKeySequence")
extern enum abstract QKeySequenceSequenceFormat(Int) from Int to Int {
	var NativeText;
	var PortableText;
}

@:pythonImport("PyQt5.QtGui", "QKeySequence")
@:native("QKeySequence")
extern enum abstract QKeySequenceSequenceMatch(Int) from Int to Int {
	var NoMatch;
	var PartialMatch;
	var ExactMatch;
}

@:pythonImport("PyQt5.QtGui", "QKeySequence")
@:native("QKeySequence")
extern enum abstract QKeySequenceStandardKey(Int) from Int to Int {
	var UnknownKey;
	var HelpContents;
	var WhatsThis;
	var Open;
	var Close;
	var Save;
	var New;
	var Delete;
	var Cut;
	var Copy;
	var Paste;
	var Undo;
	var Redo;
	var Back;
	var Forward;
	var Refresh;
	var ZoomIn;
	var ZoomOut;
	var Print;
	var AddTab;
	var NextChild;
	var PreviousChild;
	var Find;
	var FindNext;
	var FindPrevious;
	var Replace;
	var SelectAll;
	var Bold;
	var Italic;
	var Underline;
	var MoveToNextChar;
	var MoveToPreviousChar;
	var MoveToNextWord;
	var MoveToPreviousWord;
	var MoveToNextLine;
	var MoveToPreviousLine;
	var MoveToNextPage;
	var MoveToPreviousPage;
	var MoveToStartOfLine;
	var MoveToEndOfLine;
	var MoveToStartOfBlock;
	var MoveToEndOfBlock;
	var MoveToStartOfDocument;
	var MoveToEndOfDocument;
	var SelectNextChar;
	var SelectPreviousChar;
	var SelectNextWord;
	var SelectPreviousWord;
	var SelectNextLine;
	var SelectPreviousLine;
	var SelectNextPage;
	var SelectPreviousPage;
	var SelectStartOfLine;
	var SelectEndOfLine;
	var SelectStartOfBlock;
	var SelectEndOfBlock;
	var SelectStartOfDocument;
	var SelectEndOfDocument;
	var DeleteStartOfWord;
	var DeleteEndOfWord;
	var DeleteEndOfLine;
	var InsertParagraphSeparator;
	var InsertLineSeparator;
	var SaveAs;
	var Preferences;
	var Quit;
	var FullScreen;
	var Deselect;
	var DeleteCompleteLine;
	var Backspace;
	var Cancel;
}

