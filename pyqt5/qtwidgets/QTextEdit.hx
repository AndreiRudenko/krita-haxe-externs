package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractScrollArea;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QTextDocument;
import pyqt5.qtgui.QTextCursor;
import pyqt5.qtgui.QColor;
import pyqt5.qtgui.QFont;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QTextFormat;
import pyqt5.qtgui.QTextOption;
import pyqt5.qtcore.QUrl;
import pyqt5.qtcore.QVariant;
import pyqt5.qtwidgets.QMenu;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QPagedPaintDevice;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtcore.QRegExp;
import pyqt5.qtcore.QRegularExpression;

typedef QTextEditAutoFormatting = QFlags<QTextEditAutoFormattingFlag>;

@:pythonImport("PyQt5.QtWidgets", "QTextEdit")
@:native("QTextEdit")
extern class QTextEdit extends QAbstractScrollArea {
	var textChanged:QSignal0;
	var undoAvailable:QSignal1<Bool>;
	var redoAvailable:QSignal1<Bool>;
	var currentCharFormatChanged:QSignal1<QTextCharFormat>;
	var copyAvailable:QSignal1<Bool>;
	var selectionChanged:QSignal0;
	var cursorPositionChanged:QSignal0;

	@:overload(function(?parent:QWidget):QTextEdit {})
	function new(text:QString, ?parent:QWidget);

	function setDocument(document:QTextDocument):Void;
	function document():QTextDocument;
	function setTextCursor(cursor:QTextCursor):Void;
	function textCursor():QTextCursor;
	function isReadOnly():Bool;
	function setReadOnly(ro:Bool):Void;
	function fontPointSize():Float;
	function fontFamily():QString;
	function fontWeight():Int;
	function fontUnderline():Bool;
	function fontItalic():Bool;
	function textColor():QColor;
	function currentFont():QFont;
	function alignment():QtAlignment;
	function mergeCurrentCharFormat(modifier:QTextCharFormat):Void;
	function setCurrentCharFormat(format:QTextCharFormat):Void;
	function currentCharFormat():QTextCharFormat;
	function autoFormatting():QTextEditAutoFormatting;
	function setAutoFormatting(features:QTextEditAutoFormatting):Void;
	function tabChangesFocus():Bool;
	function setTabChangesFocus(b:Bool):Void;
	function setDocumentTitle(title:QString):Void;
	function documentTitle():QString;
	function isUndoRedoEnabled():Bool;
	function setUndoRedoEnabled(enable:Bool):Void;
	function lineWrapMode():QTextEditLineWrapMode;
	function setLineWrapMode(mode:QTextEditLineWrapMode):Void;
	function lineWrapColumnOrWidth():Int;
	function setLineWrapColumnOrWidth(w:Int):Void;
	function wordWrapMode():QTextOptionWrapMode;
	function setWordWrapMode(policy:QTextOptionWrapMode):Void;
	@:overload(function(exp:QRegExp, ?options:QTextDocumentFindFlags):Bool {})
	@:overload(function(exp:QRegularExpression, ?options:QTextDocumentFindFlags):Bool {})
	function find(exp:QString, ?options:QTextDocumentFindFlags):Bool;
	function toPlainText():QString;
	function toHtml():QString;
	function append(text:QString):Void;
	function ensureCursorVisible():Void;
	function loadResource(type:Int, name:QUrl):QVariant;
	@:overload(function(position:QPoint):QMenu {})
	function createStandardContextMenu():QMenu;
	function cursorForPosition(pos:QPoint):QTextCursor;
	@:overload(function():QRect {})
	function cursorRect(cursor:QTextCursor):QRect;
	function anchorAt(pos:QPoint):QString;
	function overwriteMode():Bool;
	function setOverwriteMode(overwrite:Bool):Void;
	function tabStopWidth():Int;
	function setTabStopWidth(width:Int):Void;
	function acceptRichText():Bool;
	function setAcceptRichText(accept:Bool):Void;
	function setTextInteractionFlags(flags:QtTextInteractionFlags):Void;
	function textInteractionFlags():QtTextInteractionFlags;
	function setCursorWidth(width:Int):Void;
	function cursorWidth():Int;
	function setExtraSelections(selections:QList<ExtraSelection>):Void;
	function extraSelections():QList<ExtraSelection>;
	function canPaste():Bool;
	function moveCursor(operation:QTextCursorMoveOperation, ?mode:QTextCursorMoveMode):Void;
	@:overload(function(printer:QPagedPaintDevice):Void {})
	function print(printer:QPagedPaintDevice):Void;
	function setFontPointSize(s:Float):Void;
	function setFontFamily(fontFamily:QString):Void;
	function setFontWeight(w:Int):Void;
	function setFontUnderline(b:Bool):Void;
	function setFontItalic(b:Bool):Void;
	function setText(text:QString):Void;
	function setTextColor(c:QColor):Void;
	function setCurrentFont(f:QFont):Void;
	function setAlignment(a:QtAlignment):Void;
	function setPlainText(text:QString):Void;
	function setHtml(text:QString):Void;
	function cut():Void;
	function copy():Void;
	function paste():Void;
	function clear():Void;
	function selectAll():Void;
	function insertPlainText(text:QString):Void;
	function insertHtml(text:QString):Void;
	function scrollToAnchor(name:QString):Void;
	function redo():Void;
	function undo():Void;
	function zoomIn(?range:Int):Void;
	function zoomOut(?range:Int):Void;
	function event(e:QEvent):Bool;
	function timerEvent(e:QTimerEvent):Void;
	function keyPressEvent(e:QKeyEvent):Void;
	function keyReleaseEvent(e:QKeyEvent):Void;
	function resizeEvent(?v:QResizeEvent):Void;
	function paintEvent(e:QPaintEvent):Void;
	function mousePressEvent(e:QMouseEvent):Void;
	function mouseMoveEvent(e:QMouseEvent):Void;
	function mouseReleaseEvent(e:QMouseEvent):Void;
	function mouseDoubleClickEvent(e:QMouseEvent):Void;
	function focusNextPrevChild(next:Bool):Bool;
	function contextMenuEvent(e:QContextMenuEvent):Void;
	function dragEnterEvent(e:QDragEnterEvent):Void;
	function dragLeaveEvent(e:QDragLeaveEvent):Void;
	function dragMoveEvent(e:QDragMoveEvent):Void;
	function dropEvent(e:QDropEvent):Void;
	function focusInEvent(e:QFocusEvent):Void;
	function focusOutEvent(e:QFocusEvent):Void;
	function showEvent(?v:QShowEvent):Void;
	function changeEvent(e:QEvent):Void;
	function wheelEvent(e:QWheelEvent):Void;
	function createMimeDataFromSelection():QMimeData;
	function canInsertFromMimeData(source:QMimeData):Bool;
	function insertFromMimeData(source:QMimeData):Void;
	function inputMethodEvent(?v:QInputMethodEvent):Void;
	@:overload(function(query:QtInputMethodQuery, argument:QVariant):QVariant {})
	function inputMethodQuery(property:QtInputMethodQuery):QVariant;
	function scrollContentsBy(dx:Int, dy:Int):Void;
	function textBackgroundColor():QColor;
	function setTextBackgroundColor(c:QColor):Void;
	function setPlaceholderText(placeholderText:QString):Void;
	function placeholderText():QString;
	function tabStopDistance():Float;
	function setTabStopDistance(distance:Float):Void;
	function toMarkdown(?features:QTextDocumentMarkdownFeatures):QString;
	function setMarkdown(markdown:QString):Void;
}

@:pythonImport("PyQt5.QtWidgets", "ExtraSelection")
@:native("ExtraSelection")
extern class ExtraSelection {
}

@:pythonImport("PyQt5.QtWidgets", "LineWrapMode")
@:native("QTextEdit.LineWrapMode")
extern enum abstract QTextEditLineWrapMode(Int) from Int to Int {
	var NoWrap;
	var WidgetWidth;
	var FixedPixelWidth;
	var FixedColumnWidth;
}

@:pythonImport("PyQt5.QtWidgets", "AutoFormattingFlag")
@:native("QTextEdit.AutoFormattingFlag")
extern enum abstract QTextEditAutoFormattingFlag(Int) from Int to Int {
	var AutoNone;
	var AutoBulletList;
	var AutoAll;
}

