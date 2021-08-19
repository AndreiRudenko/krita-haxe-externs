package pyqt5.qtwidgets;

import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QGraphicsScene;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QCursor;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QPainterPath;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QPainter;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtgui.QPolygon;
import pyqt5.qtcore.QVariant;
import pyqt5.qtwidgets.QGraphicsSceneEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QTransform;
import pyqt5.qtwidgets.QGraphicsWidget;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QRegion;
import pyqt5.qtwidgets.QGraphicsEffect;
import pyqt5.qtwidgets.QGraphicsTransform;
import pyqt5.qtgui.QPen;
import pyqt5.qtgui.QBrush;
import pyqt5.qtcore.QLine;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtgui.QFont;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QColor;
import pyqt5.qtgui.QTextDocument;
import pyqt5.qtgui.QTextCursor;

typedef QGraphicsItemGraphicsItemFlags = QFlags<QGraphicsItemGraphicsItemFlag>;

@:pythonImport("PyQt5.QtWidgets", "QGraphicsItem")
@:native("QGraphicsItem")
extern class QGraphicsItem {
	@:overload(function(?parent:QGraphicsItem):QGraphicsItem {})
	function new(?v:QGraphicsItem);

	function scene():QGraphicsScene;
	function parentItem():QGraphicsItem;
	function topLevelItem():QGraphicsItem;
	function setParentItem(parent:QGraphicsItem):Void;
	function group():QGraphicsItemGroup;
	function setGroup(group:QGraphicsItemGroup):Void;
	function flags():QGraphicsItemGraphicsItemFlags;
	function setFlag(flag:QGraphicsItemGraphicsItemFlag, ?enabled:Bool):Void;
	function setFlags(flags:QGraphicsItemGraphicsItemFlags):Void;
	function toolTip():QString;
	function setToolTip(toolTip:QString):Void;
	function cursor():QCursor;
	function setCursor(cursor:QCursor):Void;
	function hasCursor():Bool;
	function unsetCursor():Void;
	function isVisible():Bool;
	function setVisible(visible:Bool):Void;
	function hide():Void;
	function show():Void;
	function isEnabled():Bool;
	function setEnabled(enabled:Bool):Void;
	function isSelected():Bool;
	function setSelected(selected:Bool):Void;
	function acceptDrops():Bool;
	function setAcceptDrops(on:Bool):Void;
	function acceptedMouseButtons():QtMouseButtons;
	function setAcceptedMouseButtons(buttons:QtMouseButtons):Void;
	function hasFocus():Bool;
	function setFocus(?focusReason:QtFocusReason):Void;
	function clearFocus():Void;
	function pos():QPointF;
	function x():Float;
	function y():Float;
	function scenePos():QPointF;
	@:overload(function(ax:Float, ay:Float):Void {})
	function setPos(pos:QPointF):Void;
	function moveBy(dx:Float, dy:Float):Void;
	@:overload(function(x:Float, y:Float, w:Float, h:Float, ?xMargin:Int, ?yMargin:Int):Void {})
	function ensureVisible(?rect:QRectF, ?xMargin:Int, ?yMargin:Int):Void;
	function advance(phase:Int):Void;
	function zValue():Float;
	function setZValue(z:Float):Void;
	function boundingRect():QRectF;
	function childrenBoundingRect():QRectF;
	function sceneBoundingRect():QRectF;
	function shape():QPainterPath;
	function contains(point:QPointF):Bool;
	function collidesWithItem(other:QGraphicsItem, ?mode:QtItemSelectionMode):Bool;
	function collidesWithPath(path:QPainterPath, ?mode:QtItemSelectionMode):Bool;
	function collidingItems(?mode:QtItemSelectionMode):QList<QGraphicsItem>;
	function isObscuredBy(item:QGraphicsItem):Bool;
	function opaqueArea():QPainterPath;
	function paint(painter:QPainter, option:QStyleOptionGraphicsItem, ?widget:QWidget):Void;
	@:overload(function(ax:Float, ay:Float, width:Float, height:Float):Void {})
	function update(?rect:QRectF):Void;
	@:overload(function(item:QGraphicsItem, rect:QRectF):QPolygonF {})
	@:overload(function(item:QGraphicsItem, polygon:QPolygonF):QPolygonF {})
	@:overload(function(item:QGraphicsItem, path:QPainterPath):QPainterPath {})
	@:overload(function(item:QGraphicsItem, ax:Float, ay:Float):QPointF {})
	@:overload(function(item:QGraphicsItem, ax:Float, ay:Float, w:Float, h:Float):QPolygonF {})
	function mapToItem(item:QGraphicsItem, point:QPointF):QPointF;
	@:overload(function(rect:QRectF):QPolygonF {})
	@:overload(function(polygon:QPolygonF):QPolygonF {})
	@:overload(function(path:QPainterPath):QPainterPath {})
	@:overload(function(ax:Float, ay:Float):QPointF {})
	@:overload(function(ax:Float, ay:Float, w:Float, h:Float):QPolygonF {})
	function mapToParent(point:QPointF):QPointF;
	@:overload(function(rect:QRectF):QPolygonF {})
	@:overload(function(polygon:QPolygonF):QPolygonF {})
	@:overload(function(path:QPainterPath):QPainterPath {})
	@:overload(function(ax:Float, ay:Float):QPointF {})
	@:overload(function(ax:Float, ay:Float, w:Float, h:Float):QPolygonF {})
	function mapToScene(point:QPointF):QPointF;
	@:overload(function(item:QGraphicsItem, rect:QRectF):QPolygonF {})
	@:overload(function(item:QGraphicsItem, polygon:QPolygonF):QPolygonF {})
	@:overload(function(item:QGraphicsItem, path:QPainterPath):QPainterPath {})
	@:overload(function(item:QGraphicsItem, ax:Float, ay:Float):QPointF {})
	@:overload(function(item:QGraphicsItem, ax:Float, ay:Float, w:Float, h:Float):QPolygonF {})
	function mapFromItem(item:QGraphicsItem, point:QPointF):QPointF;
	@:overload(function(rect:QRectF):QPolygonF {})
	@:overload(function(polygon:QPolygonF):QPolygonF {})
	@:overload(function(path:QPainterPath):QPainterPath {})
	@:overload(function(ax:Float, ay:Float):QPointF {})
	@:overload(function(ax:Float, ay:Float, w:Float, h:Float):QPolygonF {})
	function mapFromParent(point:QPointF):QPointF;
	@:overload(function(rect:QRectF):QPolygonF {})
	@:overload(function(polygon:QPolygonF):QPolygonF {})
	@:overload(function(path:QPainterPath):QPainterPath {})
	@:overload(function(ax:Float, ay:Float):QPointF {})
	@:overload(function(ax:Float, ay:Float, w:Float, h:Float):QPolygonF {})
	function mapFromScene(point:QPointF):QPointF;
	function isAncestorOf(child:QGraphicsItem):Bool;
	function data(key:Int):QVariant;
	function setData(key:Int, value:QVariant):Void;
	function type():Int;
	function installSceneEventFilter(filterItem:QGraphicsItem):Void;
	function removeSceneEventFilter(filterItem:QGraphicsItem):Void;
	function contextMenuEvent(event:QGraphicsSceneContextMenuEvent):Void;
	function dragEnterEvent(event:QGraphicsSceneDragDropEvent):Void;
	function dragLeaveEvent(event:QGraphicsSceneDragDropEvent):Void;
	function dragMoveEvent(event:QGraphicsSceneDragDropEvent):Void;
	function dropEvent(event:QGraphicsSceneDragDropEvent):Void;
	function focusInEvent(event:QFocusEvent):Void;
	function focusOutEvent(event:QFocusEvent):Void;
	function hoverEnterEvent(event:QGraphicsSceneHoverEvent):Void;
	function hoverLeaveEvent(event:QGraphicsSceneHoverEvent):Void;
	function hoverMoveEvent(event:QGraphicsSceneHoverEvent):Void;
	function inputMethodEvent(event:QInputMethodEvent):Void;
	function inputMethodQuery(query:QtInputMethodQuery):QVariant;
	function itemChange(change:QGraphicsItemGraphicsItemChange, value:QVariant):QVariant;
	function keyPressEvent(event:QKeyEvent):Void;
	function keyReleaseEvent(event:QKeyEvent):Void;
	function mouseDoubleClickEvent(event:QGraphicsSceneMouseEvent):Void;
	function mouseMoveEvent(event:QGraphicsSceneMouseEvent):Void;
	function mousePressEvent(event:QGraphicsSceneMouseEvent):Void;
	function mouseReleaseEvent(event:QGraphicsSceneMouseEvent):Void;
	function prepareGeometryChange():Void;
	function sceneEvent(event:QEvent):Bool;
	function sceneEventFilter(watched:QGraphicsItem, event:QEvent):Bool;
	function wheelEvent(event:QGraphicsSceneWheelEvent):Void;
	function transform():QTransform;
	function sceneTransform():QTransform;
	function deviceTransform(viewportTransform:QTransform):QTransform;
	function setTransform(matrix:QTransform, ?combine:Bool):Void;
	function resetTransform():Void;
	@:overload(function(ax:Float, ay:Float, w:Float, h:Float):Bool {})
	function isObscured(?rect:QRectF):Bool;
	function parentWidget():QGraphicsWidget;
	function topLevelWidget():QGraphicsWidget;
	function window():QGraphicsWidget;
	function childItems():QList<QGraphicsItem>;
	function isWidget():Bool;
	function isWindow():Bool;
	function cacheMode():QGraphicsItemCacheMode;
	function setCacheMode(mode:QGraphicsItemCacheMode, ?logicalCacheSize:QSize):Void;
	function isVisibleTo(parent:QGraphicsItem):Bool;
	function acceptHoverEvents():Bool;
	function setAcceptHoverEvents(enabled:Bool):Void;
	function grabMouse():Void;
	function ungrabMouse():Void;
	function grabKeyboard():Void;
	function ungrabKeyboard():Void;
	function boundingRegion(itemToDeviceTransform:QTransform):QRegion;
	function boundingRegionGranularity():Float;
	function setBoundingRegionGranularity(granularity:Float):Void;
	function scroll(dx:Float, dy:Float, ?rect:QRectF):Void;
	function commonAncestorItem(other:QGraphicsItem):QGraphicsItem;
	function isUnderMouse():Bool;
	function opacity():Float;
	function effectiveOpacity():Float;
	function setOpacity(opacity:Float):Void;
	function itemTransform(other:QGraphicsItem, ?ok:Bool):QTransform;
	function isClipped():Bool;
	function clipPath():QPainterPath;
	@:overload(function(item:QGraphicsItem, ax:Float, ay:Float, w:Float, h:Float):QRectF {})
	function mapRectToItem(item:QGraphicsItem, rect:QRectF):QRectF;
	@:overload(function(ax:Float, ay:Float, w:Float, h:Float):QRectF {})
	function mapRectToParent(rect:QRectF):QRectF;
	@:overload(function(ax:Float, ay:Float, w:Float, h:Float):QRectF {})
	function mapRectToScene(rect:QRectF):QRectF;
	@:overload(function(item:QGraphicsItem, ax:Float, ay:Float, w:Float, h:Float):QRectF {})
	function mapRectFromItem(item:QGraphicsItem, rect:QRectF):QRectF;
	@:overload(function(ax:Float, ay:Float, w:Float, h:Float):QRectF {})
	function mapRectFromParent(rect:QRectF):QRectF;
	@:overload(function(ax:Float, ay:Float, w:Float, h:Float):QRectF {})
	function mapRectFromScene(rect:QRectF):QRectF;
	function parentObject():QGraphicsObject;
	function panel():QGraphicsItem;
	function isPanel():Bool;
	function toGraphicsObject():QGraphicsObject;
	function panelModality():QGraphicsItemPanelModality;
	function setPanelModality(panelModality:QGraphicsItemPanelModality):Void;
	function isBlockedByModalPanel(?v:QGraphicsItem):Bool;
	function graphicsEffect():QGraphicsEffect;
	function setGraphicsEffect(effect:QGraphicsEffect):Void;
	function acceptTouchEvents():Bool;
	function setAcceptTouchEvents(enabled:Bool):Void;
	function filtersChildEvents():Bool;
	function setFiltersChildEvents(enabled:Bool):Void;
	function isActive():Bool;
	function setActive(active:Bool):Void;
	function focusProxy():QGraphicsItem;
	function setFocusProxy(item:QGraphicsItem):Void;
	function focusItem():QGraphicsItem;
	function setX(x:Float):Void;
	function setY(y:Float):Void;
	function setRotation(angle:Float):Void;
	function rotation():Float;
	function setScale(scale:Float):Void;
	function scale():Float;
	function transformations():QList<QGraphicsTransform>;
	function setTransformations(transformations:QList<QGraphicsTransform>):Void;
	function transformOriginPoint():QPointF;
	@:overload(function(ax:Float, ay:Float):Void {})
	function setTransformOriginPoint(origin:QPointF):Void;
	function stackBefore(sibling:QGraphicsItem):Void;
	function inputMethodHints():QtInputMethodHints;
	function setInputMethodHints(hints:QtInputMethodHints):Void;
	function updateMicroFocus():Void;
}

