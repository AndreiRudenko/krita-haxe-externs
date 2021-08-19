package pyqt5.qtgui;

import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QKeySequence;
import pyqt5.qtgui.QRegion;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtcore.QObject;
import pyqt5.qtwidgets.QAction;
import pyqt5.qtcore.QUrl;
import pyqt5.qtcore.QFile;
import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtgui.QVector2D;
import pyqt5.qtcore.QVector;
import pyqt5.qtgui.QTouchDevice;
import pyqt5.qtgui.QWindow;

typedef TouchPointInfoFlags = QFlags<TouchPoint>;

@:pythonImport("PyQt5.QtGui", "QInputEvent")
@:native("QInputEvent")
extern class QInputEvent extends QEvent {
	function modifiers():QtKeyboardModifiers;
	function timestamp():UInt;
	function setTimestamp(atimestamp:UInt):Void;
}

@:pythonImport("PyQt5.QtGui", "QMouseEvent")
@:native("QMouseEvent")
extern class QMouseEvent extends QInputEvent {
	@:overload(function(type:QEventType, pos:QPointF, button:QtMouseButton, buttons:QtMouseButtons, modifiers:QtKeyboardModifiers):QMouseEvent {})
	@:overload(function(type:QEventType, pos:QPointF, globalPos:QPointF, button:QtMouseButton, buttons:QtMouseButtons, modifiers:QtKeyboardModifiers):QMouseEvent {})
	@:overload(function(type:QEventType, pos:QPointF, windowPos:QPointF, globalPos:QPointF, button:QtMouseButton, buttons:QtMouseButtons, modifiers:QtKeyboardModifiers):QMouseEvent {})
	function new(type:QEventType, localPos:QPointF, windowPos:QPointF, screenPos:QPointF, button:QtMouseButton, buttons:QtMouseButtons, modifiers:QtKeyboardModifiers, source:QtMouseEventSource);

	function pos():QPoint;
	function globalPos():QPoint;
	function x():Int;
	function y():Int;
	function globalX():Int;
	function globalY():Int;
	function button():QtMouseButton;
	function buttons():QtMouseButtons;
	function localPos():QPointF;
	function windowPos():QPointF;
	function screenPos():QPointF;
	function source():QtMouseEventSource;
	function flags():QtMouseEventFlags;
}

@:pythonImport("PyQt5.QtGui", "QHoverEvent")
@:native("QHoverEvent")
extern class QHoverEvent extends QInputEvent {
	function new(type:QEventType, pos:QPointF, oldPos:QPointF, ?modifiers:QtKeyboardModifiers);

	function pos():QPoint;
	function oldPos():QPoint;
	function posF():QPointF;
	function oldPosF():QPointF;
}

@:pythonImport("PyQt5.QtGui", "QWheelEvent")
@:native("QWheelEvent")
extern class QWheelEvent extends QInputEvent {
	@:overload(function(pos:QPointF, globalPos:QPointF, pixelDelta:QPoint, angleDelta:QPoint, qt4Delta:Int, qt4Orientation:QtOrientation, buttons:QtMouseButtons, modifiers:QtKeyboardModifiers):QWheelEvent {})
	@:overload(function(pos:QPointF, globalPos:QPointF, pixelDelta:QPoint, angleDelta:QPoint, qt4Delta:Int, qt4Orientation:QtOrientation, buttons:QtMouseButtons, modifiers:QtKeyboardModifiers, phase:QtScrollPhase):QWheelEvent {})
	@:overload(function(pos:QPointF, globalPos:QPointF, pixelDelta:QPoint, angleDelta:QPoint, qt4Delta:Int, qt4Orientation:QtOrientation, buttons:QtMouseButtons, modifiers:QtKeyboardModifiers, phase:QtScrollPhase, source:QtMouseEventSource):QWheelEvent {})
	@:overload(function(pos:QPointF, globalPos:QPointF, pixelDelta:QPoint, angleDelta:QPoint, qt4Delta:Int, qt4Orientation:QtOrientation, buttons:QtMouseButtons, modifiers:QtKeyboardModifiers, phase:QtScrollPhase, source:QtMouseEventSource, inverted:Bool):QWheelEvent {})
	function new(pos:QPointF, globalPos:QPointF, pixelDelta:QPoint, angleDelta:QPoint, buttons:QtMouseButtons, modifiers:QtKeyboardModifiers, phase:QtScrollPhase, inverted:Bool, ?source:QtMouseEventSource);

	function pos():QPoint;
	function globalPos():QPoint;
	function x():Int;
	function y():Int;
	function globalX():Int;
	function globalY():Int;
	function buttons():QtMouseButtons;
	function pixelDelta():QPoint;
	function angleDelta():QPoint;
	function posF():QPointF;
	function globalPosF():QPointF;
	function phase():QtScrollPhase;
	function source():QtMouseEventSource;
	function inverted():Bool;
	function position():QPointF;
	function globalPosition():QPointF;
}

