package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtwidgets.QSizePolicy;
import pyqt5.qtwidgets.QGraphicsLayout;
import pyqt5.qtwidgets.QGraphicsLayoutItem;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QSize;

@:pythonImport("PyQt5.QtWidgets", "QGraphicsAnchor")
@:native("QGraphicsAnchor")
extern class QGraphicsAnchor extends QObject {
	function new(parent:QGraphicsAnchorLayout);

	function setSpacing(spacing:Float):Void;
	function unsetSpacing():Void;
	function spacing():Float;
	function setSizePolicy(policy:QSizePolicyPolicy):Void;
	function sizePolicy():QSizePolicyPolicy;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsAnchorLayout")
@:native("QGraphicsAnchorLayout")
extern class QGraphicsAnchorLayout extends QGraphicsLayout {
	function new(?parent:QGraphicsLayoutItem);

	function addAnchor(firstItem:QGraphicsLayoutItem, firstEdge:QtAnchorPoint, secondItem:QGraphicsLayoutItem, secondEdge:QtAnchorPoint):QGraphicsAnchor;
	function anchor(firstItem:QGraphicsLayoutItem, firstEdge:QtAnchorPoint, secondItem:QGraphicsLayoutItem, secondEdge:QtAnchorPoint):QGraphicsAnchor;
	function addCornerAnchors(firstItem:QGraphicsLayoutItem, firstCorner:QtCorner, secondItem:QGraphicsLayoutItem, secondCorner:QtCorner):Void;
	function addAnchors(firstItem:QGraphicsLayoutItem, secondItem:QGraphicsLayoutItem, ?orientations:QtOrientations):Void;
	function setHorizontalSpacing(spacing:Float):Void;
	function setVerticalSpacing(spacing:Float):Void;
	function setSpacing(spacing:Float):Void;
	function horizontalSpacing():Float;
	function verticalSpacing():Float;
	function removeAt(index:Int):Void;
	function setGeometry(rect:QRectF):Void;
	function count():Int;
	function itemAt(index:Int):QGraphicsLayoutItem;
	function invalidate():Void;
	function sizeHint(which:QtSizeHint, ?constraint:QSizeF):QSizeF;
}

