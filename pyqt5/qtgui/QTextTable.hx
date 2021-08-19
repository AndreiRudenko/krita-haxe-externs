package pyqt5.qtgui;

import pyqt5.qtgui.QTextFormat;
import pyqt5.qtgui.QTextCursor;
import pyqt5.qtgui.QTextObject;
import pyqt5.qtgui.QTextDocument;

@:pythonImport("PyQt5.QtGui", "QTextTableCell")
@:native("QTextTableCell")
extern class QTextTableCell {
	@:overload(function():QTextTableCell {})
	function new(o:QTextTableCell);

	function format():QTextCharFormat;
	function setFormat(format:QTextCharFormat):Void;
	function row():Int;
	function column():Int;
	function rowSpan():Int;
	function columnSpan():Int;
	function isValid():Bool;
	function firstCursorPosition():QTextCursor;
	function lastCursorPosition():QTextCursor;
	function tableCellFormatIndex():Int;
}

@:pythonImport("PyQt5.QtGui", "QTextTable")
@:native("QTextTable")
extern class QTextTable extends QTextFrame {
	function new(doc:QTextDocument);

	function resize(rows:Int, cols:Int):Void;
	function insertRows(pos:Int, num:Int):Void;
	function insertColumns(pos:Int, num:Int):Void;
	function removeRows(pos:Int, num:Int):Void;
	function removeColumns(pos:Int, num:Int):Void;
	@:overload(function(cursor:QTextCursor):Void {})
	function mergeCells(row:Int, col:Int, numRows:Int, numCols:Int):Void;
	function splitCell(row:Int, col:Int, numRows:Int, numCols:Int):Void;
	function rows():Int;
	function columns():Int;
	@:overload(function(position:Int):QTextTableCell {})
	@:overload(function(c:QTextCursor):QTextTableCell {})
	function cellAt(row:Int, col:Int):QTextTableCell;
	function rowStart(c:QTextCursor):QTextCursor;
	function rowEnd(c:QTextCursor):QTextCursor;
	function format():QTextTableFormat;
	function setFormat(aformat:QTextTableFormat):Void;
	function appendRows(count:Int):Void;
	function appendColumns(count:Int):Void;
}

