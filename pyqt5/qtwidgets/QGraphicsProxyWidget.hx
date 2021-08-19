package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QGraphicsWidget;
import pyqt5.qtwidgets.QGraphicsItem;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QPainter;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtwidgets.QGraphicsSceneEvent;
import pyqt5.qtcore.QSize;

@:pythonImport("PyQt5.QtWidgets", "QGraphicsProxyWidget")
@:native("QGraphicsProxyWidget")
extern class QGraphicsProxyWidget extends QGraphicsWidget {
	function new(?parent:QGraphicsItem, ?flags:QtWindowFlags);

	function setWidget(widget:QWidget):Void;
	function widget():QWidget;
	function subWidgetRect(widget:QWidget):QRectF;
	function setGeometry(rect:QRectF):Void;
	function paint(painter:QPainter, option:QStyleOptionGraphicsItem, widget:QWidget):Void;
	function type():Int;
	function createProxyForChildWidget(child:QWidget):QGraphicsProxyWidget;
	function itemChange(change:QGraphicsItemGraphicsItemChange, value:QVariant):QVariant;
	function event(event:QEvent):Bool;
	function eventFilter(object:QObject, event:QEvent):Bool;
	function showEvent(event:QShowEvent):Void;
	function hideEvent(event:QHideEvent):Void;
	function contextMenuEvent(event:QGraphicsSceneContextMenuEvent):Void;
	function hoverEnterEvent(event:QGraphicsSceneHoverEvent):Void;
	function hoverLeaveEvent(event:QGraphicsSceneHoverEvent):Void;
	function hoverMoveEvent(event:QGraphicsSceneHoverEvent):Void;
	function grabMouseEvent(event:QEvent):Void;
	function ungrabMouseEvent(event:QEvent):Void;
	function mouseMoveEvent(event:QGraphicsSceneMouseEvent):Void;
	function mousePressEvent(event:QGraphicsSceneMouseEvent):Void;
	function mouseReleaseEvent(event:QGraphicsSceneMouseEvent):Void;
	function mouseDoubleClickEvent(event:QGraphicsSceneMouseEvent):Void;
	function wheelEvent(event:QGraphicsSceneWheelEvent):Void;
	function keyPressEvent(event:QKeyEvent):Void;
	function keyReleaseEvent(event:QKeyEvent):Void;
	function focusInEvent(event:QFocusEvent):Void;
	function focusOutEvent(event:QFocusEvent):Void;
	function focusNextPrevChild(next:Bool):Bool;
	function sizeHint(which:QtSizeHint, ?constraint:QSizeF):QSizeF;
	function resizeEvent(event:QGraphicsSceneResizeEvent):Void;
	function dragEnterEvent(event:QGraphicsSceneDragDropEvent):Void;
	function dragLeaveEvent(event:QGraphicsSceneDragDropEvent):Void;
	function dragMoveEvent(event:QGraphicsSceneDragDropEvent):Void;
	function dropEvent(event:QGraphicsSceneDragDropEvent):Void;
	function newProxyWidget(?v:QWidget):QGraphicsProxyWidget;
	function inputMethodQuery(query:QtInputMethodQuery):QVariant;
	function inputMethodEvent(event:QInputMethodEvent):Void;
}

