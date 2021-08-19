package pyqt5.qtcore;

import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QMargins;

@:pythonImport("PyQt5.QtCore", "QRect")
@:native("QRect")
extern class QRect {
	@:overload(function():QRect {})
	@:overload(function(aleft:Int, atop:Int, awidth:Int, aheight:Int):QRect {})
	@:overload(function(atopLeft:QPoint, abottomRight:QPoint):QRect {})
	function new(atopLeft:QPoint, asize:QSize);

	function normalized():QRect;
	function moveCenter(p:QPoint):Void;
	@:overload(function(rectangle:QRect, ?proper:Bool):Bool {})
	@:overload(function(ax:Int, ay:Int, aproper:Bool):Bool {})
	@:overload(function(ax:Int, ay:Int):Bool {})
	function contains(point:QPoint, ?proper:Bool):Bool;
	function intersects(r:QRect):Bool;
	function isNull():Bool;
	function isEmpty():Bool;
	function isValid():Bool;
	function left():Int;
	function top():Int;
	function right():Int;
	function bottom():Int;
	function x():Int;
	function y():Int;
	function setLeft(pos:Int):Void;
	function setTop(pos:Int):Void;
	function setRight(pos:Int):Void;
	function setBottom(pos:Int):Void;
	function setTopLeft(p:QPoint):Void;
	function setBottomRight(p:QPoint):Void;
	function setTopRight(p:QPoint):Void;
	function setBottomLeft(p:QPoint):Void;
	function setX(ax:Int):Void;
	function setY(ay:Int):Void;
	function topLeft():QPoint;
	function bottomRight():QPoint;
	function topRight():QPoint;
	function bottomLeft():QPoint;
	function center():QPoint;
	function width():Int;
	function height():Int;
	function size():QSize;
	@:overload(function(p:QPoint):Void {})
	function translate(dx:Int, dy:Int):Void;
	@:overload(function(p:QPoint):QRect {})
	function translated(dx:Int, dy:Int):QRect;
	@:overload(function(p:QPoint):Void {})
	function moveTo(ax:Int, ay:Int):Void;
	function moveLeft(pos:Int):Void;
	function moveTop(pos:Int):Void;
	function moveRight(pos:Int):Void;
	function moveBottom(pos:Int):Void;
	function moveTopLeft(p:QPoint):Void;
	function moveBottomRight(p:QPoint):Void;
	function moveTopRight(p:QPoint):Void;
	function moveBottomLeft(p:QPoint):Void;
	function getRect(ax:Int, ay:Int, aw:Int, ah:Int):Void;
	function setRect(ax:Int, ay:Int, aw:Int, ah:Int):Void;
	function getCoords(xp1:Int, yp1:Int, xp2:Int, yp2:Int):Void;
	function setCoords(xp1:Int, yp1:Int, xp2:Int, yp2:Int):Void;
	function adjusted(xp1:Int, yp1:Int, xp2:Int, yp2:Int):QRect;
	function adjust(dx1:Int, dy1:Int, dx2:Int, dy2:Int):Void;
	function setWidth(w:Int):Void;
	function setHeight(h:Int):Void;
	function setSize(s:QSize):Void;
	function intersected(other:QRect):QRect;
	function united(r:QRect):QRect;
	function marginsAdded(margins:QMargins):QRect;
	function marginsRemoved(margins:QMargins):QRect;
	function transposed():QRect;
}

@:pythonImport("PyQt5.QtCore", "QRectF")
@:native("QRectF")
extern class QRectF {
	@:overload(function():QRectF {})
	@:overload(function(atopLeft:QPointF, asize:QSizeF):QRectF {})
	@:overload(function(atopLeft:QPointF, abottomRight:QPointF):QRectF {})
	@:overload(function(aleft:Float, atop:Float, awidth:Float, aheight:Float):QRectF {})
	function new(r:QRect);

	function normalized():QRectF;
	function left():Float;
	function top():Float;
	function right():Float;
	function bottom():Float;
	function setX(pos:Float):Void;
	function setY(pos:Float):Void;
	function topLeft():QPointF;
	function bottomRight():QPointF;
	function topRight():QPointF;
	function bottomLeft():QPointF;
	@:overload(function(r:QRectF):Bool {})
	@:overload(function(ax:Float, ay:Float):Bool {})
	function contains(p:QPointF):Bool;
	function intersects(r:QRectF):Bool;
	function isNull():Bool;
	function isEmpty():Bool;
	function isValid():Bool;
	function x():Float;
	function y():Float;
	function setLeft(pos:Float):Void;
	function setRight(pos:Float):Void;
	function setTop(pos:Float):Void;
	function setBottom(pos:Float):Void;
	function setTopLeft(p:QPointF):Void;
	function setTopRight(p:QPointF):Void;
	function setBottomLeft(p:QPointF):Void;
	function setBottomRight(p:QPointF):Void;
	function center():QPointF;
	function moveLeft(pos:Float):Void;
	function moveTop(pos:Float):Void;
	function moveRight(pos:Float):Void;
	function moveBottom(pos:Float):Void;
	function moveTopLeft(p:QPointF):Void;
	function moveTopRight(p:QPointF):Void;
	function moveBottomLeft(p:QPointF):Void;
	function moveBottomRight(p:QPointF):Void;
	function moveCenter(p:QPointF):Void;
	function width():Float;
	function height():Float;
	function size():QSizeF;
	@:overload(function(p:QPointF):Void {})
	function translate(dx:Float, dy:Float):Void;
	@:overload(function(p:QPointF):Void {})
	function moveTo(ax:Float, ay:Float):Void;
	@:overload(function(p:QPointF):QRectF {})
	function translated(dx:Float, dy:Float):QRectF;
	function getRect(ax:Float, ay:Float, aaw:Float, aah:Float):Void;
	function setRect(ax:Float, ay:Float, aaw:Float, aah:Float):Void;
	function getCoords(xp1:Float, yp1:Float, xp2:Float, yp2:Float):Void;
	function setCoords(xp1:Float, yp1:Float, xp2:Float, yp2:Float):Void;
	function adjust(xp1:Float, yp1:Float, xp2:Float, yp2:Float):Void;
	function adjusted(xp1:Float, yp1:Float, xp2:Float, yp2:Float):QRectF;
	function setWidth(aw:Float):Void;
	function setHeight(ah:Float):Void;
	function setSize(s:QSizeF):Void;
	function intersected(r:QRectF):QRectF;
	function united(r:QRectF):QRectF;
	function toAlignedRect():QRect;
	function toRect():QRect;
	function marginsAdded(margins:QMarginsF):QRectF;
	function marginsRemoved(margins:QMarginsF):QRectF;
	function transposed():QRectF;
}

