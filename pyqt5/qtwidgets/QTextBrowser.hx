package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QTextEdit;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QUrl;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtgui.QTextDocument;

@:pythonImport("PyQt5.QtWidgets", "QTextBrowser")
@:native("QTextBrowser")
extern class QTextBrowser extends QTextEdit {
	var backwardAvailable:QSignal1<Bool>;
	var forwardAvailable:QSignal1<Bool>;
	var sourceChanged:QSignal1<QUrl>;
	var highlighted:QSignal1<QString>;
	var anchorClicked:QSignal1<QUrl>;
	var historyChanged:QSignal0;

	function new(?parent:QWidget);

	function source():QUrl;
	function searchPaths():QStringList;
	function setSearchPaths(paths:QStringList):Void;
	function loadResource(type:Int, name:QUrl):QVariant;
	@:overload(function(name:QUrl, type:QTextDocumentResourceType):Void {})
	function setSource(name:QUrl):Void;
	function backward():Void;
	function forward():Void;
	function home():Void;
	function reload():Void;
	function event(e:QEvent):Bool;
	function keyPressEvent(ev:QKeyEvent):Void;
	function mouseMoveEvent(ev:QMouseEvent):Void;
	function mousePressEvent(ev:QMouseEvent):Void;
	function mouseReleaseEvent(ev:QMouseEvent):Void;
	function focusOutEvent(ev:QFocusEvent):Void;
	function focusNextPrevChild(next:Bool):Bool;
	function paintEvent(e:QPaintEvent):Void;
	function isBackwardAvailable():Bool;
	function isForwardAvailable():Bool;
	function clearHistory():Void;
	function openExternalLinks():Bool;
	function setOpenExternalLinks(open:Bool):Void;
	function openLinks():Bool;
	function setOpenLinks(open:Bool):Void;
	function historyTitle(?v:Int):QString;
	function historyUrl(?v:Int):QUrl;
	function backwardHistoryCount():Int;
	function forwardHistoryCount():Int;
	function sourceType():QTextDocumentResourceType;
	function doSetSource(name:QUrl, ?type:QTextDocumentResourceType):Void;
}

