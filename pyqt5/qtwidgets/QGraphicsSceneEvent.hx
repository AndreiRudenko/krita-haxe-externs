package pyqt5.qtwidgets;

import pyqt5.qtcore.QEvent;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtcore.QSize;

@:pythonImport("PyQt5.QtWidgets", "QGraphicsSceneEvent")
@:native("QGraphicsSceneEvent")
extern class QGraphicsSceneEvent extends QEvent {
	function new(?v:QGraphicsSceneEvent);

	function widget():QWidget;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsSceneMouseEvent")
@:native("QGraphicsSceneMouseEvent")
extern class QGraphicsSceneMouseEvent extends QGraphicsSceneEvent {
	function new(?v:QGraphicsSceneMouseEvent);

	function pos():QPointF;
	function scenePos():QPointF;
	function screenPos():QPoint;
	function buttonDownPos(button:QtMouseButton):QPointF;
	function buttonDownScenePos(button:QtMouseButton):QPointF;
	function buttonDownScreenPos(button:QtMouseButton):QPoint;
	function lastPos():QPointF;
	function lastScenePos():QPointF;
	function lastScreenPos():QPoint;
	function buttons():QtMouseButtons;
	function button():QtMouseButton;
	function modifiers():QtKeyboardModifiers;
	function source():QtMouseEventSource;
	function flags():QtMouseEventFlags;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsSceneWheelEvent")
@:native("QGraphicsSceneWheelEvent")
extern class QGraphicsSceneWheelEvent extends QGraphicsSceneEvent {
	function new(?v:QGraphicsSceneWheelEvent);

	function pos():QPointF;
	function scenePos():QPointF;
	function screenPos():QPoint;
	function buttons():QtMouseButtons;
	function modifiers():QtKeyboardModifiers;
	function delta():Int;
	function orientation():QtOrientation;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsSceneContextMenuEvent")
@:native("QGraphicsSceneContextMenuEvent")
extern class QGraphicsSceneContextMenuEvent extends QGraphicsSceneEvent {
	function new(?v:QGraphicsSceneContextMenuEvent);

	function pos():QPointF;
	function scenePos():QPointF;
	function screenPos():QPoint;
	function modifiers():QtKeyboardModifiers;
	function reason():QGraphicsSceneContextMenuEventReason;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsSceneContextMenuEvent")
@:native("QGraphicsSceneContextMenuEvent")
extern enum abstract QGraphicsSceneContextMenuEventReason(Int) from Int to Int {
	var Mouse;
	var Keyboard;
	var Other;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsSceneHoverEvent")
@:native("QGraphicsSceneHoverEvent")
extern class QGraphicsSceneHoverEvent extends QGraphicsSceneEvent {
	function new(?v:QGraphicsSceneHoverEvent);

	function pos():QPointF;
	function scenePos():QPointF;
	function screenPos():QPoint;
	function lastPos():QPointF;
	function lastScenePos():QPointF;
	function lastScreenPos():QPoint;
	function modifiers():QtKeyboardModifiers;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsSceneHelpEvent")
@:native("QGraphicsSceneHelpEvent")
extern class QGraphicsSceneHelpEvent extends QGraphicsSceneEvent {
	function new(?v:QGraphicsSceneHelpEvent);

	function scenePos():QPointF;
	function screenPos():QPoint;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsSceneDragDropEvent")
@:native("QGraphicsSceneDragDropEvent")
extern class QGraphicsSceneDragDropEvent extends QGraphicsSceneEvent {
	function new(?v:QGraphicsSceneDragDropEvent);

	function pos():QPointF;
	function scenePos():QPointF;
	function screenPos():QPoint;
	function buttons():QtMouseButtons;
	function modifiers():QtKeyboardModifiers;
	function possibleActions():QtDropActions;
	function proposedAction():QtDropAction;
	function acceptProposedAction():Void;
	function dropAction():QtDropAction;
	function setDropAction(action:QtDropAction):Void;
	function source():QWidget;
	function mimeData():QMimeData;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsSceneResizeEvent")
@:native("QGraphicsSceneResizeEvent")
extern class QGraphicsSceneResizeEvent extends QGraphicsSceneEvent {
	@:overload(function():QGraphicsSceneResizeEvent {})
	function new(?v:QGraphicsSceneResizeEvent);

	function oldSize():QSizeF;
	function newSize():QSizeF;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsSceneMoveEvent")
@:native("QGraphicsSceneMoveEvent")
extern class QGraphicsSceneMoveEvent extends QGraphicsSceneEvent {
	@:overload(function():QGraphicsSceneMoveEvent {})
	function new(?v:QGraphicsSceneMoveEvent);

	function oldPos():QPointF;
	function newPos():QPointF;
}

