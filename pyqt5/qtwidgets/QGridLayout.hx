package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QLayout;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QLayoutItem;

@:pythonImport("PyQt5.QtWidgets", "QGridLayout")
@:native("QGridLayout")
extern class QGridLayout extends QLayout {
	@:overload(function(parent:QWidget):QGridLayout {})
	function new();

	function sizeHint():QSize;
	function minimumSize():QSize;
	function maximumSize():QSize;
	function setRowStretch(row:Int, stretch:Int):Void;
	function setColumnStretch(column:Int, stretch:Int):Void;
	function rowStretch(row:Int):Int;
	function columnStretch(column:Int):Int;
	function setRowMinimumHeight(row:Int, minSize:Int):Void;
	function setColumnMinimumWidth(column:Int, minSize:Int):Void;
	function rowMinimumHeight(row:Int):Int;
	function columnMinimumWidth(column:Int):Int;
	function columnCount():Int;
	function rowCount():Int;
	function cellRect(row:Int, column:Int):QRect;
	function hasHeightForWidth():Bool;
	function heightForWidth(?v:Int):Int;
	function minimumHeightForWidth(?v:Int):Int;
	function expandingDirections():QtOrientations;
	function invalidate():Void;
	@:overload(function(?v:QWidget, row:Int, column:Int, ?alignment:QtAlignment):Void {})
	@:overload(function(?v:QWidget, row:Int, column:Int, rowSpan:Int, columnSpan:Int, ?alignment:QtAlignment):Void {})
	function addWidget(w:QWidget):Void;
	@:overload(function(?v:QLayout, row:Int, column:Int, rowSpan:Int, columnSpan:Int, ?alignment:QtAlignment):Void {})
	function addLayout(?v:QLayout, row:Int, column:Int, ?alignment:QtAlignment):Void;
	function setOriginCorner(?v:QtCorner):Void;
	function originCorner():QtCorner;
	function itemAt(?v:Int):QLayoutItem;
	function takeAt(?v:Int):QLayoutItem;
	function count():Int;
	function setGeometry(?v:QRect):Void;
	@:overload(function(?v:QLayoutItem):Void {})
	function addItem(item:QLayoutItem, row:Int, column:Int, ?rowSpan:Int, ?columnSpan:Int, ?alignment:QtAlignment):Void;
	function setDefaultPositioning(n:Int, orient:QtOrientation):Void;
	function getItemPosition(idx:Int, row:Int, column:Int, rowSpan:Int, columnSpan:Int):Void;
	function setHorizontalSpacing(spacing:Int):Void;
	function horizontalSpacing():Int;
	function setVerticalSpacing(spacing:Int):Void;
	function verticalSpacing():Int;
	function setSpacing(spacing:Int):Void;
	function spacing():Int;
	function itemAtPosition(row:Int, column:Int):QLayoutItem;
}

