package pyqt5.qtgui;

import pyqt5.qtgui.QTextDocument;
import pyqt5.qtgui.QTextObject;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QTextFormat;
import pyqt5.qtgui.QTextDocumentFragment;
import pyqt5.qtgui.QTextList;
import pyqt5.qtgui.QTextTable;
import pyqt5.qtgui.QImage;

@:pythonImport("PyQt5.QtGui", "QTextCursor")
@:native("QTextCursor")
extern class QTextCursor {
	@:overload(function():QTextCursor {})
	@:overload(function(document:QTextDocument):QTextCursor {})
	@:overload(function(frame:QTextFrame):QTextCursor {})
	@:overload(function(block:QTextBlock):QTextCursor {})
	function new(cursor:QTextCursor);

	function isNull():Bool;
	function setPosition(pos:Int, ?mode:QTextCursorMoveMode):Void;
	function position():Int;
	function anchor():Int;
	@:overload(function(text:QString, format:QTextCharFormat):Void {})
	function insertText(text:QString):Void;
	function movePosition(op:QTextCursorMoveOperation, ?mode:QTextCursorMoveMode, ?n:Int):Bool;
	function deleteChar():Void;
	function deletePreviousChar():Void;
	function select(selection:QTextCursorSelectionType):Void;
	function hasSelection():Bool;
	function hasComplexSelection():Bool;
	function removeSelectedText():Void;
	function clearSelection():Void;
	function selectionStart():Int;
	function selectionEnd():Int;
	function selectedText():QString;
	function selection():QTextDocumentFragment;
	function selectedTableCells(firstRow:Int, numRows:Int, firstColumn:Int, numColumns:Int):Void;
	function block():QTextBlock;
	function charFormat():QTextCharFormat;
	function setCharFormat(format:QTextCharFormat):Void;
	function mergeCharFormat(modifier:QTextCharFormat):Void;
	function blockFormat():QTextBlockFormat;
	function setBlockFormat(format:QTextBlockFormat):Void;
	function mergeBlockFormat(modifier:QTextBlockFormat):Void;
	function blockCharFormat():QTextCharFormat;
	function setBlockCharFormat(format:QTextCharFormat):Void;
	function mergeBlockCharFormat(modifier:QTextCharFormat):Void;
	function atBlockStart():Bool;
	function atBlockEnd():Bool;
	function atStart():Bool;
	function atEnd():Bool;
	@:overload(function(format:QTextBlockFormat):Void {})
	@:overload(function(format:QTextBlockFormat, charFormat:QTextCharFormat):Void {})
	function insertBlock():Void;
	@:overload(function(style:QTextListFormatStyle):QTextList {})
	function insertList(format:QTextListFormat):QTextList;
	@:overload(function(style:QTextListFormatStyle):QTextList {})
	function createList(format:QTextListFormat):QTextList;
	function currentList():QTextList;
	@:overload(function(rows:Int, cols:Int):QTextTable {})
	function insertTable(rows:Int, cols:Int, format:QTextTableFormat):QTextTable;
	function currentTable():QTextTable;
	function insertFrame(format:QTextFrameFormat):QTextFrame;
	function currentFrame():QTextFrame;
	function insertFragment(fragment:QTextDocumentFragment):Void;
	function insertHtml(html:QString):Void;
	@:overload(function(format:QTextImageFormat, alignment:QTextFrameFormatPosition):Void {})
	@:overload(function(name:QString):Void {})
	@:overload(function(image:QImage, ?name:QString):Void {})
	function insertImage(format:QTextImageFormat):Void;
	function beginEditBlock():Void;
	function joinPreviousEditBlock():Void;
	function endEditBlock():Void;
	function blockNumber():Int;
	function columnNumber():Int;
	function isCopyOf(other:QTextCursor):Bool;
	function visualNavigation():Bool;
	function setVisualNavigation(b:Bool):Void;
	function document():QTextDocument;
	function positionInBlock():Int;
	function setVerticalMovementX(x:Int):Void;
	function verticalMovementX():Int;
	function setKeepPositionOnInsert(b:Bool):Void;
	function keepPositionOnInsert():Bool;
	function swap(other:QTextCursor):Void;
}

@:pythonImport("PyQt5.QtGui", "QTextCursor")
@:native("QTextCursor")
extern enum abstract QTextCursorMoveMode(Int) from Int to Int {
	var MoveAnchor;
	var KeepAnchor;
}

@:pythonImport("PyQt5.QtGui", "QTextCursor")
@:native("QTextCursor")
extern enum abstract QTextCursorMoveOperation(Int) from Int to Int {
	var NoMove;
	var Start;
	var Up;
	var StartOfLine;
	var StartOfBlock;
	var StartOfWord;
	var PreviousBlock;
	var PreviousCharacter;
	var PreviousWord;
	var Left;
	var WordLeft;
	var End;
	var Down;
	var EndOfLine;
	var EndOfWord;
	var EndOfBlock;
	var NextBlock;
	var NextCharacter;
	var NextWord;
	var Right;
	var WordRight;
	var NextCell;
	var PreviousCell;
	var NextRow;
	var PreviousRow;
}

@:pythonImport("PyQt5.QtGui", "QTextCursor")
@:native("QTextCursor")
extern enum abstract QTextCursorSelectionType(Int) from Int to Int {
	var WordUnderCursor;
	var LineUnderCursor;
	var BlockUnderCursor;
	var Document;
}

