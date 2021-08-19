package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QSizePolicy;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QGraphicsItem;

@:pythonImport("PyQt5.QtWidgets", "QGraphicsLayoutItem")
@:native("QGraphicsLayoutItem")
extern class QGraphicsLayoutItem {
	@:overload(function(?parent:QGraphicsLayoutItem, ?isLayout:Bool):QGraphicsLayoutItem {})
	function new(?v:QGraphicsLayoutItem);

	@:overload(function(hPolicy:QSizePolicyPolicy, vPolicy:QSizePolicyPolicy, ?controlType:QSizePolicyControlType):Void {})
	function setSizePolicy(policy:QSizePolicy):Void;
	function sizePolicy():QSizePolicy;
	@:overload(function(aw:Float, ah:Float):Void {})
	function setMinimumSize(size:QSizeF):Void;
	function minimumSize():QSizeF;
	function setMinimumWidth(width:Float):Void;
	function setMinimumHeight(height:Float):Void;
	@:overload(function(aw:Float, ah:Float):Void {})
	function setPreferredSize(size:QSizeF):Void;
	function preferredSize():QSizeF;
	function setPreferredWidth(width:Float):Void;
	function setPreferredHeight(height:Float):Void;
	@:overload(function(aw:Float, ah:Float):Void {})
	function setMaximumSize(size:QSizeF):Void;
	function maximumSize():QSizeF;
	function setMaximumWidth(width:Float):Void;
	function setMaximumHeight(height:Float):Void;
	function setGeometry(rect:QRectF):Void;
	function geometry():QRectF;
	function getContentsMargins(left:Float, top:Float, right:Float, bottom:Float):Void;
	function contentsRect():QRectF;
	function effectiveSizeHint(which:QtSizeHint, ?constraint:QSizeF):QSizeF;
	function updateGeometry():Void;
	function parentLayoutItem():QGraphicsLayoutItem;
	function setParentLayoutItem(parent:QGraphicsLayoutItem):Void;
	function isLayout():Bool;
	function minimumWidth():Float;
	function minimumHeight():Float;
	function preferredWidth():Float;
	function preferredHeight():Float;
	function maximumWidth():Float;
	function maximumHeight():Float;
	function graphicsItem():QGraphicsItem;
	function ownedByLayout():Bool;
	function sizeHint(which:QtSizeHint, ?constraint:QSizeF):QSizeF;
	function setGraphicsItem(item:QGraphicsItem):Void;
	function setOwnedByLayout(ownedByLayout:Bool):Void;
}

