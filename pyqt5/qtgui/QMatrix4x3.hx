package pyqt5.qtgui;


@:pythonImport("PyQt5.QtGui", "QMatrix4x3")
@:native("QMatrix4x3")
extern class QMatrix4x3 {
	@:overload(function():QMatrix4x3 {})
	@:overload(function(other:QMatrix4x3):QMatrix4x3 {})
	function new(values:Array<Float>);

	function data():Array<Float>;
	function copyDataTo():Array<Float>;
	function isIdentity():Bool;
	function setToIdentity():Void;
	function fill(value:Float):Void;
	function transposed():QMatrix3x4;
}

@:pythonImport("PyQt5.QtGui", "QMatrix4x2")
@:native("QMatrix4x2")
extern class QMatrix4x2 {
	@:overload(function():QMatrix4x2 {})
	@:overload(function(other:QMatrix4x2):QMatrix4x2 {})
	function new(values:Array<Float>);

	function data():Array<Float>;
	function copyDataTo():Array<Float>;
	function isIdentity():Bool;
	function setToIdentity():Void;
	function fill(value:Float):Void;
	function transposed():QMatrix2x4;
}

@:pythonImport("PyQt5.QtGui", "QMatrix3x4")
@:native("QMatrix3x4")
extern class QMatrix3x4 {
	@:overload(function():QMatrix3x4 {})
	@:overload(function(other:QMatrix3x4):QMatrix3x4 {})
	function new(values:Array<Float>);

	function data():Array<Float>;
	function copyDataTo():Array<Float>;
	function isIdentity():Bool;
	function setToIdentity():Void;
	function fill(value:Float):Void;
	function transposed():QMatrix4x3;
}

@:pythonImport("PyQt5.QtGui", "QMatrix3x3")
@:native("QMatrix3x3")
extern class QMatrix3x3 {
	@:overload(function():QMatrix3x3 {})
	@:overload(function(other:QMatrix3x3):QMatrix3x3 {})
	function new(values:Array<Float>);

	function data():Array<Float>;
	function copyDataTo():Array<Float>;
	function isIdentity():Bool;
	function setToIdentity():Void;
	function fill(value:Float):Void;
	function transposed():QMatrix3x3;
}

@:pythonImport("PyQt5.QtGui", "QMatrix3x2")
@:native("QMatrix3x2")
extern class QMatrix3x2 {
	@:overload(function():QMatrix3x2 {})
	@:overload(function(other:QMatrix3x2):QMatrix3x2 {})
	function new(values:Array<Float>);

	function data():Array<Float>;
	function copyDataTo():Array<Float>;
	function isIdentity():Bool;
	function setToIdentity():Void;
	function fill(value:Float):Void;
	function transposed():QMatrix2x3;
}

@:pythonImport("PyQt5.QtGui", "QMatrix2x4")
@:native("QMatrix2x4")
extern class QMatrix2x4 {
	@:overload(function():QMatrix2x4 {})
	@:overload(function(other:QMatrix2x4):QMatrix2x4 {})
	function new(values:Array<Float>);

	function data():Array<Float>;
	function copyDataTo():Array<Float>;
	function isIdentity():Bool;
	function setToIdentity():Void;
	function fill(value:Float):Void;
	function transposed():QMatrix4x2;
}

@:pythonImport("PyQt5.QtGui", "QMatrix2x3")
@:native("QMatrix2x3")
extern class QMatrix2x3 {
	@:overload(function():QMatrix2x3 {})
	@:overload(function(other:QMatrix2x3):QMatrix2x3 {})
	function new(values:Array<Float>);

	function data():Array<Float>;
	function copyDataTo():Array<Float>;
	function isIdentity():Bool;
	function setToIdentity():Void;
	function fill(value:Float):Void;
	function transposed():QMatrix3x2;
}

@:pythonImport("PyQt5.QtGui", "QMatrix2x2")
@:native("QMatrix2x2")
extern class QMatrix2x2 {
	@:overload(function():QMatrix2x2 {})
	@:overload(function(other:QMatrix2x2):QMatrix2x2 {})
	function new(values:Array<Float>);

	function data():Array<Float>;
	function copyDataTo():Array<Float>;
	function isIdentity():Bool;
	function setToIdentity():Void;
	function fill(value:Float):Void;
	function transposed():QMatrix2x2;
}

