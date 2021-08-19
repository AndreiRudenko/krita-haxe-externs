package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QFrame;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QSplitter")
@:native("QSplitter")
extern class QSplitter extends QFrame {
	var splitterMoved:QSignal2<Int, Int>;

	@:overload(function(?parent:QWidget):QSplitter {})
	function new(orientation:QtOrientation, ?parent:QWidget);

	function addWidget(widget:QWidget):Void;
	function insertWidget(index:Int, widget:QWidget):Void;
	function setOrientation(?v:QtOrientation):Void;
	function orientation():QtOrientation;
	function setChildrenCollapsible(?v:Bool):Void;
	function childrenCollapsible():Bool;
	function setCollapsible(index:Int, ?v:Bool):Void;
	function isCollapsible(index:Int):Bool;
	function setOpaqueResize(?opaque:Bool):Void;
	function opaqueResize():Bool;
	function refresh():Void;
	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function sizes():QList<Int>;
	function setSizes(list:QList<Int>):Void;
	function saveState():QByteArray;
	function restoreState(state:QByteArray):Bool;
	function handleWidth():Int;
	function setHandleWidth(?v:Int):Void;
	function indexOf(w:QWidget):Int;
	function widget(index:Int):QWidget;
	function count():Int;
	function getRange(index:Int, ?v:Int, ?v:Int):Void;
	function handle(index:Int):QSplitterHandle;
	function setStretchFactor(index:Int, stretch:Int):Void;
	function replaceWidget(index:Int, widget:QWidget):QWidget;
	function createHandle():QSplitterHandle;
	function childEvent(?v:QChildEvent):Void;
	function event(?v:QEvent):Bool;
	function resizeEvent(?v:QResizeEvent):Void;
	function changeEvent(?v:QEvent):Void;
	function moveSplitter(pos:Int, index:Int):Void;
	function setRubberBand(position:Int):Void;
	function closestLegalPosition(?v:Int, ?v:Int):Int;
}

@:pythonImport("PyQt5.QtWidgets", "QSplitterHandle")
@:native("QSplitterHandle")
extern class QSplitterHandle extends QWidget {
	function new(o:QtOrientation, parent:QSplitter);

	function setOrientation(o:QtOrientation):Void;
	function orientation():QtOrientation;
	function opaqueResize():Bool;
	function splitter():QSplitter;
	function sizeHint():QSize;
	function paintEvent(?v:QPaintEvent):Void;
	function mouseMoveEvent(?v:QMouseEvent):Void;
	function mousePressEvent(?v:QMouseEvent):Void;
	function mouseReleaseEvent(?v:QMouseEvent):Void;
	function event(?v:QEvent):Bool;
	function moveSplitter(p:Int):Void;
	function closestLegalPosition(p:Int):Int;
	function resizeEvent(?v:QResizeEvent):Void;
}

