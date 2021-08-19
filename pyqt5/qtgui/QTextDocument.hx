package pyqt5.qtgui;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QAbstractTextDocumentLayout;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtgui.QTextCursor;
import pyqt5.qtcore.QRegExp;
import pyqt5.qtcore.QRegularExpression;
import pyqt5.qtgui.QTextObject;
import pyqt5.qtgui.QTextFormat;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QFont;
import pyqt5.qtgui.QPagedPaintDevice;
import pyqt5.qtcore.QUrl;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QVector;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QTextOption;
import pyqt5.qtcore.QChar;
import pyqt5.qtcore.Qt;

typedef QTextDocumentFindFlags = QFlags<QTextDocumentFindFlag>;
typedef QTextDocumentMarkdownFeatures = QFlags<QTextDocumentMarkdownFeature>;

@:pythonImport("PyQt5.QtGui", "QTextDocument")
@:native("QTextDocument")
extern class QTextDocument extends QObject {
	var blockCountChanged:QSignal1<Int>;
	var contentsChange:QSignal3<Int, Int, Int>;
	var contentsChanged:QSignal0;
	var cursorPositionChanged:QSignal1<QTextCursor>;
	var modificationChanged:QSignal1<Bool>;
	var redoAvailable:QSignal1<Bool>;
	var undoAvailable:QSignal1<Bool>;
	var undoCommandAdded:QSignal0;
	var documentLayoutChanged:QSignal0;
	var baseUrlChanged:QSignal1<QUrl>;

	@:overload(function(?parent:QObject):QTextDocument {})
	function new(text:QString, ?parent:QObject);

	function clone(?parent:QObject):QTextDocument;
	function isEmpty():Bool;
	function clear():Void;
	function setUndoRedoEnabled(enable:Bool):Void;
	function isUndoRedoEnabled():Bool;
	function isUndoAvailable():Bool;
	function isRedoAvailable():Bool;
	function setDocumentLayout(layout:QAbstractTextDocumentLayout):Void;
	function documentLayout():QAbstractTextDocumentLayout;
	function setMetaInformation(info:QTextDocumentMetaInformation, ?v:QString):Void;
	function metaInformation(info:QTextDocumentMetaInformation):QString;
	function toHtml(?encoding:QByteArray):QString;
	function setHtml(html:QString):Void;
	function toPlainText():QString;
	function setPlainText(text:QString):Void;
	@:overload(function(expr:QRegExp, ?position:Int, ?options:QFlags<QTextDocumentFindFlag>):QTextCursor {})
	@:overload(function(expr:QRegularExpression, ?position:Int, ?options:QFlags<QTextDocumentFindFlag>):QTextCursor {})
	@:overload(function(subString:QString, cursor:QTextCursor, ?options:QFlags<QTextDocumentFindFlag>):QTextCursor {})
	@:overload(function(expr:QRegExp, cursor:QTextCursor, ?options:QFlags<QTextDocumentFindFlag>):QTextCursor {})
	@:overload(function(expr:QRegularExpression, cursor:QTextCursor, ?options:QFlags<QTextDocumentFindFlag>):QTextCursor {})
	function find(subString:QString, ?position:Int, ?options:QFlags<QTextDocumentFindFlag>):QTextCursor;
	function rootFrame():QTextFrame;
	function object(objectIndex:Int):QTextObject;
	function objectForFormat(?v:QTextFormat):QTextObject;
	function findBlock(pos:Int):QTextBlock;
	function begin():QTextBlock;
	function end():QTextBlock;
	function setPageSize(size:QSizeF):Void;
	function pageSize():QSizeF;
	function setDefaultFont(font:QFont):Void;
	function defaultFont():QFont;
	function pageCount():Int;
	function isModified():Bool;
	@:overload(function(printer:QPagedPaintDevice):Void {})
	function print(printer:QPagedPaintDevice):Void;
	function resource(type:Int, name:QUrl):QVariant;
	function addResource(type:Int, name:QUrl, resource:QVariant):Void;
	function allFormats():QVector<QTextFormat>;
	function markContentsDirty(from:Int, length:Int):Void;
	function setUseDesignMetrics(b:Bool):Void;
	function useDesignMetrics():Bool;
	@:overload(function(cursor:QTextCursor):Void {})
	function undo():Void;
	@:overload(function(cursor:QTextCursor):Void {})
	function redo():Void;
	function setModified(?on:Bool):Void;
	function createObject(f:QTextFormat):QTextObject;
	function loadResource(type:Int, name:QUrl):QVariant;
	function drawContents(p:QPainter, ?rect:QRectF):Void;
	function setTextWidth(width:Float):Void;
	function textWidth():Float;
	function idealWidth():Float;
	function adjustSize():Void;
	function size():QSizeF;
	function blockCount():Int;
	function setDefaultStyleSheet(sheet:QString):Void;
	function defaultStyleSheet():QString;
	function maximumBlockCount():Int;
	function setMaximumBlockCount(maximum:Int):Void;
	function defaultTextOption():QTextOption;
	function setDefaultTextOption(option:QTextOption):Void;
	function revision():Int;
	function findBlockByNumber(blockNumber:Int):QTextBlock;
	function findBlockByLineNumber(blockNumber:Int):QTextBlock;
	function firstBlock():QTextBlock;
	function lastBlock():QTextBlock;
	function indentWidth():Float;
	function setIndentWidth(width:Float):Void;
	function characterAt(pos:Int):QChar;
	function documentMargin():Float;
	function setDocumentMargin(margin:Float):Void;
	function lineCount():Int;
	function characterCount():Int;
	function availableUndoSteps():Int;
	function availableRedoSteps():Int;
	function clearUndoRedoStacks(?stacks:QTextDocumentStacks):Void;
	function defaultCursorMoveStyle():QtCursorMoveStyle;
	function setDefaultCursorMoveStyle(style:QtCursorMoveStyle):Void;
	function baseUrl():QUrl;
	function setBaseUrl(url:QUrl):Void;
	function toRawText():QString;
	function toMarkdown(?features:QTextDocumentMarkdownFeatures):QString;
	function setMarkdown(markdown:QString, ?features:QTextDocumentMarkdownFeatures):Void;
}

@:pythonImport("PyQt5.QtGui", "QTextDocument")
@:native("QTextDocument")
extern enum abstract QTextDocumentMetaInformation(Int) from Int to Int {
	var DocumentTitle;
	var DocumentUrl;
}

@:pythonImport("PyQt5.QtGui", "QTextDocument")
@:native("QTextDocument")
extern enum abstract QTextDocumentFindFlag(Int) from Int to Int {
	var FindBackward;
	var FindCaseSensitively;
	var FindWholeWords;
}

@:pythonImport("PyQt5.QtGui", "QTextDocument")
@:native("QTextDocument")
extern enum abstract QTextDocumentResourceType(Int) from Int to Int {
	var UnknownResource;
	var HtmlResource;
	var ImageResource;
	var StyleSheetResource;
	var MarkdownResource;
	var UserResource;
}

@:pythonImport("PyQt5.QtGui", "QTextDocument")
@:native("QTextDocument")
extern enum abstract QTextDocumentStacks(Int) from Int to Int {
	var UndoStack;
	var RedoStack;
	var UndoAndRedoStacks;
}

@:pythonImport("PyQt5.QtGui", "QTextDocument")
@:native("QTextDocument")
extern enum abstract QTextDocumentMarkdownFeature(Int) from Int to Int {
	var MarkdownNoHTML;
	var MarkdownDialectCommonMark;
	var MarkdownDialectGitHub;
}

