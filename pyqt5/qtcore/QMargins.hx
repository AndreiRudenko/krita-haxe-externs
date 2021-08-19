package pyqt5.qtcore;


@:pythonImport("PyQt5.QtCore", "QMargins")
@:native("QMargins")
extern class QMargins {
	@:overload(function():QMargins {})
	function new(aleft:Int, atop:Int, aright:Int, abottom:Int);

	function isNull():Bool;
	function left():Int;
	function top():Int;
	function right():Int;
	function bottom():Int;
	function setLeft(aleft:Int):Void;
	function setTop(atop:Int):Void;
	function setRight(aright:Int):Void;
	function setBottom(abottom:Int):Void;
}

@:pythonImport("PyQt5.QtCore", "QMarginsF")
@:native("QMarginsF")
extern class QMarginsF {
	@:overload(function():QMarginsF {})
	@:overload(function(aleft:Float, atop:Float, aright:Float, abottom:Float):QMarginsF {})
	function new(margins:QMargins);

	function isNull():Bool;
	function left():Float;
	function top():Float;
	function right():Float;
	function bottom():Float;
	function setLeft(aleft:Float):Void;
	function setTop(atop:Float):Void;
	function setRight(aright:Float):Void;
	function setBottom(abottom:Float):Void;
	function toMargins():QMargins;
}

