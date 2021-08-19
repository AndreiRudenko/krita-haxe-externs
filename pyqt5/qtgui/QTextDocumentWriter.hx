package pyqt5.qtgui;

import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QTextDocument;
import pyqt5.qtgui.QTextDocumentFragment;
import pyqt5.qtcore.QTextCodec;
import pyqt5.qtcore.QList;

@:pythonImport("PyQt5.QtGui", "QTextDocumentWriter")
@:native("QTextDocumentWriter")
extern class QTextDocumentWriter {
	static function supportedDocumentFormats():QList<QByteArray>;

	@:overload(function():QTextDocumentWriter {})
	@:overload(function(device:QIODevice, format:QByteArray):QTextDocumentWriter {})
	@:overload(function(fileName:QString, ?format:QByteArray):QTextDocumentWriter {})
	function new(?v:QTextDocumentWriter);

	function setFormat(format:QByteArray):Void;
	function format():QByteArray;
	function setDevice(device:QIODevice):Void;
	function device():QIODevice;
	function setFileName(fileName:QString):Void;
	function fileName():QString;
	@:overload(function(fragment:QTextDocumentFragment):Bool {})
	function write(document:QTextDocument):Bool;
	function setCodec(codec:QTextCodec):Void;
	function codec():QTextCodec;
}

