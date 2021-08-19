package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QKeySequence;
import pyqt5.qtwidgets.QButtonGroup;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtWidgets", "QAbstractButton")
@:native("QAbstractButton")
extern class QAbstractButton extends QWidget {
	var pressed:QSignal0;
	var released:QSignal0;
	var clicked:QSignal1<Bool>;
	var toggled:QSignal1<Bool>;

	function new(?parent:QWidget);

	function setAutoRepeatDelay(?v:Int):Void;
	function autoRepeatDelay():Int;
	function setAutoRepeatInterval(?v:Int):Void;
	function autoRepeatInterval():Int;
	function setText(text:QString):Void;
	function text():QString;
	function setIcon(icon:QIcon):Void;
	function icon():QIcon;
	function iconSize():QSize;
	function setShortcut(key:QKeySequence):Void;
	function shortcut():QKeySequence;
	function setCheckable(?v:Bool):Void;
	function isCheckable():Bool;
	function isChecked():Bool;
	function setDown(?v:Bool):Void;
	function isDown():Bool;
	function setAutoRepeat(?v:Bool):Void;
	function autoRepeat():Bool;
	function setAutoExclusive(?v:Bool):Void;
	function autoExclusive():Bool;
	function group():QButtonGroup;
	function setIconSize(size:QSize):Void;
	function animateClick(?msecs:Int):Void;
	function click():Void;
	function toggle():Void;
	function setChecked(?v:Bool):Void;
	function paintEvent(e:QPaintEvent):Void;
	function hitButton(pos:QPoint):Bool;
	function checkStateSet():Void;
	function nextCheckState():Void;
	function event(e:QEvent):Bool;
	function keyPressEvent(e:QKeyEvent):Void;
	function keyReleaseEvent(e:QKeyEvent):Void;
	function mousePressEvent(e:QMouseEvent):Void;
	function mouseReleaseEvent(e:QMouseEvent):Void;
	function mouseMoveEvent(e:QMouseEvent):Void;
	function focusInEvent(e:QFocusEvent):Void;
	function focusOutEvent(e:QFocusEvent):Void;
	function changeEvent(e:QEvent):Void;
	function timerEvent(e:QTimerEvent):Void;
}

