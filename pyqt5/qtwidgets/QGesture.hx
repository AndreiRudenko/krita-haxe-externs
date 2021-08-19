package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QList;
import pyqt5.qtwidgets.QWidget;

typedef QPinchGestureChangeFlags = QFlags<QPinchGestureChangeFlag>;

@:pythonImport("PyQt5.QtWidgets", "QGesture")
@:native("QGesture")
extern class QGesture extends QObject {
	function new(?parent:QObject);

	function gestureType():QtGestureType;
	function state():QtGestureState;
	function hotSpot():QPointF;
	function setHotSpot(value:QPointF):Void;
	function hasHotSpot():Bool;
	function unsetHotSpot():Void;
	function setGestureCancelPolicy(policy:QGestureGestureCancelPolicy):Void;
	function gestureCancelPolicy():QGestureGestureCancelPolicy;
}

@:pythonImport("PyQt5.QtWidgets", "QGesture")
@:native("QGesture")
extern enum abstract QGestureGestureCancelPolicy(Int) from Int to Int {
	var CancelNone;
	var CancelAllInContext;
}

@:pythonImport("PyQt5.QtWidgets", "QPanGesture")
@:native("QPanGesture")
extern class QPanGesture extends QGesture {
	function new(?parent:QObject);

	function lastOffset():QPointF;
	function offset():QPointF;
	function delta():QPointF;
	function acceleration():Float;
	function setLastOffset(value:QPointF):Void;
	function setOffset(value:QPointF):Void;
	function setAcceleration(value:Float):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QPinchGesture")
@:native("QPinchGesture")
extern class QPinchGesture extends QGesture {
	function new(?parent:QObject);

	function totalChangeFlags():QPinchGestureChangeFlags;
	function setTotalChangeFlags(value:QPinchGestureChangeFlags):Void;
	function changeFlags():QPinchGestureChangeFlags;
	function setChangeFlags(value:QPinchGestureChangeFlags):Void;
	function startCenterPoint():QPointF;
	function lastCenterPoint():QPointF;
	function centerPoint():QPointF;
	function setStartCenterPoint(value:QPointF):Void;
	function setLastCenterPoint(value:QPointF):Void;
	function setCenterPoint(value:QPointF):Void;
	function totalScaleFactor():Float;
	function lastScaleFactor():Float;
	function scaleFactor():Float;
	function setTotalScaleFactor(value:Float):Void;
	function setLastScaleFactor(value:Float):Void;
	function setScaleFactor(value:Float):Void;
	function totalRotationAngle():Float;
	function lastRotationAngle():Float;
	function rotationAngle():Float;
	function setTotalRotationAngle(value:Float):Void;
	function setLastRotationAngle(value:Float):Void;
	function setRotationAngle(value:Float):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QPinchGesture")
@:native("QPinchGesture")
extern enum abstract QPinchGestureChangeFlag(Int) from Int to Int {
	var ScaleFactorChanged;
	var RotationAngleChanged;
	var CenterPointChanged;
}

@:pythonImport("PyQt5.QtWidgets", "QSwipeGesture")
@:native("QSwipeGesture")
extern class QSwipeGesture extends QGesture {
	function new(?parent:QObject);

	function horizontalDirection():QSwipeGestureSwipeDirection;
	function verticalDirection():QSwipeGestureSwipeDirection;
	function swipeAngle():Float;
	function setSwipeAngle(value:Float):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QSwipeGesture")
@:native("QSwipeGesture")
extern enum abstract QSwipeGestureSwipeDirection(Int) from Int to Int {
	var NoDirection;
	var Left;
	var Right;
	var Up;
	var Down;
}

@:pythonImport("PyQt5.QtWidgets", "QTapGesture")
@:native("QTapGesture")
extern class QTapGesture extends QGesture {
	function new(?parent:QObject);

	function position():QPointF;
	function setPosition(pos:QPointF):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QTapAndHoldGesture")
@:native("QTapAndHoldGesture")
extern class QTapAndHoldGesture extends QGesture {
	static function setTimeout(msecs:Int):Void;
	static function timeout():Int;

	function new(?parent:QObject);

	function position():QPointF;
	function setPosition(pos:QPointF):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QGestureEvent")
@:native("QGestureEvent")
extern class QGestureEvent extends QEvent {
	function new(gestures:QList<QGesture>);

	function gestures():QList<QGesture>;
	function gesture(type:QtGestureType):QGesture;
	function activeGestures():QList<QGesture>;
	function canceledGestures():QList<QGesture>;
	@:overload(function(?v:QGesture, ?v:Bool):Void {})
	@:overload(function(?v:QtGestureType, ?v:Bool):Void {})
	function setAccepted(accepted:Bool):Void;
	@:overload(function(?v:QGesture):Bool {})
	@:overload(function(?v:QtGestureType):Bool {})
	function isAccepted():Bool;
	@:overload(function(?v:QGesture):Void {})
	@:overload(function(?v:QtGestureType):Void {})
	function accept():Void;
	@:overload(function(?v:QGesture):Void {})
	@:overload(function(?v:QtGestureType):Void {})
	function ignore():Void;
	function widget():QWidget;
	function mapToGraphicsScene(gesturePoint:QPointF):QPointF;
}

