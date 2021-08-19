package pyqt5.qtgui;

import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QPolygon;
import pyqt5.qtgui.QFont;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QRegion;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QTransform;
import pyqt5.qtgui.QPen;
import pyqt5.qtcore.QVector;

@:pythonImport("PyQt5.QtGui", "QPainterPath")
@:native("QPainterPath")
extern class QPainterPath {
	@:overload(function():QPainterPath {})
	@:overload(function(startPoint:QPointF):QPainterPath {})
	function new(other:QPainterPath);

	function closeSubpath():Void;
	@:overload(function(x:Float, y:Float):Void {})
	function moveTo(p:QPointF):Void;
	@:overload(function(x:Float, y:Float):Void {})
	function lineTo(p:QPointF):Void;
	@:overload(function(x:Float, y:Float, w:Float, h:Float, startAngle:Float, arcLenght:Float):Void {})
	function arcTo(rect:QRectF, startAngle:Float, arcLength:Float):Void;
	@:overload(function(ctrlPt1x:Float, ctrlPt1y:Float, ctrlPt2x:Float, ctrlPt2y:Float, endPtx:Float, endPty:Float):Void {})
	function cubicTo(ctrlPt1:QPointF, ctrlPt2:QPointF, endPt:QPointF):Void;
	@:overload(function(ctrlPtx:Float, ctrlPty:Float, endPtx:Float, endPty:Float):Void {})
	function quadTo(ctrlPt:QPointF, endPt:QPointF):Void;
	function currentPosition():QPointF;
	@:overload(function(x:Float, y:Float, w:Float, h:Float):Void {})
	function addRect(rect:QRectF):Void;
	@:overload(function(x:Float, y:Float, w:Float, h:Float):Void {})
	@:overload(function(center:QPointF, rx:Float, ry:Float):Void {})
	function addEllipse(rect:QRectF):Void;
	function addPolygon(polygon:QPolygonF):Void;
	@:overload(function(x:Float, y:Float, f:QFont, text:QString):Void {})
	function addText(point:QPointF, f:QFont, text:QString):Void;
	function addPath(path:QPainterPath):Void;
	function addRegion(region:QRegion):Void;
	function connectPath(path:QPainterPath):Void;
	@:overload(function(rect:QRectF):Bool {})
	@:overload(function(p:QPainterPath):Bool {})
	function contains(pt:QPointF):Bool;
	@:overload(function(p:QPainterPath):Bool {})
	function intersects(rect:QRectF):Bool;
	function boundingRect():QRectF;
	function controlPointRect():QRectF;
	function fillRule():QtFillRule;
	function setFillRule(fillRule:QtFillRule):Void;
	function toReversed():QPainterPath;
	@:overload(function(matrix:QTransform):QList<QPolygonF> {})
	function toSubpathPolygons():QList<QPolygonF>;
	@:overload(function(matrix:QTransform):QList<QPolygonF> {})
	function toFillPolygons():QList<QPolygonF>;
	@:overload(function(matrix:QTransform):QPolygonF {})
	function toFillPolygon():QPolygonF;
	@:overload(function(x:Float, y:Float, w:Float, h:Float, angle:Float):Void {})
	function arcMoveTo(rect:QRectF, angle:Float):Void;
	function isEmpty():Bool;
	function elementCount():Int;
	function elementAt(i:Int):Element;
	function setElementPositionAt(i:Int, x:Float, y:Float):Void;
	function length():Float;
	function percentAtLength(t:Float):Float;
	function pointAtPercent(t:Float):QPointF;
	function angleAtPercent(t:Float):Float;
	function slopeAtPercent(t:Float):Float;
	function united(r:QPainterPath):QPainterPath;
	function intersected(r:QPainterPath):QPainterPath;
	function subtracted(r:QPainterPath):QPainterPath;
	@:overload(function(x:Float, y:Float, w:Float, h:Float, xRadius:Float, yRadius:Float, ?mode:QtSizeMode):Void {})
	function addRoundedRect(rect:QRectF, xRadius:Float, yRadius:Float, ?mode:QtSizeMode):Void;
	function simplified():QPainterPath;
	@:overload(function(offset:QPointF):Void {})
	function translate(dx:Float, dy:Float):Void;
	@:overload(function(offset:QPointF):QPainterPath {})
	function translated(dx:Float, dy:Float):QPainterPath;
	function swap(other:QPainterPath):Void;
	function clear():Void;
	function reserve(size:Int):Void;
	function capacity():Int;
}

@:pythonImport("PyQt5.QtGui", "ElementType")
@:native("QPainterPath.ElementType")
extern enum abstract QPainterPathElementType(Int) from Int to Int {
	var MoveToElement;
	var LineToElement;
	var CurveToElement;
	var CurveToDataElement;
}

@:pythonImport("PyQt5.QtGui", "Element")
@:native("Element")
extern class Element {
	function isMoveTo():Bool;
	function isLineTo():Bool;
	function isCurveTo():Bool;
}

@:pythonImport("PyQt5.QtGui", "QPainterPathStroker")
@:native("QPainterPathStroker")
extern class QPainterPathStroker {
	@:overload(function():QPainterPathStroker {})
	@:overload(function(pen:QPen):QPainterPathStroker {})
	function new(?v:QPainterPathStroker);

	function setWidth(width:Float):Void;
	function width():Float;
	function setCapStyle(style:QtPenCapStyle):Void;
	function capStyle():QtPenCapStyle;
	function setJoinStyle(style:QtPenJoinStyle):Void;
	function joinStyle():QtPenJoinStyle;
	function setMiterLimit(length:Float):Void;
	function miterLimit():Float;
	function setCurveThreshold(threshold:Float):Void;
	function curveThreshold():Float;
	@:overload(function(dashPattern:QVector<Float>):Void {})
	function setDashPattern(?v:QtPenStyle):Void;
	function dashPattern():QVector<Float>;
	function createStroke(path:QPainterPath):QPainterPath;
	function setDashOffset(offset:Float):Void;
	function dashOffset():Float;
}