@:pythonImport("PyQt5.QtGui", "QTabletEvent")
@:native("QTabletEvent")
extern class QTabletEvent extends QInputEvent {
	@:overload(function(t:QEventType, pos:QPointF, globalPos:QPointF, device:Int, pointerType:Int, pressure:Float, xTilt:Int, yTilt:Int, tangentialPressure:Float, rotation:Float, z:Int, keyState:QtKeyboardModifiers, uniqueID:Int, button:QtMouseButton, buttons:QtMouseButtons):QTabletEvent {})
	function new(t:QEventType, pos:QPointF, globalPos:QPointF, device:Int, pointerType:Int, pressure:Float, xTilt:Int, yTilt:Int, tangentialPressure:Float, rotation:Float, z:Int, keyState:QtKeyboardModifiers, uniqueID:Int);

	function pos():QPoint;
	function globalPos():QPoint;
	function x():Int;
	function y():Int;
	function globalX():Int;
	function globalY():Int;
	function hiResGlobalX():Float;
	function hiResGlobalY():Float;
	function device():QTabletEventTabletDevice;
	function pointerType():QTabletEventPointerType;
	function uniqueId():Int;
	function pressure():Float;
	function z():Int;
	function tangentialPressure():Float;
	function rotation():Float;
	function xTilt():Int;
	function yTilt():Int;
	function posF():QPointF;
	function globalPosF():QPointF;
	function button():QtMouseButton;
	function buttons():QtMouseButtons;
	function deviceType():QTabletEventTabletDevice;
}

@:pythonImport("PyQt5.QtGui", "TabletDevice")
@:native("QTabletEvent.TabletDevice")
extern enum abstract QTabletEventTabletDevice(Int) from Int to Int {
	var NoDevice;
	var Puck;
	var Stylus;
	var Airbrush;
	var FourDMouse;
	var XFreeEraser;
	var RotationStylus;
}

@:pythonImport("PyQt5.QtGui", "PointerType")
@:native("QTabletEvent.PointerType")
extern enum abstract QTabletEventPointerType(Int) from Int to Int {
	var UnknownPointer;
	var Pen;
	var Cursor;
	var Eraser;
}

@:pythonImport("PyQt5.QtGui", "QKeyEvent")
@:native("QKeyEvent")
extern class QKeyEvent extends QInputEvent {
	@:overload(function(type:QEventType, key:Int, modifiers:QtKeyboardModifiers, nativeScanCode:UInt, nativeVirtualKey:UInt, nativeModifiers:UInt, ?text:QString):QKeyEvent {})
	function new(type:QEventType, key:Int, modifiers:QtKeyboardModifiers, ?text:QString);

	function key():Int;
	function modifiers():QtKeyboardModifiers;
	function text():QString;
	function isAutoRepeat():Bool;
	function count():Int;
	function matches(key:QKeySequenceStandardKey):Bool;
	function nativeModifiers():UInt;
	function nativeScanCode():UInt;
	function nativeVirtualKey():UInt;
}

@:pythonImport("PyQt5.QtGui", "QFocusEvent")
@:native("QFocusEvent")
extern class QFocusEvent extends QEvent {
	function new(type:QEventType, ?reason:QtFocusReason);

	function gotFocus():Bool;
	function lostFocus():Bool;
	function reason():QtFocusReason;
}

@:pythonImport("PyQt5.QtGui", "QPaintEvent")
@:native("QPaintEvent")
extern class QPaintEvent extends QEvent {
	@:overload(function(paintRegion:QRegion):QPaintEvent {})
	function new(paintRect:QRect);

	function rect():QRect;
	function region():QRegion;
}

