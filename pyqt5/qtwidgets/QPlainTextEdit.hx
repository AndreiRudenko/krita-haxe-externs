package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractScrollArea;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QTextDocument;
import pyqt5.qtgui.QTextCursor;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QTextFormat;
import pyqt5.qtgui.QTextOption;
import pyqt5.qtcore.QUrl;
import pyqt5.qtcore.QVariant;
import pyqt5.qtwidgets.QMenu;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QRect;
import pyqt5.qtwidgets.QTextEdit;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QPagedPaintDevice;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtgui.QTextObject;
import pyqt5.qtgui.QAbstractTextDocumentLayout;
import pyqt5.qtcore.QRegExp;
import pyqt5.qtcore.QRegularExpression;
import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.QSize;

@:pythonImport("PyQt5.QtWidgets", "QPlainTextEdit")
@:native("QPlainTextEdit")
extern class QPlainTextEdit extends QAbstractScrollArea {
	var textChanged:QSignal0;
	var undoAvailable:QSignal1<Bool>;
	var redoAvailable:QSignal1<Bool>;
	var copyAvailable:QSignal1<Bool>;
	var selectionChanged:QSignal0;
	var cursorPositionChanged:QSignal0;
	var updateRequest:QSignal2<QRect, Int>;
	var blockCountChanged:QSignal1<Int>;
	var modificationChanged:QSignal1<Bool>;

	@:overload(function(?parent:QWidget):QPlainTextEdit {})
	function new(text:QString, ?parent:QWidget);

	function setDocument(document:QTextDocument):Void;
	function document():QTextDocument;
	function setTextCursor(cursor:QTextCursor):Void;
	function textCursor():QTextCursor;
	function isReadOnly():Bool;
	function setReadOnly(ro:Bool):Void;
	function setTextInteractionFlags(flags:QtTextInteractionFlags):Void;
	function textInteractionFlags():QtTextInteractionFlags;
	function mergeCurrentCharFormat(modifier:QTextCharFormat):Void;
	function setCurrentCharFormat(format:QTextCharFormat):Void;
	function currentCharFormat():QTextCharFormat;
	function tabChangesFocus():Bool;
	function setTabChangesFocus(b:Bool):Void;
	function setDocumentTitle(title:QString):Void;
	function documentTitle():QString;
	function isUndoRedoEnabled():Bool;
	function setUndoRedoEnabled(enable:Bool):Void;
	function setMaximumBlockCount(maximum:Int):Void;
	function maximumBlockCount():Int;
	function lineWrapMode():QPlainTextEditLineWrapMode;
	function setLineWrapMode(mode:QPlainTextEditLineWrapMode):Void;
	function wordWrapMode():QTextOptionWrapMode;
	function setWordWrapMode(policy:QTextOptionWrapMode):Void;
	function setBackgroundVisible(visible:Bool):Void;
	function backgroundVisible():Bool;
	function setCenterOnScroll(enabled:Bool):Void;
	function centerOnScroll():Bool;
	@:overload(function(exp:QRegExp, ?options:QTextDocumentFindFlags):Bool {})
	@:overload(function(exp:QRegularExpression, ?options:QTextDocumentFindFlags):Bool {})
	function find(exp:QString, ?options:QTextDocumentFindFlags):Bool;
	function toPlainText():QString;
	function ensureCursorVisible():Void;
	function loadResource(type:Int, name:QUrl):QVariant;
	@:overload(function(position:QPoint):QMenu {})
	function createStandardContextMenu():QMenu;
	function cursorForPosition(pos:QPoint):QTextCursor;
	@:overload(function():QRect {})
	function cursorRect(cursor:QTextCursor):QRect;
	function overwriteMode():Bool;
	function setOverwriteMode(overwrite:Bool):Void;
	function tabStopWidth():Int;
	function setTabStopWidth(width:Int):Void;
	function cursorWidth():Int;
	function setCursorWidth(width:Int):Void;
	function setExtraSelections(selections:QList<ExtraSelection>):Void;
	function extraSelections():QList<ExtraSelection>;
	function moveCursor(operation:QTextCursorMoveOperation, ?mode:QTextCursorMoveMode):Void;
	function canPaste():Bool;
	@:overload(function(printer:QPagedPaintDevice):Void {})
	function print(printer:QPagedPaintDevice):Void;
	function blockCount():Int;
	function setPlainText(text:QString):Void;
	function cut():Void;
	function copy():Void;
	function paste():Void;
	function undo():Void;
	function redo():Void;
	function clear():Void;
	function selectAll():Void;
	function insertPlainText(text:QString):Void;
	function appendPlainText(text:QString):Void;
	function appendHtml(html:QString):Void;
	function centerCursor():Void;
	function event(e:QEvent):Bool;
	function timerEvent(e:QTimerEvent):Void;
	function keyPressEvent(e:QKeyEvent):Void;
	function keyReleaseEvent(e:QKeyEvent):Void;
	function resizeEvent(e:QResizeEvent):Void;
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
	function inputMethodEvent(?v:QInputMethodEvent):Void;
	@:overload(function(query:QtInputMethodQuery, argument:QVariant):QVariant {})
	function inputMethodQuery(property:QtInputMethodQuery):QVariant;
	function createMimeDataFromSelection():QMimeData;
	function canInsertFromMimeData(source:QMimeData):Bool;
	function insertFromMimeData(source:QMimeData):Void;
	function scrollContentsBy(dx:Int, dy:Int):Void;
	function firstVisibleBlock():QTextBlock;
	function contentOffset():QPointF;
	function blockBoundingRect(block:QTextBlock):QRectF;
	function blockBoundingGeometry(block:QTextBlock):QRectF;
	function getPaintContext():PaintContext;
	function anchorAt(pos:QPoint):QString;
	function zoomIn(?range:Int):Void;
	function zoomOut(?range:Int):Void;
	function setPlaceholderText(placeholderText:QString):Void;
	function placeholderText():QString;
	function tabStopDistance():Float;
	function setTabStopDistance(distance:Float):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QPlainTextEdit")
@:native("QPlainTextEdit")
extern enum abstract QPlainTextEditLineWrapMode(Int) from Int to Int {
	var NoWrap;
	var WidgetWidth;
}

@:pythonImport("PyQt5.QtWidgets", "QPlainTextDocumentLayout")
@:native("QPlainTextDocumentLayout")
extern class QPlainTextDocumentLayout extends QAbstractTextDocumentLayout {
	function new(document:QTextDocument);

	function draw(?v:QPainter, ?v:PaintContext):Void;
	function hitTest(?v:QPointF, ?v:QtHitTestAccuracy):Int;
	function pageCount():Int;
	function documentSize():QSizeF;
	function frameBoundingRect(?v:QTextFrame):QRectF;
	function blockBoundingRect(block:QTextBlock):QRectF;
	function ensureBlockLayout(block:QTextBlock):Void;
	function setCursorWidth(width:Int):Void;
	function cursorWidth():Int;
	function requestUpdate():Void;
	function documentChanged(from:Int, ?v:Int, charsAdded:Int):Void;
}

