package pyqt5.qtcore;


@:pythonImport("PyQt5.QtCore", "QPoint")
@:native("QPoint")
extern class QPoint {
	static function dotProduct(p1:QPoint, p2:QPoint):Int;

	@:overload(function():QPoint {})
	function new(xpos:Int, ypos:Int);

	function manhattanLength():Int;
	function isNull():Bool;
	function x():Int;
	function y():Int;
	function setX(xpos:Int):Void;
	function setY(ypos:Int):Void;
	function transposed():QPoint;
}

@:pythonImport("PyQt5.QtCore", "QPointF")
@:native("QPointF")
extern class QPointF {
	static function dotProduct(p1:QPointF, p2:QPointF):Float;

	@:overload(function():QPointF {})
	@:overload(function(xpos:Float, ypos:Float):QPointF {})
	function new(p:QPoint);

	function isNull():Bool;
	function x():Float;
	function y():Float;
	function setX(xpos:Float):Void;
	function setY(ypos:Float):Void;
	function toPoint():QPoint;
	function manhattanLength():Float;
	function transposed():QPointF;
}

