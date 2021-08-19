package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QGraphicsLayoutItem;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtWidgets", "QGraphicsLayout")
@:native("QGraphicsLayout")
extern class QGraphicsLayout extends QGraphicsLayoutItem {
	function new(?parent:QGraphicsLayoutItem);

	function setContentsMargins(left:Float, top:Float, right:Float, bottom:Float):Void;
	function getContentsMargins(left:Float, top:Float, right:Float, bottom:Float):Void;
	function activate():Void;
	function isActivated():Bool;
	function invalidate():Void;
	function widgetEvent(e:QEvent):Void;
	function count():Int;
	function itemAt(i:Int):QGraphicsLayoutItem;
	function removeAt(index:Int):Void;
	function updateGeometry():Void;
	function addChildLayoutItem(layoutItem:QGraphicsLayoutItem):Void;
}

