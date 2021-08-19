package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QGraphicsLayout;
import pyqt5.qtwidgets.QGraphicsLayoutItem;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QSize;

@:pythonImport("PyQt5.QtWidgets", "QGraphicsLinearLayout")
@:native("QGraphicsLinearLayout")
extern class QGraphicsLinearLayout extends QGraphicsLayout {
	@:overload(function(?parent:QGraphicsLayoutItem):QGraphicsLinearLayout {})
	function new(orientation:QtOrientation, ?parent:QGraphicsLayoutItem);

	function setOrientation(orientation:QtOrientation):Void;
	function orientation():QtOrientation;
	function addItem(item:QGraphicsLayoutItem):Void;
	function addStretch(?stretch:Int):Void;
	function insertItem(index:Int, item:QGraphicsLayoutItem):Void;
	function insertStretch(index:Int, ?stretch:Int):Void;
	function removeItem(item:QGraphicsLayoutItem):Void;
	function removeAt(index:Int):Void;
	function setSpacing(spacing:Float):Void;
	function spacing():Float;
	function setItemSpacing(index:Int, spacing:Float):Void;
	function itemSpacing(index:Int):Float;
	function setStretchFactor(item:QGraphicsLayoutItem, stretch:Int):Void;
	function stretchFactor(item:QGraphicsLayoutItem):Int;
	function setAlignment(item:QGraphicsLayoutItem, alignment:QtAlignment):Void;
	function alignment(item:QGraphicsLayoutItem):QtAlignment;
	function setGeometry(rect:QRectF):Void;
	function count():Int;
	function itemAt(index:Int):QGraphicsLayoutItem;
	function invalidate():Void;
	function sizeHint(which:QtSizeHint, ?constraint:QSizeF):QSizeF;
}