@:pythonImport("PyQt5.QtWidgets", "CacheMode")
@:native("QGraphicsItem.CacheMode")
extern enum abstract QGraphicsItemCacheMode(Int) from Int to Int {
	var NoCache;
	var ItemCoordinateCache;
	var DeviceCoordinateCache;
}

@:pythonImport("PyQt5.QtWidgets", "GraphicsItemChange")
@:native("QGraphicsItem.GraphicsItemChange")
extern enum abstract QGraphicsItemGraphicsItemChange(Int) from Int to Int {
	var ItemPositionChange;
	var ItemMatrixChange;
	var ItemVisibleChange;
	var ItemEnabledChange;
	var ItemSelectedChange;
	var ItemParentChange;
	var ItemChildAddedChange;
	var ItemChildRemovedChange;
	var ItemTransformChange;
	var ItemPositionHasChanged;
	var ItemTransformHasChanged;
	var ItemSceneChange;
	var ItemVisibleHasChanged;
	var ItemEnabledHasChanged;
	var ItemSelectedHasChanged;
	var ItemParentHasChanged;
	var ItemSceneHasChanged;
	var ItemCursorChange;
	var ItemCursorHasChanged;
	var ItemToolTipChange;
	var ItemToolTipHasChanged;
	var ItemFlagsChange;
	var ItemFlagsHaveChanged;
	var ItemZValueChange;
	var ItemZValueHasChanged;
	var ItemOpacityChange;
	var ItemOpacityHasChanged;
	var ItemScenePositionHasChanged;
	var ItemRotationChange;
	var ItemRotationHasChanged;
	var ItemScaleChange;
	var ItemScaleHasChanged;
	var ItemTransformOriginPointChange;
	var ItemTransformOriginPointHasChanged;
}

