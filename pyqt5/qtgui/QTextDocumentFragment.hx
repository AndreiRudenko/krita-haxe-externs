package pyqt5.qtgui;

import pyqt5.qtgui.QTextDocument;
import pyqt5.qtgui.QTextCursor;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QByteArray;

@:pythonImport("PyQt5.QtGui", "QTextDocumentFragment")
@:native("QTextDocumentFragment")
extern class QTextDocumentFragment {
	static function fromPlainText(plainText:QString):QTextDocumentFragment;
	@:overload(function(html:QString, resourceProvider:QTextDocument):QTextDocumentFragment {})
	static function fromHtml(html:QString):QTextDocumentFragment;

	@:overload(function():QTextDocumentFragment {})
	@:overload(function(document:QTextDocument):QTextDocumentFragment {})
	@:overload(function(range:QTextCursor):QTextDocumentFragment {})
	function new(rhs:QTextDocumentFragment);

	function isEmpty():Bool;
	function toPlainText():QString;
	function toHtml(?encoding:QByteArray):QString;
}

