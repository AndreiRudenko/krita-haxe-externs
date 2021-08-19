package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QGraphicsItem;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QPoint;
import pyqt5.qtgui.QTransform;
import pyqt5.qtgui.QPolygon;
import pyqt5.qtgui.QPainterPath;
import pyqt5.qtgui.QPen;
import pyqt5.qtgui.QBrush;
import pyqt5.qtcore.QLine;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QFont;
import pyqt5.qtcore.QVariant;
import pyqt5.qtwidgets.QGraphicsView;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtwidgets.QGraphicsSceneEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtwidgets.QGraphicsProxyWidget;
import pyqt5.qtwidgets.QStyle;
import pyqt5.qtgui.QPalette;
import pyqt5.qtwidgets.QGraphicsWidget;

typedef QGraphicsSceneSceneLayers = QFlags<QGraphicsSceneSceneLayer>;

@:pythonImport("PyQt5.QtWidgets", "QGraphicsScene")
@:native("QGraphicsScene")
extern class QGraphicsScene extends QObject {
	var changed:QSignal1<QList<QRectF>>;
	var sceneRectChanged:QSignal1<QRectF>;
	var selectionChanged:QSignal0;
	var focusItemChanged:QSignal3<QGraphicsItem, QGraphicsItem, QtFocusReason>;

	@:overload(function(?parent:QObject):QGraphicsScene {})
	@:overload(function(sceneRect:QRectF, ?parent:QObject):QGraphicsScene {})
	function new(x:Float, y:Float, width:Float, height:Float, ?parent:QObject);

	function sceneRect():QRectF;
	function width():Float;
	function height():Float;
	@:overload(function(x:Float, y:Float, w:Float, h:Float):Void {})
	function setSceneRect(rect:QRectF):Void;
	function render(painter:QPainter, ?target:QRectF, ?source:QRectF, ?mode:QtAspectRatioMode):Void;
	function itemIndexMethod():QGraphicsSceneItemIndexMethod;
	function setItemIndexMethod(method:QGraphicsSceneItemIndexMethod):Void;
	function itemsBoundingRect():QRectF;
	@:overload(function(pos:QPointF, ?mode:QtItemSelectionMode, ?order:QtSortOrder, ?deviceTransform:QTransform):QList<QGraphicsItem> {})
	@:overload(function(rect:QRectF, ?mode:QtItemSelectionMode, ?order:QtSortOrder, ?deviceTransform:QTransform):QList<QGraphicsItem> {})
	@:overload(function(polygon:QPolygonF, ?mode:QtItemSelectionMode, ?order:QtSortOrder, ?deviceTransform:QTransform):QList<QGraphicsItem> {})
	@:overload(function(path:QPainterPath, ?mode:QtItemSelectionMode, ?order:QtSortOrder, ?deviceTransform:QTransform):QList<QGraphicsItem> {})
	@:overload(function(x:Float, y:Float, w:Float, h:Float, mode:QtItemSelectionMode, order:QtSortOrder, ?deviceTransform:QTransform):QList<QGraphicsItem> {})
	function items(?order:QtSortOrder):QList<QGraphicsItem>;
	function collidingItems(item:QGraphicsItem, ?mode:QtItemSelectionMode):QList<QGraphicsItem>;
	function selectedItems():QList<QGraphicsItem>;
	@:overload(function(path:QPainterPath, ?mode:QtItemSelectionMode, ?deviceTransform:QTransform):Void {})
	@:overload(function(path:QPainterPath, selectionOperation:QtItemSelectionOperation, ?mode:QtItemSelectionMode, ?deviceTransform:QTransform):Void {})
	function setSelectionArea(path:QPainterPath, deviceTransform:QTransform):Void;
	function clearSelection():Void;
	function createItemGroup(items:QList<QGraphicsItem>):QGraphicsItemGroup;
	function destroyItemGroup(group:QGraphicsItemGroup):Void;
	function addItem(item:QGraphicsItem):Void;
	@:overload(function(x:Float, y:Float, w:Float, h:Float, ?pen:QPen, ?brush:QBrush):QGraphicsEllipseItem {})
	function addEllipse(rect:QRectF, ?pen:QPen, ?brush:QBrush):QGraphicsEllipseItem;
	@:overload(function(x1:Float, y1:Float, x2:Float, y2:Float, ?pen:QPen):QGraphicsLineItem {})
	function addLine(line:QLineF, ?pen:QPen):QGraphicsLineItem;
	function addPath(path:QPainterPath, ?pen:QPen, ?brush:QBrush):QGraphicsPathItem;
	function addPixmap(pixmap:QPixmap):QGraphicsPixmapItem;
	function addPolygon(polygon:QPolygonF, ?pen:QPen, ?brush:QBrush):QGraphicsPolygonItem;
	@:overload(function(x:Float, y:Float, w:Float, h:Float, ?pen:QPen, ?brush:QBrush):QGraphicsRectItem {})
	function addRect(rect:QRectF, ?pen:QPen, ?brush:QBrush):QGraphicsRectItem;
	function addSimpleText(text:QString, ?font:QFont):QGraphicsSimpleTextItem;
	function addText(text:QString, ?font:QFont):QGraphicsTextItem;
	function removeItem(item:QGraphicsItem):Void;
	function focusItem():QGraphicsItem;
	function setFocusItem(item:QGraphicsItem, ?focusReason:QtFocusReason):Void;
	function hasFocus():Bool;
	function setFocus(?focusReason:QtFocusReason):Void;
	function clearFocus():Void;
	function mouseGrabberItem():QGraphicsItem;
	function backgroundBrush():QBrush;
	function setBackgroundBrush(brush:QBrush):Void;
	function foregroundBrush():QBrush;
	function setForegroundBrush(brush:QBrush):Void;
	function inputMethodQuery(query:QtInputMethodQuery):QVariant;
	function views():QList<QGraphicsView>;
	function advance():Void;
	@:overload(function(x:Float, y:Float, w:Float, h:Float):Void {})
	function update(?rect:QRectF):Void;
	@:overload(function(x:Float, y:Float, w:Float, h:Float, ?layers:QGraphicsSceneSceneLayers):Void {})
	function invalidate(?rect:QRectF, ?layers:QGraphicsSceneSceneLayers):Void;
	function clear():Void;
	function event(event:QEvent):Bool;
	function contextMenuEvent(event:QGraphicsSceneContextMenuEvent):Void;
	function dragEnterEvent(event:QGraphicsSceneDragDropEvent):Void;
	function dragMoveEvent(event:QGraphicsSceneDragDropEvent):Void;
	function dragLeaveEvent(event:QGraphicsSceneDragDropEvent):Void;
	function dropEvent(event:QGraphicsSceneDragDropEvent):Void;
	function focusInEvent(event:QFocusEvent):Void;
	function focusOutEvent(event:QFocusEvent):Void;
	function helpEvent(event:QGraphicsSceneHelpEvent):Void;
	function keyPressEvent(event:QKeyEvent):Void;
	function keyReleaseEvent(event:QKeyEvent):Void;
	function mousePressEvent(event:QGraphicsSceneMouseEvent):Void;
	function mouseMoveEvent(event:QGraphicsSceneMouseEvent):Void;
	function mouseReleaseEvent(event:QGraphicsSceneMouseEvent):Void;
	function mouseDoubleClickEvent(event:QGraphicsSceneMouseEvent):Void;
	function wheelEvent(event:QGraphicsSceneWheelEvent):Void;
	function inputMethodEvent(event:QInputMethodEvent):Void;
	function drawBackground(painter:QPainter, rect:QRectF):Void;
	function drawForeground(painter:QPainter, rect:QRectF):Void;
	function bspTreeDepth():Int;
	function setBspTreeDepth(depth:Int):Void;
	function selectionArea():QPainterPath;
	function addWidget(widget:QWidget, ?flags:QtWindowFlags):QGraphicsProxyWidget;
	function style():QStyle;
	function setStyle(style:QStyle):Void;
	function font():QFont;
	function setFont(font:QFont):Void;
	function palette():QPalette;
	function setPalette(palette:QPalette):Void;
	function activeWindow():QGraphicsWidget;
	function setActiveWindow(widget:QGraphicsWidget):Void;
	function eventFilter(watched:QObject, event:QEvent):Bool;
	function focusNextPrevChild(next:Bool):Bool;
	function setStickyFocus(enabled:Bool):Void;
	function stickyFocus():Bool;
	@:overload(function(x:Float, y:Float, deviceTransform:QTransform):QGraphicsItem {})
	function itemAt(pos:QPointF, deviceTransform:QTransform):QGraphicsItem;
	function isActive():Bool;
	function activePanel():QGraphicsItem;
	function setActivePanel(item:QGraphicsItem):Void;
	function sendEvent(item:QGraphicsItem, event:QEvent):Bool;
	function minimumRenderSize():Float;
	function setMinimumRenderSize(minSize:Float):Void;
	function focusOnTouch():Bool;
	function setFocusOnTouch(enabled:Bool):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsScene")
@:native("QGraphicsScene")
extern enum abstract QGraphicsSceneItemIndexMethod(Int) from Int to Int {
	var BspTreeIndex;
	var NoIndex;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsScene")
@:native("QGraphicsScene")
extern enum abstract QGraphicsSceneSceneLayer(Int) from Int to Int {
	var ItemLayer;
	var BackgroundLayer;
	var ForegroundLayer;
	var AllLayers;
}

