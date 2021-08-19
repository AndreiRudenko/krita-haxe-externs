package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QGraphicsLayout;
import pyqt5.qtwidgets.QGraphicsLayoutItem;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QSize;

@:pythonImport("PyQt5.QtWidgets", "QGraphicsGridLayout")
@:native("QGraphicsGridLayout")
extern class QGraphicsGridLayout extends QGraphicsLayout {
	function new(?parent:QGraphicsLayoutItem);

	@:overload(function(item:QGraphicsLayoutItem, row:Int, column:Int, ?alignment:QtAlignment):Void {})
	function addItem(item:QGraphicsLayoutItem, row:Int, column:Int, rowSpan:Int, columnSpan:Int, ?alignment:QtAlignment):Void;
	function setHorizontalSpacing(spacing:Float):Void;
	function horizontalSpacing():Float;
	function setVerticalSpacing(spacing:Float):Void;
	function verticalSpacing():Float;
	function setSpacing(spacing:Float):Void;
	function setRowSpacing(row:Int, spacing:Float):Void;
	function rowSpacing(row:Int):Float;
	function setColumnSpacing(column:Int, spacing:Float):Void;
	function columnSpacing(column:Int):Float;
	function setRowStretchFactor(row:Int, stretch:Int):Void;
	function rowStretchFactor(row:Int):Int;
	function setColumnStretchFactor(column:Int, stretch:Int):Void;
	function columnStretchFactor(column:Int):Int;
	function setRowMinimumHeight(row:Int, height:Float):Void;
	function rowMinimumHeight(row:Int):Float;
	function setRowPreferredHeight(row:Int, height:Float):Void;
	function rowPreferredHeight(row:Int):Float;
	function setRowMaximumHeight(row:Int, height:Float):Void;
	function rowMaximumHeight(row:Int):Float;
	function setRowFixedHeight(row:Int, height:Float):Void;
	function setColumnMinimumWidth(column:Int, width:Float):Void;
	function columnMinimumWidth(column:Int):Float;
	function setColumnPreferredWidth(column:Int, width:Float):Void;
	function columnPreferredWidth(column:Int):Float;
	function setColumnMaximumWidth(column:Int, width:Float):Void;
	function columnMaximumWidth(column:Int):Float;
	function setColumnFixedWidth(column:Int, width:Float):Void;
	function setRowAlignment(row:Int, alignment:QtAlignment):Void;
	function rowAlignment(row:Int):QtAlignment;
	function setColumnAlignment(column:Int, alignment:QtAlignment):Void;
	function columnAlignment(column:Int):QtAlignment;
	function setAlignment(item:QGraphicsLayoutItem, alignment:QtAlignment):Void;
	function alignment(item:QGraphicsLayoutItem):QtAlignment;
	function rowCount():Int;
	function columnCount():Int;
	@:overload(function(index:Int):QGraphicsLayoutItem {})
	function itemAt(row:Int, column:Int):QGraphicsLayoutItem;
	function count():Int;
	function removeAt(index:Int):Void;
	function invalidate():Void;
	function setGeometry(rect:QRectF):Void;
	function sizeHint(which:QtSizeHint, ?constraint:QSizeF):QSizeF;
	function removeItem(item:QGraphicsLayoutItem):Void;
}