@:pythonImport("PyQt5.QtGui", "QMoveEvent")
@:native("QMoveEvent")
extern class QMoveEvent extends QEvent {
	function new(pos:QPoint, oldPos:QPoint);

	function pos():QPoint;
	function oldPos():QPoint;
}

@:pythonImport("PyQt5.QtGui", "QResizeEvent")
@:native("QResizeEvent")
extern class QResizeEvent extends QEvent {
	function new(size:QSize, oldSize:QSize);

	function size():QSize;
	function oldSize():QSize;
}

@:pythonImport("PyQt5.QtGui", "QCloseEvent")
@:native("QCloseEvent")
extern class QCloseEvent extends QEvent {
	function new();
}

@:pythonImport("PyQt5.QtGui", "QIconDragEvent")
@:native("QIconDragEvent")
extern class QIconDragEvent extends QEvent {
	function new();
}

@:pythonImport("PyQt5.QtGui", "QShowEvent")
@:native("QShowEvent")
extern class QShowEvent extends QEvent {
	function new();
}

@:pythonImport("PyQt5.QtGui", "QHideEvent")
@:native("QHideEvent")
extern class QHideEvent extends QEvent {
	function new();
}

@:pythonImport("PyQt5.QtGui", "QContextMenuEvent")
@:native("QContextMenuEvent")
extern class QContextMenuEvent extends QInputEvent {
	@:overload(function(reason:QContextMenuEventReason, pos:QPoint, globalPos:QPoint, modifiers:QtKeyboardModifiers):QContextMenuEvent {})
	@:overload(function(reason:QContextMenuEventReason, pos:QPoint, globalPos:QPoint):QContextMenuEvent {})
	function new(reason:QContextMenuEventReason, pos:QPoint);

	function x():Int;
	function y():Int;
	function globalX():Int;
	function globalY():Int;
	function pos():QPoint;
	function globalPos():QPoint;
	function reason():QContextMenuEventReason;
}

@:pythonImport("PyQt5.QtGui", "Reason")
@:native("QContextMenuEvent.Reason")
extern enum abstract QContextMenuEventReason(Int) from Int to Int {
	var Mouse;
	var Keyboard;
	var Other;
}

@:pythonImport("PyQt5.QtGui", "QInputMethodEvent")
@:native("QInputMethodEvent")
extern class QInputMethodEvent extends QEvent {
	@:overload(function():QInputMethodEvent {})
	@:overload(function(preeditText:QString, attributes:QList<Attribute>):QInputMethodEvent {})
	function new(other:QInputMethodEvent);

	function setCommitString(commitString:QString, ?from:Int, ?length:Int):Void;
	function attributes():QList<Attribute>;
	function preeditString():QString;
	function commitString():QString;
	function replacementStart():Int;
	function replacementLength():Int;
}

@:pythonImport("PyQt5.QtGui", "AttributeType")
@:native("QInputMethodEvent.AttributeType")
extern enum abstract QInputMethodEventAttributeType(Int) from Int to Int {
	var TextFormat;
	var Cursor;
	var Language;
	var Ruby;
	var Selection;
}

@:pythonImport("PyQt5.QtGui", "Attribute")
@:native("Attribute")
extern class Attribute {
	@:overload(function(t:QInputMethodEventAttributeType, s:Int, l:Int, val:QVariant):Attribute {})
	function new(typ:QInputMethodEventAttributeType, s:Int, l:Int);
}

@:pythonImport("PyQt5.QtGui", "QInputMethodQueryEvent")
@:native("QInputMethodQueryEvent")
extern class QInputMethodQueryEvent extends QEvent {
	function new(queries:QtInputMethodQueries);

	function queries():QtInputMethodQueries;
	function setValue(query:QtInputMethodQuery, value:QVariant):Void;
	function value(query:QtInputMethodQuery):QVariant;
}

@:pythonImport("PyQt5.QtGui", "QDropEvent")
@:native("QDropEvent")
extern class QDropEvent extends QEvent {
	function new(pos:QPointF, actions:QtDropActions, data:QMimeData, buttons:QtMouseButtons, modifiers:QtKeyboardModifiers, ?type:QEventType);

	function pos():QPoint;
	function posF():QPointF;
	function mouseButtons():QtMouseButtons;
	function keyboardModifiers():QtKeyboardModifiers;
	function possibleActions():QtDropActions;
	function proposedAction():QtDropAction;
	function acceptProposedAction():Void;
	function dropAction():QtDropAction;
	function setDropAction(action:QtDropAction):Void;
	function source():QObject;
	function mimeData():QMimeData;
}