@:pythonImport("PyQt5.QtWidgets", "GraphicsItemFlag")
@:native("QGraphicsItem.GraphicsItemFlag")
extern enum abstract QGraphicsItemGraphicsItemFlag(Int) from Int to Int {
	var ItemIsMovable;
	var ItemIsSelectable;
	var ItemIsFocusable;
	var ItemClipsToShape;
	var ItemClipsChildrenToShape;
	var ItemIgnoresTransformations;
	var ItemIgnoresParentOpacity;
	var ItemDoesntPropagateOpacityToChildren;
	var ItemStacksBehindParent;
	var ItemUsesExtendedStyleOption;
	var ItemHasNoContents;
	var ItemSendsGeometryChanges;
	var ItemAcceptsInputMethod;
	var ItemNegativeZStacksBehindParent;
	var ItemIsPanel;
	var ItemSendsScenePositionChanges;
	var ItemContainsChildrenInShape;
}

@:pythonImport("PyQt5.QtWidgets", "PanelModality")
@:native("QGraphicsItem.PanelModality")
extern enum abstract QGraphicsItemPanelModality(Int) from Int to Int {
	var NonModal;
	var PanelModal;
	var SceneModal;
}

@:pythonImport("PyQt5.QtWidgets", "QAbstractGraphicsShapeItem")
@:native("QAbstractGraphicsShapeItem")
extern class QAbstractGraphicsShapeItem extends QGraphicsItem {
	function new(?parent:QGraphicsItem);

	function pen():QPen;
	function setPen(pen:QPen):Void;
	function brush():QBrush;
	function setBrush(brush:QBrush):Void;
	function isObscuredBy(item:QGraphicsItem):Bool;
	function opaqueArea():QPainterPath;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsPathItem")
@:native("QGraphicsPathItem")
extern class QGraphicsPathItem extends QAbstractGraphicsShapeItem {
	@:overload(function(?parent:QGraphicsItem):QGraphicsPathItem {})
	function new(path:QPainterPath, ?parent:QGraphicsItem);

	function path():QPainterPath;
	function setPath(path:QPainterPath):Void;
	function boundingRect():QRectF;
	function shape():QPainterPath;
	function contains(point:QPointF):Bool;
	function paint(painter:QPainter, option:QStyleOptionGraphicsItem, ?widget:QWidget):Void;
	function isObscuredBy(item:QGraphicsItem):Bool;
	function opaqueArea():QPainterPath;
	function type():Int;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsRectItem")
@:native("QGraphicsRectItem")
extern class QGraphicsRectItem extends QAbstractGraphicsShapeItem {
	@:overload(function(?parent:QGraphicsItem):QGraphicsRectItem {})
	@:overload(function(rect:QRectF, ?parent:QGraphicsItem):QGraphicsRectItem {})
	function new(x:Float, y:Float, w:Float, h:Float, ?parent:QGraphicsItem);

	function rect():QRectF;
	@:overload(function(ax:Float, ay:Float, w:Float, h:Float):Void {})
	function setRect(rect:QRectF):Void;
	function boundingRect():QRectF;
	function shape():QPainterPath;
	function contains(point:QPointF):Bool;
	function paint(painter:QPainter, option:QStyleOptionGraphicsItem, ?widget:QWidget):Void;
	function isObscuredBy(item:QGraphicsItem):Bool;
	function opaqueArea():QPainterPath;
	function type():Int;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsEllipseItem")
@:native("QGraphicsEllipseItem")
extern class QGraphicsEllipseItem extends QAbstractGraphicsShapeItem {
	@:overload(function(?parent:QGraphicsItem):QGraphicsEllipseItem {})
	@:overload(function(rect:QRectF, ?parent:QGraphicsItem):QGraphicsEllipseItem {})
	function new(x:Float, y:Float, w:Float, h:Float, ?parent:QGraphicsItem);

	function rect():QRectF;
	@:overload(function(ax:Float, ay:Float, w:Float, h:Float):Void {})
	function setRect(rect:QRectF):Void;
	function startAngle():Int;
	function setStartAngle(angle:Int):Void;
	function spanAngle():Int;
	function setSpanAngle(angle:Int):Void;
	function boundingRect():QRectF;
	function shape():QPainterPath;
	function contains(point:QPointF):Bool;
	function paint(painter:QPainter, option:QStyleOptionGraphicsItem, ?widget:QWidget):Void;
	function isObscuredBy(item:QGraphicsItem):Bool;
	function opaqueArea():QPainterPath;
	function type():Int;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsPolygonItem")
@:native("QGraphicsPolygonItem")
extern class QGraphicsPolygonItem extends QAbstractGraphicsShapeItem {
	@:overload(function(?parent:QGraphicsItem):QGraphicsPolygonItem {})
	function new(polygon:QPolygonF, ?parent:QGraphicsItem);

	function polygon():QPolygonF;
	function setPolygon(polygon:QPolygonF):Void;
	function fillRule():QtFillRule;
	function setFillRule(rule:QtFillRule):Void;
	function boundingRect():QRectF;
	function shape():QPainterPath;
	function contains(point:QPointF):Bool;
	function paint(painter:QPainter, option:QStyleOptionGraphicsItem, ?widget:QWidget):Void;
	function isObscuredBy(item:QGraphicsItem):Bool;
	function opaqueArea():QPainterPath;
	function type():Int;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsLineItem")
@:native("QGraphicsLineItem")
extern class QGraphicsLineItem extends QGraphicsItem {
	@:overload(function(?parent:QGraphicsItem):QGraphicsLineItem {})
	@:overload(function(line:QLineF, ?parent:QGraphicsItem):QGraphicsLineItem {})
	function new(x1:Float, y1:Float, x2:Float, y2:Float, ?parent:QGraphicsItem);

	function pen():QPen;
	function setPen(pen:QPen):Void;
	function line():QLineF;
	@:overload(function(x1:Float, y1:Float, x2:Float, y2:Float):Void {})
	function setLine(line:QLineF):Void;
	function boundingRect():QRectF;
	function shape():QPainterPath;
	function contains(point:QPointF):Bool;
	function paint(painter:QPainter, option:QStyleOptionGraphicsItem, ?widget:QWidget):Void;
	function isObscuredBy(item:QGraphicsItem):Bool;
	function opaqueArea():QPainterPath;
	function type():Int;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsPixmapItem")
@:native("QGraphicsPixmapItem")
extern class QGraphicsPixmapItem extends QGraphicsItem {
	@:overload(function(?parent:QGraphicsItem):QGraphicsPixmapItem {})
	function new(pixmap:QPixmap, ?parent:QGraphicsItem);

	function pixmap():QPixmap;
	function setPixmap(pixmap:QPixmap):Void;
	function transformationMode():QtTransformationMode;
	function setTransformationMode(mode:QtTransformationMode):Void;
	function offset():QPointF;
	@:overload(function(ax:Float, ay:Float):Void {})
	function setOffset(offset:QPointF):Void;
	function boundingRect():QRectF;
	function shape():QPainterPath;
	function contains(point:QPointF):Bool;
	function paint(painter:QPainter, option:QStyleOptionGraphicsItem, widget:QWidget):Void;
	function isObscuredBy(item:QGraphicsItem):Bool;
	function opaqueArea():QPainterPath;
	function type():Int;
	function shapeMode():QGraphicsPixmapItemShapeMode;
	function setShapeMode(mode:QGraphicsPixmapItemShapeMode):Void;
}

@:pythonImport("PyQt5.QtWidgets", "ShapeMode")
@:native("QGraphicsPixmapItem.ShapeMode")
extern enum abstract QGraphicsPixmapItemShapeMode(Int) from Int to Int {
	var MaskShape;
	var BoundingRectShape;
	var HeuristicMaskShape;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsSimpleTextItem")
@:native("QGraphicsSimpleTextItem")
extern class QGraphicsSimpleTextItem extends QAbstractGraphicsShapeItem {
	@:overload(function(?parent:QGraphicsItem):QGraphicsSimpleTextItem {})
	function new(text:QString, ?parent:QGraphicsItem);

	function setText(text:QString):Void;
	function text():QString;
	function setFont(font:QFont):Void;
	function font():QFont;
	function boundingRect():QRectF;
	function shape():QPainterPath;
	function contains(point:QPointF):Bool;
	function paint(painter:QPainter, option:QStyleOptionGraphicsItem, widget:QWidget):Void;
	function isObscuredBy(item:QGraphicsItem):Bool;
	function opaqueArea():QPainterPath;
	function type():Int;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsItemGroup")
@:native("QGraphicsItemGroup")
extern class QGraphicsItemGroup extends QGraphicsItem {
	function new(?parent:QGraphicsItem);

	function addToGroup(item:QGraphicsItem):Void;
	function removeFromGroup(item:QGraphicsItem):Void;
	function boundingRect():QRectF;
	function paint(painter:QPainter, option:QStyleOptionGraphicsItem, ?widget:QWidget):Void;
	function isObscuredBy(item:QGraphicsItem):Bool;
	function opaqueArea():QPainterPath;
	function type():Int;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsObject")
@:native("QGraphicsObject")
extern class QGraphicsObject extends QObject {
	var parentChanged:QSignal0;
	var opacityChanged:QSignal0;
	var visibleChanged:QSignal0;
	var enabledChanged:QSignal0;
	var xChanged:QSignal0;
	var yChanged:QSignal0;
	var zChanged:QSignal0;
	var rotationChanged:QSignal0;
	var scaleChanged:QSignal0;

	function new(?parent:QGraphicsItem);

	function grabGesture(type:QtGestureType, ?flags:QtGestureFlags):Void;
	function ungrabGesture(type:QtGestureType):Void;
	function updateMicroFocus():Void;
	function event(ev:QEvent):Bool;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsTextItem")
@:native("QGraphicsTextItem")
extern class QGraphicsTextItem extends QGraphicsObject {
	var linkActivated:QSignal1<QString>;
	var linkHovered:QSignal1<QString>;

	@:overload(function(?parent:QGraphicsItem):QGraphicsTextItem {})
	function new(text:QString, ?parent:QGraphicsItem);

	function toHtml():QString;
	function setHtml(html:QString):Void;
	function toPlainText():QString;
	function setPlainText(text:QString):Void;
	function font():QFont;
	function setFont(font:QFont):Void;
	function setDefaultTextColor(c:QColor):Void;
	function defaultTextColor():QColor;
	function boundingRect():QRectF;
	function shape():QPainterPath;
	function contains(point:QPointF):Bool;
	function paint(painter:QPainter, option:QStyleOptionGraphicsItem, widget:QWidget):Void;
	function isObscuredBy(item:QGraphicsItem):Bool;
	function opaqueArea():QPainterPath;
	function type():Int;
	function setTextWidth(width:Float):Void;
	function textWidth():Float;
	function adjustSize():Void;
	function setDocument(document:QTextDocument):Void;
	function document():QTextDocument;
	function setTextInteractionFlags(flags:QtTextInteractionFlags):Void;
	function textInteractionFlags():QtTextInteractionFlags;
	function setTabChangesFocus(b:Bool):Void;
	function tabChangesFocus():Bool;
	function setOpenExternalLinks(open:Bool):Void;
	function openExternalLinks():Bool;
	function setTextCursor(cursor:QTextCursor):Void;
	function textCursor():QTextCursor;
	function sceneEvent(event:QEvent):Bool;
	function mousePressEvent(event:QGraphicsSceneMouseEvent):Void;
	function mouseMoveEvent(event:QGraphicsSceneMouseEvent):Void;
	function mouseReleaseEvent(event:QGraphicsSceneMouseEvent):Void;
	function mouseDoubleClickEvent(event:QGraphicsSceneMouseEvent):Void;
	function contextMenuEvent(event:QGraphicsSceneContextMenuEvent):Void;
	function keyPressEvent(event:QKeyEvent):Void;
	function keyReleaseEvent(event:QKeyEvent):Void;
	function focusInEvent(event:QFocusEvent):Void;
	function focusOutEvent(event:QFocusEvent):Void;
	function dragEnterEvent(event:QGraphicsSceneDragDropEvent):Void;
	function dragLeaveEvent(event:QGraphicsSceneDragDropEvent):Void;
	function dragMoveEvent(event:QGraphicsSceneDragDropEvent):Void;
	function dropEvent(event:QGraphicsSceneDragDropEvent):Void;
	function inputMethodEvent(event:QInputMethodEvent):Void;
	function hoverEnterEvent(event:QGraphicsSceneHoverEvent):Void;
	function hoverMoveEvent(event:QGraphicsSceneHoverEvent):Void;
	function hoverLeaveEvent(event:QGraphicsSceneHoverEvent):Void;
	function inputMethodQuery(query:QtInputMethodQuery):QVariant;
}

