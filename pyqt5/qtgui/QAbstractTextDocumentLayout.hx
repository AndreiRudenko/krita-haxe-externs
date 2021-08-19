package pyqt5.qtgui;

import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QTextDocument;
import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QTextObject;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QPaintDevice;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QTextLayout;
import pyqt5.qtgui.QTextFormat;

@:pythonImport("PyQt5.QtGui", "QAbstractTextDocumentLayout")
@:native("QAbstractTextDocumentLayout")
extern class QAbstractTextDocumentLayout extends QObject {
	var update:QSignal1<QRectF>;
	var documentSizeChanged:QSignal1<QSizeF>;
	var pageCountChanged:QSignal1<Int>;
	var updateBlock:QSignal1<QTextBlock>;

	function new(doc:QTextDocument);

	function draw(painter:QPainter, context:PaintContext):Void;
	function hitTest(point:QPointF, accuracy:QtHitTestAccuracy):Int;
	function anchorAt(pos:QPointF):QString;
	function pageCount():Int;
	function documentSize():QSizeF;
	function frameBoundingRect(frame:QTextFrame):QRectF;
	function blockBoundingRect(block:QTextBlock):QRectF;
	function setPaintDevice(device:QPaintDevice):Void;
	function paintDevice():QPaintDevice;
	function document():QTextDocument;
	function registerHandler(objectType:Int, component:QObject):Void;
	function unregisterHandler(objectType:Int, ?component:QObject):Void;
	function handlerForObject(objectType:Int):QTextObjectInterface;
	function documentChanged(from:Int, charsRemoved:Int, charsAdded:Int):Void;
	function resizeInlineObject(item:QTextInlineObject, posInDocument:Int, format:QTextFormat):Void;
	function positionInlineObject(item:QTextInlineObject, posInDocument:Int, format:QTextFormat):Void;
	function drawInlineObject(painter:QPainter, rect:QRectF, object:QTextInlineObject, posInDocument:Int, format:QTextFormat):Void;
	function format(pos:Int):QTextCharFormat;
	function imageAt(pos:QPointF):QString;
	function formatAt(pos:QPointF):QTextFormat;
	function blockWithMarkerAt(pos:QPointF):QTextBlock;
}

@:pythonImport("PyQt5.QtGui", "Selection")
@:native("Selection")
extern class Selection {
}

@:pythonImport("PyQt5.QtGui", "PaintContext")
@:native("PaintContext")
extern class PaintContext {
	function new();
}

@:pythonImport("PyQt5.QtGui", "QTextObjectInterface")
@:native("QTextObjectInterface")
extern class QTextObjectInterface {
	function intrinsicSize(doc:QTextDocument, posInDocument:Int, format:QTextFormat):QSizeF;
	function drawObject(painter:QPainter, rect:QRectF, doc:QTextDocument, posInDocument:Int, format:QTextFormat):Void;
}