@:pythonImport("PyQt5.QtGui", "QDragMoveEvent")
@:native("QDragMoveEvent")
extern class QDragMoveEvent extends QDropEvent {
	function new(pos:QPoint, actions:QtDropActions, data:QMimeData, buttons:QtMouseButtons, modifiers:QtKeyboardModifiers, ?type:QEventType);

	function answerRect():QRect;
	@:overload(function(r:QRect):Void {})
	function accept():Void;
	@:overload(function(r:QRect):Void {})
	function ignore():Void;
}

@:pythonImport("PyQt5.QtGui", "QDragEnterEvent")
@:native("QDragEnterEvent")
extern class QDragEnterEvent extends QDragMoveEvent {
	function new(pos:QPoint, actions:QtDropActions, data:QMimeData, buttons:QtMouseButtons, modifiers:QtKeyboardModifiers);
}

@:pythonImport("PyQt5.QtGui", "QDragLeaveEvent")
@:native("QDragLeaveEvent")
extern class QDragLeaveEvent extends QEvent {
	function new();
}

@:pythonImport("PyQt5.QtGui", "QHelpEvent")
@:native("QHelpEvent")
extern class QHelpEvent extends QEvent {
	function new(type:QEventType, pos:QPoint, globalPos:QPoint);

	function x():Int;
	function y():Int;
	function globalX():Int;
	function globalY():Int;
	function pos():QPoint;
	function globalPos():QPoint;
}

@:pythonImport("PyQt5.QtGui", "QStatusTipEvent")
@:native("QStatusTipEvent")
extern class QStatusTipEvent extends QEvent {
	function new(tip:QString);

	function tip():QString;
}

@:pythonImport("PyQt5.QtGui", "QWhatsThisClickedEvent")
@:native("QWhatsThisClickedEvent")
extern class QWhatsThisClickedEvent extends QEvent {
	function new(href:QString);

	function href():QString;
}

@:pythonImport("PyQt5.QtGui", "QActionEvent")
@:native("QActionEvent")
extern class QActionEvent extends QEvent {
	function new(type:Int, action:QAction, ?before:QAction);

	function action():QAction;
	function before():QAction;
}

@:pythonImport("PyQt5.QtGui", "QFileOpenEvent")
@:native("QFileOpenEvent")
extern class QFileOpenEvent extends QEvent {
	function file():QString;
	function url():QUrl;
	function openFile(file:QFile, flags:QIODeviceOpenMode):Bool;
}

@:pythonImport("PyQt5.QtGui", "QShortcutEvent")
@:native("QShortcutEvent")
extern class QShortcutEvent extends QEvent {
	function new(key:QKeySequence, id:Int, ?ambiguous:Bool);

	function isAmbiguous():Bool;
	function key():QKeySequence;
	function shortcutId():Int;
}

@:pythonImport("PyQt5.QtGui", "QWindowStateChangeEvent")
@:native("QWindowStateChangeEvent")
extern class QWindowStateChangeEvent extends QEvent {
	function oldState():QtWindowStates;
}

@:pythonImport("PyQt5.QtGui", "QTouchEvent")
@:native("QTouchEvent")
extern class QTouchEvent extends QInputEvent {
	function new(eventType:QEventType, ?device:QTouchDevice, ?modifiers:QtKeyboardModifiers, ?touchPointStates:QtTouchPointStates);

	function target():QObject;
	function touchPointStates():QtTouchPointStates;
	function touchPoints():QList<TouchPoint>;
	function window():QWindow;
	function device():QTouchDevice;
	function setDevice(adevice:QTouchDevice):Void;
}

@:pythonImport("PyQt5.QtGui", "TouchPoint")
@:native("TouchPoint")
extern class TouchPoint {
	function id():Int;
	function state():QtTouchPointState;
	function pos():QPointF;
	function startPos():QPointF;
	function lastPos():QPointF;
	function scenePos():QPointF;
	function startScenePos():QPointF;
	function lastScenePos():QPointF;
	function screenPos():QPointF;
	function startScreenPos():QPointF;
	function lastScreenPos():QPointF;
	function normalizedPos():QPointF;
	function startNormalizedPos():QPointF;
	function lastNormalizedPos():QPointF;
	function rect():QRectF;
	function sceneRect():QRectF;
	function screenRect():QRectF;
	function pressure():Float;
	function velocity():QVector2D;
	function rawScreenPositions():QVector<QPointF>;
	function uniqueId():QPointingDeviceUniqueId;
	function rotation():Float;
	function ellipseDiameters():QSizeF;
}

