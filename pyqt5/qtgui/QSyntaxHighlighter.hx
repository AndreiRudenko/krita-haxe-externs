package pyqt5.qtgui;

import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QTextDocument;
import pyqt5.qtgui.QTextObject;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QTextFormat;
import pyqt5.qtgui.QColor;
import pyqt5.qtgui.QFont;

@:pythonImport("PyQt5.QtGui", "QSyntaxHighlighter")
@:native("QSyntaxHighlighter")
extern class QSyntaxHighlighter extends QObject {
	@:overload(function(parent:QTextDocument):QSyntaxHighlighter {})
	@:overload(function(parent:QObject):QSyntaxHighlighter {})
	function new(?v:QSyntaxHighlighter);

	function setDocument(doc:QTextDocument):Void;
	function document():QTextDocument;
	function rehighlight():Void;
	function rehighlightBlock(block:QTextBlock):Void;
	function highlightBlock(text:QString):Void;
	@:overload(function(start:Int, count:Int, color:QColor):Void {})
	@:overload(function(start:Int, count:Int, font:QFont):Void {})
	function setFormat(start:Int, count:Int, format:QTextCharFormat):Void;
	function format(pos:Int):QTextCharFormat;
	function previousBlockState():Int;
	function currentBlockState():Int;
	function setCurrentBlockState(newState:Int):Void;
	function setCurrentBlockUserData(data:QTextBlockUserData):Void;
	function currentBlockUserData():QTextBlockUserData;
	function currentBlock():QTextBlock;
}

