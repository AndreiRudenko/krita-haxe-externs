package pyqt5.qtgui;

import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QTextDocument;
import pyqt5.qtgui.QTextFormat;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QTextCursor;
import pyqt5.qtgui.QTextLayout;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QTextList;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QVector;
import pyqt5.qtgui.QGlyphRun;

@:pythonImport("PyQt5.QtGui", "QTextObject")
@:native("QTextObject")
extern class QTextObject extends QObject {
	function new(doc:QTextDocument);

	function setFormat(format:QTextFormat):Void;
	function format():QTextFormat;
	function formatIndex():Int;
	function document():QTextDocument;
	function objectIndex():Int;
}

@:pythonImport("PyQt5.QtGui", "QTextBlockGroup")
@:native("QTextBlockGroup")
extern class QTextBlockGroup extends QTextObject {
	function new(doc:QTextDocument);

	function blockInserted(block:QTextBlock):Void;
	function blockRemoved(block:QTextBlock):Void;
	function blockFormatChanged(block:QTextBlock):Void;
	function blockList():QList<QTextBlock>;
}

@:pythonImport("PyQt5.QtGui", "QTextFrame")
@:native("QTextFrame")
extern class QTextFrame extends QTextObject {
	function new(doc:QTextDocument);

	function frameFormat():QTextFrameFormat;
	function firstCursorPosition():QTextCursor;
	function lastCursorPosition():QTextCursor;
	function firstPosition():Int;
	function lastPosition():Int;
	function childFrames():QList<QTextFrame>;
	function parentFrame():QTextFrame;
	function setFrameFormat(aformat:QTextFrameFormat):Void;
}

@:pythonImport("PyQt5.QtGui", "QTextBlock")
@:native("QTextBlock")
extern class QTextBlock {
	@:overload(function():QTextBlock {})
	function new(o:QTextBlock);

	function isValid():Bool;
	function position():Int;
	function length():Int;
	function contains(position:Int):Bool;
	function layout():QTextLayout;
	function blockFormat():QTextBlockFormat;
	function blockFormatIndex():Int;
	function charFormat():QTextCharFormat;
	function charFormatIndex():Int;
	function text():QString;
	function document():QTextDocument;
	function textList():QTextList;
	function next():QTextBlock;
	function previous():QTextBlock;
	function userData():QTextBlockUserData;
	function setUserData(data:QTextBlockUserData):Void;
	function userState():Int;
	function setUserState(state:Int):Void;
	function clearLayout():Void;
	function revision():Int;
	function setRevision(rev:Int):Void;
	function isVisible():Bool;
	function setVisible(visible:Bool):Void;
	function blockNumber():Int;
	function firstLineNumber():Int;
	function setLineCount(count:Int):Void;
	function lineCount():Int;
	function textDirection():QtLayoutDirection;
	function textFormats():QVector<FormatRange>;
}

@:pythonImport("PyQt5.QtGui", "QTextFragment")
@:native("QTextFragment")
extern class QTextFragment {
	@:overload(function():QTextFragment {})
	function new(o:QTextFragment);

	function isValid():Bool;
	function position():Int;
	function length():Int;
	function contains(position:Int):Bool;
	function charFormat():QTextCharFormat;
	function charFormatIndex():Int;
	function text():QString;
	function glyphRuns(?from:Int, ?length:Int):QList<QGlyphRun>;
}

@:pythonImport("PyQt5.QtGui", "QTextBlockUserData")
@:native("QTextBlockUserData")
extern class QTextBlockUserData {
}

