package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QLayout;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QLayoutItem;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QRect;

@:pythonImport("PyQt5.QtWidgets", "QBoxLayout")
@:native("QBoxLayout")
extern class QBoxLayout extends QLayout {
	function new(direction:QBoxLayoutDirection, ?parent:QWidget);

	function direction():QBoxLayoutDirection;
	function setDirection(?v:QBoxLayoutDirection):Void;
	function addSpacing(size:Int):Void;
	function addStretch(?stretch:Int):Void;
	function addWidget(?v:QWidget, ?stretch:Int, ?alignment:QtAlignment):Void;
	function addLayout(layout:QLayout, ?stretch:Int):Void;
	function addStrut(?v:Int):Void;
	function addItem(?v:QLayoutItem):Void;
	function insertSpacing(index:Int, size:Int):Void;
	function insertStretch(index:Int, ?stretch:Int):Void;
	function insertWidget(index:Int, widget:QWidget, ?stretch:Int, ?alignment:QtAlignment):Void;
	function insertLayout(index:Int, layout:QLayout, ?stretch:Int):Void;
	@:overload(function(l:QLayout, stretch:Int):Bool {})
	function setStretchFactor(w:QWidget, stretch:Int):Bool;
	function sizeHint():QSize;
	function minimumSize():QSize;
	function maximumSize():QSize;
	function hasHeightForWidth():Bool;
	function heightForWidth(?v:Int):Int;
	function minimumHeightForWidth(?v:Int):Int;
	function expandingDirections():QtOrientations;
	function invalidate():Void;
	function itemAt(?v:Int):QLayoutItem;
	function takeAt(?v:Int):QLayoutItem;
	function count():Int;
	function setGeometry(?v:QRect):Void;
	function spacing():Int;
	function setSpacing(spacing:Int):Void;
	function addSpacerItem(spacerItem:QSpacerItem):Void;
	function insertSpacerItem(index:Int, spacerItem:QSpacerItem):Void;
	function setStretch(index:Int, stretch:Int):Void;
	function stretch(index:Int):Int;
	function insertItem(index:Int, ?v:QLayoutItem):Void;
}

@:pythonImport("PyQt5.QtWidgets", "Direction")
@:native("QBoxLayout.Direction")
extern enum abstract QBoxLayoutDirection(Int) from Int to Int {
	var LeftToRight;
	var RightToLeft;
	var TopToBottom;
	var BottomToTop;
	var Down;
	var Up;
}

@:pythonImport("PyQt5.QtWidgets", "QHBoxLayout")
@:native("QHBoxLayout")
extern class QHBoxLayout extends QBoxLayout {
	@:overload(function():QHBoxLayout {})
	function new(parent:QWidget);
}

@:pythonImport("PyQt5.QtWidgets", "QVBoxLayout")
@:native("QVBoxLayout")
extern class QVBoxLayout extends QBoxLayout {
	@:overload(function():QVBoxLayout {})
	function new(parent:QWidget);
}

