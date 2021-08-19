package pyqt5.qtgui;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import python.Tuple;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtgui.QImage;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtGui", "QClipboard")
@:native("QClipboard")
extern class QClipboard extends QObject {
	var changed:QSignal1<QClipboardMode>;
	var dataChanged:QSignal0;
	var findBufferChanged:QSignal0;
	var selectionChanged:QSignal0;

	@:overload(function(parent:QObject):QClipboard {})
	function new(?v:QClipboard);

	function clear(?mode:QClipboardMode):Void;
	function supportsFindBuffer():Bool;
	function supportsSelection():Bool;
	function ownsClipboard():Bool;
	function ownsFindBuffer():Bool;
	function ownsSelection():Bool;
	@:overload(function(subtype:QString, ?mode:QClipboardMode):Tuple2<QString, QString> {})
	function text(?mode:QClipboardMode):QString;
	function setText(?v:QString, ?mode:QClipboardMode):Void;
	function mimeData(?mode:QClipboardMode):QMimeData;
	function setMimeData(data:QMimeData, ?mode:QClipboardMode):Void;
	function image(?mode:QClipboardMode):QImage;
	function pixmap(?mode:QClipboardMode):QPixmap;
	function setImage(?v:QImage, ?mode:QClipboardMode):Void;
	function setPixmap(?v:QPixmap, ?mode:QClipboardMode):Void;
}

@:pythonImport("PyQt5.QtGui", "QClipboard")
@:native("QClipboard")
extern enum abstract QClipboardMode(Int) from Int to Int {
	var Clipboard;
	var Selection;
	var FindBuffer;
}

