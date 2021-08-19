package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QSignal;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QGroupBox")
@:native("QGroupBox")
extern class QGroupBox extends QWidget {
	var clicked:QSignal1<Bool>;
	var toggled:QSignal1<Bool>;

	@:overload(function(?parent:QWidget):QGroupBox {})
	function new(title:QString, ?parent:QWidget);

	function title():QString;
	function setTitle(?v:QString):Void;
	function alignment():QtAlignment;
	function setAlignment(?v:Int):Void;
	function minimumSizeHint():QSize;
	function isFlat():Bool;
	function setFlat(b:Bool):Void;
	function isCheckable():Bool;
	function setCheckable(b:Bool):Void;
	function isChecked():Bool;
	function setChecked(b:Bool):Void;
	function initStyleOption(option:QStyleOptionGroupBox):Void;
	function event(?v:QEvent):Bool;
	function childEvent(?v:QChildEvent):Void;
	function resizeEvent(?v:QResizeEvent):Void;
	function paintEvent(?v:QPaintEvent):Void;
	function focusInEvent(?v:QFocusEvent):Void;
	function changeEvent(?v:QEvent):Void;
	function mousePressEvent(event:QMouseEvent):Void;
	function mouseMoveEvent(event:QMouseEvent):Void;
	function mouseReleaseEvent(event:QMouseEvent):Void;
}

