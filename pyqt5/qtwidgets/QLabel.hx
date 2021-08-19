package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QFrame;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtgui.QPicture;
import pyqt5.qtgui.QMovie;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QLabel")
@:native("QLabel")
extern class QLabel extends QFrame {
	var linkActivated:QSignal1<QString>;
	var linkHovered:QSignal1<QString>;

	@:overload(function(?parent:QWidget, ?flags:QtWindowFlags):QLabel {})
	function new(text:QString, ?parent:QWidget, ?flags:QtWindowFlags);

	function text():QString;
	function pixmap():QPixmap;
	function picture():QPicture;
	function movie():QMovie;
	function textFormat():QtTextFormat;
	function setTextFormat(?v:QtTextFormat):Void;
	function alignment():QtAlignment;
	function setAlignment(?v:QtAlignment):Void;
	function setWordWrap(on:Bool):Void;
	function wordWrap():Bool;
	function indent():Int;
	function setIndent(?v:Int):Void;
	function margin():Int;
	function setMargin(?v:Int):Void;
	function hasScaledContents():Bool;
	function setScaledContents(?v:Bool):Void;
	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function setBuddy(?v:QWidget):Void;
	function buddy():QWidget;
	function heightForWidth(?v:Int):Int;
	function openExternalLinks():Bool;
	function setTextInteractionFlags(flags:QtTextInteractionFlags):Void;
	function textInteractionFlags():QtTextInteractionFlags;
	function setOpenExternalLinks(open:Bool):Void;
	function clear():Void;
	function setMovie(movie:QMovie):Void;
	@:overload(function(?v:Int):Void {})
	function setNum(?v:Float):Void;
	function setPicture(?v:QPicture):Void;
	function setPixmap(?v:QPixmap):Void;
	function setText(?v:QString):Void;
	function event(e:QEvent):Bool;
	function paintEvent(?v:QPaintEvent):Void;
	function changeEvent(?v:QEvent):Void;
	function keyPressEvent(ev:QKeyEvent):Void;
	function mousePressEvent(ev:QMouseEvent):Void;
	function mouseMoveEvent(ev:QMouseEvent):Void;
	function mouseReleaseEvent(ev:QMouseEvent):Void;
	function contextMenuEvent(ev:QContextMenuEvent):Void;
	function focusInEvent(ev:QFocusEvent):Void;
	function focusOutEvent(ev:QFocusEvent):Void;
	function focusNextPrevChild(next:Bool):Bool;
	function setSelection(?v:Int, ?v:Int):Void;
	function hasSelectedText():Bool;
	function selectedText():QString;
	function selectionStart():Int;
}

