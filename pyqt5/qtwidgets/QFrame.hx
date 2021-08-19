package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtgui.QPainter;
import pyqt5.qtwidgets.QStyleOption;

@:pythonImport("PyQt5.QtWidgets", "QFrame")
@:native("QFrame")
extern class QFrame extends QWidget {
	function new(?parent:QWidget, ?flags:QtWindowFlags);

	function frameStyle():Int;
	function setFrameStyle(?v:Int):Void;
	function frameWidth():Int;
	function sizeHint():QSize;
	function frameShape():QFrameShape;
	function setFrameShape(?v:QFrameShape):Void;
	function frameShadow():QFrameShadow;
	function setFrameShadow(?v:QFrameShadow):Void;
	function lineWidth():Int;
	function setLineWidth(?v:Int):Void;
	function midLineWidth():Int;
	function setMidLineWidth(?v:Int):Void;
	function frameRect():QRect;
	function setFrameRect(?v:QRect):Void;
	function event(e:QEvent):Bool;
	function paintEvent(?v:QPaintEvent):Void;
	function changeEvent(?v:QEvent):Void;
	function drawFrame(?v:QPainter):Void;
	function initStyleOption(option:QStyleOptionFrame):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QFrame")
@:native("QFrame")
extern enum abstract QFrameShadow(Int) from Int to Int {
	var Plain;
	var Raised;
	var Sunken;
}

@:pythonImport("PyQt5.QtWidgets", "QFrame")
@:native("QFrame")
extern enum abstract QFrameShape(Int) from Int to Int {
	var NoFrame;
	var Box;
	var Panel;
	var WinPanel;
	var HLine;
	var VLine;
	var StyledPanel;
}

@:pythonImport("PyQt5.QtWidgets", "QFrame")
@:native("QFrame")
extern enum abstract QFrameStyleMask(Int) from Int to Int {
	var Shadow_Mask;
	var Shape_Mask;
}

