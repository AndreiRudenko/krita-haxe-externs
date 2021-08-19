package pyqt5.qtgui;

import pyqt5.qtgui.QTextObject;
import pyqt5.qtgui.QTextDocument;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QTextFormat;

@:pythonImport("PyQt5.QtGui", "QTextList")
@:native("QTextList")
extern class QTextList extends QTextBlockGroup {
	@:overload(function(doc:QTextDocument):QTextList {})
	function new(?v:QTextList);

	function count():Int;
	function item(i:Int):QTextBlock;
	function itemNumber(?v:QTextBlock):Int;
	function itemText(?v:QTextBlock):QString;
	function removeItem(i:Int):Void;
	function remove(?v:QTextBlock):Void;
	function add(block:QTextBlock):Void;
	function format():QTextListFormat;
	function setFormat(aformat:QTextListFormat):Void;
}