@:pythonImport("PyQt5.QtGui", "InfoFlag")
@:native("TouchPoint.InfoFlag")
extern enum abstract TouchPointInfoFlag(Int) from Int to Int {
	var Pen;
	var Token;
}

@:pythonImport("PyQt5.QtGui", "QExposeEvent")
@:native("QExposeEvent")
extern class QExposeEvent extends QEvent {
	function new(rgn:QRegion);

	function region():QRegion;
}

@:pythonImport("PyQt5.QtGui", "QScrollPrepareEvent")
@:native("QScrollPrepareEvent")
extern class QScrollPrepareEvent extends QEvent {
	function new(startPos:QPointF);

	function startPos():QPointF;
	function viewportSize():QSizeF;
	function contentPosRange():QRectF;
	function contentPos():QPointF;
	function setViewportSize(size:QSizeF):Void;
	function setContentPosRange(rect:QRectF):Void;
	function setContentPos(pos:QPointF):Void;
}

@:pythonImport("PyQt5.QtGui", "QScrollEvent")
@:native("QScrollEvent")
extern class QScrollEvent extends QEvent {
	function new(contentPos:QPointF, overshoot:QPointF, scrollState:QScrollEventScrollState);

	function contentPos():QPointF;
	function overshootDistance():QPointF;
	function scrollState():QScrollEventScrollState;
}

@:pythonImport("PyQt5.QtGui", "ScrollState")
@:native("QScrollEvent.ScrollState")
extern enum abstract QScrollEventScrollState(Int) from Int to Int {
	var ScrollStarted;
	var ScrollUpdated;
	var ScrollFinished;
}

@:pythonImport("PyQt5.QtGui", "QEnterEvent")
@:native("QEnterEvent")
extern class QEnterEvent extends QEvent {
	function new(localPos:QPointF, windowPos:QPointF, screenPos:QPointF);

	function pos():QPoint;
	function globalPos():QPoint;
	function x():Int;
	function y():Int;
	function globalX():Int;
	function globalY():Int;
	function localPos():QPointF;
	function windowPos():QPointF;
	function screenPos():QPointF;
}

@:pythonImport("PyQt5.QtGui", "QNativeGestureEvent")
@:native("QNativeGestureEvent")
extern class QNativeGestureEvent extends QInputEvent {
	@:overload(function(type:QtNativeGestureType, localPos:QPointF, windowPos:QPointF, screenPos:QPointF, value:Float, sequenceId:UInt, intArgument:UInt):QNativeGestureEvent {})
	function new(type:QtNativeGestureType, dev:QTouchDevice, localPos:QPointF, windowPos:QPointF, screenPos:QPointF, value:Float, sequenceId:UInt, intArgument:UInt);

	function gestureType():QtNativeGestureType;
	function value():Float;
	function pos():QPoint;
	function globalPos():QPoint;
	function localPos():QPointF;
	function windowPos():QPointF;
	function screenPos():QPointF;
	function device():QTouchDevice;
}

@:pythonImport("PyQt5.QtGui", "QPlatformSurfaceEvent")
@:native("QPlatformSurfaceEvent")
extern class QPlatformSurfaceEvent extends QEvent {
	function new(surfaceEventType:QPlatformSurfaceEventSurfaceEventType);

	function surfaceEventType():QPlatformSurfaceEventSurfaceEventType;
}

@:pythonImport("PyQt5.QtGui", "SurfaceEventType")
@:native("QPlatformSurfaceEvent.SurfaceEventType")
extern enum abstract QPlatformSurfaceEventSurfaceEventType(Int) from Int to Int {
	var SurfaceCreated;
	var SurfaceAboutToBeDestroyed;
}

@:pythonImport("PyQt5.QtGui", "QPointingDeviceUniqueId")
@:native("QPointingDeviceUniqueId")
extern class QPointingDeviceUniqueId {
	static function fromNumericId(id:Int):QPointingDeviceUniqueId;

	function new();

	function isValid():Bool;
	function numericId():Int;
}

