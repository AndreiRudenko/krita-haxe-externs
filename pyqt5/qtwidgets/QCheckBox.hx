package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractButton;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtwidgets.QStyleOption;

@:pythonImport("PyQt5.QtWidgets", "QCheckBox")
@:native("QCheckBox")
extern class QCheckBox extends QAbstractButton {
	var stateChanged:QSignal1<Int>;

	@:overload(function(?parent:QWidget):QCheckBox {})
	function new(text:QString, ?parent:QWidget);

	function sizeHint():QSize;
	function setTristate(?on:Bool):Void;
	function isTristate():Bool;
	function checkState():QtCheckState;
	function setCheckState(state:QtCheckState):Void;
	function minimumSizeHint():QSize;
	function hitButton(pos:QPoint):Bool;
	function checkStateSet():Void;
	function nextCheckState():Void;
	function event(e:QEvent):Bool;
	function paintEvent(?v:QPaintEvent):Void;
	function mouseMoveEvent(?v:QMouseEvent):Void;
	function initStyleOption(option:QStyleOptionButton):Void;
}

