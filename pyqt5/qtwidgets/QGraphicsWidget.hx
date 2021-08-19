package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QGraphicsItem;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QGraphicsLayout;
import pyqt5.qtwidgets.QStyle;
import pyqt5.qtgui.QFont;
import pyqt5.qtgui.QPalette;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QMargins;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QKeySequence;
import pyqt5.qtwidgets.QAction;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QPainter;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtgui.QPainterPath;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QPoint;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtwidgets.QGraphicsSceneEvent;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtWidgets", "QGraphicsWidget")
@:native("QGraphicsWidget")
extern class QGraphicsWidget extends QGraphicsObject {
	static function setTabOrder(first:QGraphicsWidget, second:QGraphicsWidget):Void;

	var geometryChanged:QSignal0;

	function new(?parent:QGraphicsItem, ?flags:QtWindowFlags);

	function layout():QGraphicsLayout;
	function setLayout(layout:QGraphicsLayout):Void;
	function adjustSize():Void;
	function layoutDirection():QtLayoutDirection;
	function setLayoutDirection(direction:QtLayoutDirection):Void;
	function unsetLayoutDirection():Void;
	function style():QStyle;
	function setStyle(style:QStyle):Void;
	function font():QFont;
	function setFont(font:QFont):Void;
	function palette():QPalette;
	function setPalette(palette:QPalette):Void;
	@:overload(function(w:Float, h:Float):Void {})
	function resize(size:QSizeF):Void;
	function size():QSizeF;
	@:overload(function(ax:Float, ay:Float, aw:Float, ah:Float):Void {})
	function setGeometry(rect:QRectF):Void;
	function rect():QRectF;
	@:overload(function(left:Float, top:Float, right:Float, bottom:Float):Void {})
	function setContentsMargins(margins:QMarginsF):Void;
	function getContentsMargins(left:Float, top:Float, right:Float, bottom:Float):Void;
	@:overload(function(left:Float, top:Float, right:Float, bottom:Float):Void {})
	function setWindowFrameMargins(margins:QMarginsF):Void;
	function getWindowFrameMargins(left:Float, top:Float, right:Float, bottom:Float):Void;
	function unsetWindowFrameMargins():Void;
	function windowFrameGeometry():QRectF;
	function windowFrameRect():QRectF;
	function windowFlags():QtWindowFlags;
	function windowType():QtWindowType;
	function setWindowFlags(wFlags:QtWindowFlags):Void;
	function isActiveWindow():Bool;
	function setWindowTitle(title:QString):Void;
	function windowTitle():QString;
	function focusPolicy():QtFocusPolicy;
	function setFocusPolicy(policy:QtFocusPolicy):Void;
	function focusWidget():QGraphicsWidget;
	function grabShortcut(sequence:QKeySequence, ?context:QtShortcutContext):Int;
	function releaseShortcut(id:Int):Void;
	function setShortcutEnabled(id:Int, ?enabled:Bool):Void;
	function setShortcutAutoRepeat(id:Int, ?enabled:Bool):Void;
	function addAction(action:QAction):Void;
	function addActions(actions:QList<QAction>):Void;
	function insertAction(before:QAction, action:QAction):Void;
	function insertActions(before:QAction, actions:QList<QAction>):Void;
	function removeAction(action:QAction):Void;
	function actions():QList<QAction>;
	function setAttribute(attribute:QtWidgetAttribute, ?on:Bool):Void;
	function testAttribute(attribute:QtWidgetAttribute):Bool;
	function type():Int;
	function paint(painter:QPainter, option:QStyleOptionGraphicsItem, ?widget:QWidget):Void;
	function paintWindowFrame(painter:QPainter, option:QStyleOptionGraphicsItem, ?widget:QWidget):Void;
	function boundingRect():QRectF;
	function shape():QPainterPath;
	function close():Bool;
	function initStyleOption(option:QStyleOption):Void;
	function sizeHint(which:QtSizeHint, ?constraint:QSizeF):QSizeF;
	function updateGeometry():Void;
	function itemChange(change:QGraphicsItemGraphicsItemChange, value:QVariant):QVariant;
	function sceneEvent(event:QEvent):Bool;
	function windowFrameEvent(e:QEvent):Bool;
	function windowFrameSectionAt(pos:QPointF):QtWindowFrameSection;
	function event(event:QEvent):Bool;
	function changeEvent(event:QEvent):Void;
	function closeEvent(event:QCloseEvent):Void;
	function focusInEvent(event:QFocusEvent):Void;
	function focusNextPrevChild(next:Bool):Bool;
	function focusOutEvent(event:QFocusEvent):Void;
	function hideEvent(event:QHideEvent):Void;
	function moveEvent(event:QGraphicsSceneMoveEvent):Void;
	function polishEvent():Void;
	function resizeEvent(event:QGraphicsSceneResizeEvent):Void;
	function showEvent(event:QShowEvent):Void;
	function hoverMoveEvent(event:QGraphicsSceneHoverEvent):Void;
	function hoverLeaveEvent(event:QGraphicsSceneHoverEvent):Void;
	function grabMouseEvent(event:QEvent):Void;
	function ungrabMouseEvent(event:QEvent):Void;
	function grabKeyboardEvent(event:QEvent):Void;
	function ungrabKeyboardEvent(event:QEvent):Void;
	function autoFillBackground():Bool;
	function setAutoFillBackground(enabled:Bool):Void;
}

