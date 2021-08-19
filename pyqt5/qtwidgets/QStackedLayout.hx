package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QLayout;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtwidgets.QLayoutItem;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtWidgets", "QStackedLayout")
@:native("QStackedLayout")
extern class QStackedLayout extends QLayout {
	var widgetRemoved:QSignal1<Int>;
	var currentChanged:QSignal1<Int>;

	@:overload(function():QStackedLayout {})
	@:overload(function(parent:QWidget):QStackedLayout {})
	function new(parentLayout:QLayout);

	function addWidget(w:QWidget):Int;
	function insertWidget(index:Int, w:QWidget):Int;
	function currentWidget():QWidget;
	function currentIndex():Int;
	@:overload(function():QWidget {})
	function widget(?v:Int):QWidget;
	function count():Int;
	function addItem(item:QLayoutItem):Void;
	function sizeHint():QSize;
	function minimumSize():QSize;
	function itemAt(?v:Int):QLayoutItem;
	function takeAt(?v:Int):QLayoutItem;
	function setGeometry(rect:QRect):Void;
	function setCurrentIndex(index:Int):Void;
	function setCurrentWidget(w:QWidget):Void;
	function stackingMode():QStackedLayoutStackingMode;
	function setStackingMode(stackingMode:QStackedLayoutStackingMode):Void;
	function hasHeightForWidth():Bool;
	function heightForWidth(width:Int):Int;
}

@:pythonImport("PyQt5.QtWidgets", "StackingMode")
@:native("QStackedLayout.StackingMode")
extern enum abstract QStackedLayoutStackingMode(Int) from Int to Int {
	var StackOne;
	var StackAll;
}

