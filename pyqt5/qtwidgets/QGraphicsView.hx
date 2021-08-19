package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractScrollArea;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtwidgets.QGraphicsScene;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QPoint;
import pyqt5.qtwidgets.QGraphicsItem;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QPolygon;
import pyqt5.qtgui.QPainterPath;
import pyqt5.qtcore.QVariant;
import pyqt5.qtgui.QBrush;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtgui.QTransform;
import pyqt5.qtcore.QSignal;

typedef QGraphicsViewCacheMode = QFlags<QGraphicsViewCacheModeFlag>;
typedef QGraphicsViewOptimizationFlags = QFlags<QGraphicsViewOptimizationFlag>;

@:pythonImport("PyQt5.QtWidgets", "QGraphicsView")
@:native("QGraphicsView")
extern class QGraphicsView extends QAbstractScrollArea {
	var rubberBandChanged:QSignal3<QRect, QPointF, QPointF>;

	@:overload(function(?parent:QWidget):QGraphicsView {})
	function new(scene:QGraphicsScene, ?parent:QWidget);

	function sizeHint():QSize;
	function renderHints():QPainterRenderHints;
	function setRenderHint(hint:QPainterRenderHint, ?on:Bool):Void;
	function setRenderHints(hints:QPainterRenderHints):Void;
	function alignment():QtAlignment;
	function setAlignment(alignment:QtAlignment):Void;
	function transformationAnchor():QGraphicsViewViewportAnchor;
	function setTransformationAnchor(anchor:QGraphicsViewViewportAnchor):Void;
	function resizeAnchor():QGraphicsViewViewportAnchor;
	function setResizeAnchor(anchor:QGraphicsViewViewportAnchor):Void;
	function dragMode():QGraphicsViewDragMode;
	function setDragMode(mode:QGraphicsViewDragMode):Void;
	function cacheMode():QGraphicsViewCacheMode;
	function setCacheMode(mode:QGraphicsViewCacheMode):Void;
	function resetCachedContent():Void;
	function isInteractive():Bool;
	function setInteractive(allowed:Bool):Void;
	function scene():QGraphicsScene;
	function setScene(scene:QGraphicsScene):Void;
	function sceneRect():QRectF;
	@:overload(function(ax:Float, ay:Float, aw:Float, ah:Float):Void {})
	function setSceneRect(rect:QRectF):Void;
	function rotate(angle:Float):Void;
	function scale(sx:Float, sy:Float):Void;
	function shear(sh:Float, sv:Float):Void;
	function translate(dx:Float, dy:Float):Void;
	@:overload(function(item:QGraphicsItem):Void {})
	@:overload(function(ax:Float, ay:Float):Void {})
	function centerOn(pos:QPointF):Void;
	@:overload(function(item:QGraphicsItem, ?xMargin:Int, ?yMargin:Int):Void {})
	@:overload(function(x:Float, y:Float, w:Float, h:Float, ?xMargin:Int, ?yMargin:Int):Void {})
	function ensureVisible(rect:QRectF, ?xMargin:Int, ?yMargin:Int):Void;
	@:overload(function(item:QGraphicsItem, ?mode:QtAspectRatioMode):Void {})
	@:overload(function(x:Float, y:Float, w:Float, h:Float, ?mode:QtAspectRatioMode):Void {})
	function fitInView(rect:QRectF, ?mode:QtAspectRatioMode):Void;
	function render(painter:QPainter, ?target:QRectF, ?source:QRect, ?mode:QtAspectRatioMode):Void;
	@:overload(function(pos:QPoint):QList<QGraphicsItem> {})
	@:overload(function(x:Int, y:Int):QList<QGraphicsItem> {})
	@:overload(function(x:Int, y:Int, w:Int, h:Int, ?mode:QtItemSelectionMode):QList<QGraphicsItem> {})
	@:overload(function(rect:QRect, ?mode:QtItemSelectionMode):QList<QGraphicsItem> {})
	@:overload(function(polygon:QPolygon, ?mode:QtItemSelectionMode):QList<QGraphicsItem> {})
	@:overload(function(path:QPainterPath, ?mode:QtItemSelectionMode):QList<QGraphicsItem> {})
	function items():QList<QGraphicsItem>;
	@:overload(function(ax:Int, ay:Int):QGraphicsItem {})
	function itemAt(pos:QPoint):QGraphicsItem;
	@:overload(function(rect:QRect):QPolygonF {})
	@:overload(function(polygon:QPolygon):QPolygonF {})
	@:overload(function(path:QPainterPath):QPainterPath {})
	@:overload(function(ax:Int, ay:Int):QPointF {})
	@:overload(function(ax:Int, ay:Int, w:Int, h:Int):QPolygonF {})
	function mapToScene(point:QPoint):QPointF;
	@:overload(function(rect:QRectF):QPolygon {})
	@:overload(function(polygon:QPolygonF):QPolygon {})
	@:overload(function(path:QPainterPath):QPainterPath {})
	@:overload(function(ax:Float, ay:Float):QPoint {})
	@:overload(function(ax:Float, ay:Float, w:Float, h:Float):QPolygon {})
	function mapFromScene(point:QPointF):QPoint;
	function inputMethodQuery(query:QtInputMethodQuery):QVariant;
	function backgroundBrush():QBrush;
	function setBackgroundBrush(brush:QBrush):Void;
	function foregroundBrush():QBrush;
	function setForegroundBrush(brush:QBrush):Void;
	function invalidateScene(?rect:QRectF, ?layers:QGraphicsSceneSceneLayers):Void;
	function updateScene(rects:QList<QRectF>):Void;
	function updateSceneRect(rect:QRectF):Void;
	function setupViewport(widget:QWidget):Void;
	function event(event:QEvent):Bool;
	function viewportEvent(event:QEvent):Bool;
	function contextMenuEvent(event:QContextMenuEvent):Void;
	function dragEnterEvent(event:QDragEnterEvent):Void;
	function dragLeaveEvent(event:QDragLeaveEvent):Void;
	function dragMoveEvent(event:QDragMoveEvent):Void;
	function dropEvent(event:QDropEvent):Void;
	function focusInEvent(event:QFocusEvent):Void;
	function focusOutEvent(event:QFocusEvent):Void;
	function focusNextPrevChild(next:Bool):Bool;
	function keyPressEvent(event:QKeyEvent):Void;
	function keyReleaseEvent(event:QKeyEvent):Void;
	function mouseDoubleClickEvent(event:QMouseEvent):Void;
	function mousePressEvent(event:QMouseEvent):Void;
	function mouseMoveEvent(event:QMouseEvent):Void;
	function mouseReleaseEvent(event:QMouseEvent):Void;
	function wheelEvent(event:QWheelEvent):Void;
	function paintEvent(event:QPaintEvent):Void;
	function resizeEvent(event:QResizeEvent):Void;
	function scrollContentsBy(dx:Int, dy:Int):Void;
	function showEvent(event:QShowEvent):Void;
	function inputMethodEvent(event:QInputMethodEvent):Void;
	function drawBackground(painter:QPainter, rect:QRectF):Void;
	function drawForeground(painter:QPainter, rect:QRectF):Void;
	function viewportUpdateMode():QGraphicsViewViewportUpdateMode;
	function setViewportUpdateMode(mode:QGraphicsViewViewportUpdateMode):Void;
	function optimizationFlags():QGraphicsViewOptimizationFlags;
	function setOptimizationFlag(flag:QGraphicsViewOptimizationFlag, ?enabled:Bool):Void;
	function setOptimizationFlags(flags:QGraphicsViewOptimizationFlags):Void;
	function rubberBandSelectionMode():QtItemSelectionMode;
	function setRubberBandSelectionMode(mode:QtItemSelectionMode):Void;
	function transform():QTransform;
	function viewportTransform():QTransform;
	function setTransform(matrix:QTransform, ?combine:Bool):Void;
	function resetTransform():Void;
	function isTransformed():Bool;
	function rubberBandRect():QRect;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsView")
@:native("QGraphicsView")
extern enum abstract QGraphicsViewCacheModeFlag(Int) from Int to Int {
	var CacheNone;
	var CacheBackground;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsView")
@:native("QGraphicsView")
extern enum abstract QGraphicsViewDragMode(Int) from Int to Int {
	var NoDrag;
	var ScrollHandDrag;
	var RubberBandDrag;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsView")
@:native("QGraphicsView")
extern enum abstract QGraphicsViewViewportAnchor(Int) from Int to Int {
	var NoAnchor;
	var AnchorViewCenter;
	var AnchorUnderMouse;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsView")
@:native("QGraphicsView")
extern enum abstract QGraphicsViewViewportUpdateMode(Int) from Int to Int {
	var FullViewportUpdate;
	var MinimalViewportUpdate;
	var SmartViewportUpdate;
	var BoundingRectViewportUpdate;
	var NoViewportUpdate;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsView")
@:native("QGraphicsView")
extern enum abstract QGraphicsViewOptimizationFlag(Int) from Int to Int {
	var DontClipPainter;
	var DontSavePainterState;
	var DontAdjustForAntialiasing;
}

