package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QPoint;
import pyqt5.qtwidgets.QScrollerProperties;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtWidgets", "QScroller")
@:native("QScroller")
extern class QScroller extends QObject {
	static function hasScroller(target:QObject):Bool;
	static function scroller(target:QObject):QScroller;
	static function grabGesture(target:QObject, ?scrollGestureType:QScrollerScrollerGestureType):QtGestureType;
	static function grabbedGesture(target:QObject):QtGestureType;
	static function ungrabGesture(target:QObject):Void;
	static function activeScrollers():QList<QScroller>;

	var stateChanged:QSignal1<QScrollerState>;
	var scrollerPropertiesChanged:QSignal1<QScrollerProperties>;

	@:overload(function(target:QObject):QScroller {})
	function new(?v:QScroller);

	function target():QObject;
	function state():QScrollerState;
	function handleInput(input:QScrollerInput, position:QPointF, ?timestamp:Int):Bool;
	function stop():Void;
	function velocity():QPointF;
	function finalPosition():QPointF;
	function pixelPerMeter():QPointF;
	function scrollerProperties():QScrollerProperties;
	@:overload(function(first:Float, interval:Float):Void {})
	function setSnapPositionsX(positions:QList<Float>):Void;
	@:overload(function(first:Float, interval:Float):Void {})
	function setSnapPositionsY(positions:QList<Float>):Void;
	function setScrollerProperties(prop:QScrollerProperties):Void;
	@:overload(function(pos:QPointF, scrollTime:Int):Void {})
	function scrollTo(pos:QPointF):Void;
	@:overload(function(rect:QRectF, xmargin:Float, ymargin:Float, scrollTime:Int):Void {})
	function ensureVisible(rect:QRectF, xmargin:Float, ymargin:Float):Void;
	function resendPrepareEvent():Void;
}

@:pythonImport("PyQt5.QtWidgets", "QScroller")
@:native("QScroller")
extern enum abstract QScrollerState(Int) from Int to Int {
	var Inactive;
	var Pressed;
	var Dragging;
	var Scrolling;
}

@:pythonImport("PyQt5.QtWidgets", "QScroller")
@:native("QScroller")
extern enum abstract QScrollerScrollerGestureType(Int) from Int to Int {
	var TouchGesture;
	var LeftMouseButtonGesture;
	var RightMouseButtonGesture;
	var MiddleMouseButtonGesture;
}

@:pythonImport("PyQt5.QtWidgets", "QScroller")
@:native("QScroller")
extern enum abstract QScrollerInput(Int) from Int to Int {
	var InputPress;
	var InputMove;
	var InputRelease;
}

