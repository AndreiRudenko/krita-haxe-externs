package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QSignal;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QProgressBar")
@:native("QProgressBar")
extern class QProgressBar extends QWidget {
	var valueChanged:QSignal1<Int>;

	function new(?parent:QWidget);

	function minimum():Int;
	function maximum():Int;
	function setRange(minimum:Int, maximum:Int):Void;
	function value():Int;
	function text():QString;
	function setTextVisible(visible:Bool):Void;
	function isTextVisible():Bool;
	function alignment():QtAlignment;
	function setAlignment(alignment:QtAlignment):Void;
	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function orientation():QtOrientation;
	function setInvertedAppearance(invert:Bool):Void;
	function setTextDirection(textDirection:QProgressBarDirection):Void;
	function setFormat(format:QString):Void;
	function format():QString;
	function resetFormat():Void;
	function reset():Void;
	function setMinimum(minimum:Int):Void;
	function setMaximum(maximum:Int):Void;
	function setValue(value:Int):Void;
	function setOrientation(?v:QtOrientation):Void;
	function initStyleOption(option:QStyleOptionProgressBar):Void;
	function event(e:QEvent):Bool;
	function paintEvent(?v:QPaintEvent):Void;
}

@:pythonImport("PyQt5.QtWidgets", "Direction")
@:native("QProgressBar.Direction")
extern enum abstract QProgressBarDirection(Int) from Int to Int {
	var TopToBottom;
	var BottomToTop;
}

