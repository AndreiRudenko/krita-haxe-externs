package pyqt5.qtcore;

import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QMargins;

@:pythonImport("PyQt5.QtCore", "QSize")
@:native("QSize")
extern class QSize {
	@:overload(function():QSize {})
	function new(w:Int, h:Int);

	function transpose():Void;
	@:overload(function(w:Int, h:Int, mode:QtAspectRatioMode):Void {})
	function scale(s:QSize, mode:QtAspectRatioMode):Void;
	function isNull():Bool;
	function isEmpty():Bool;
	function isValid():Bool;
	function width():Int;
	function height():Int;
	function setWidth(w:Int):Void;
	function setHeight(h:Int):Void;
	function expandedTo(otherSize:QSize):QSize;
	function boundedTo(otherSize:QSize):QSize;
	@:overload(function(w:Int, h:Int, mode:QtAspectRatioMode):QSize {})
	function scaled(s:QSize, mode:QtAspectRatioMode):QSize;
	function transposed():QSize;
	function grownBy(m:QMargins):QSize;
	function shrunkBy(m:QMargins):QSize;
}

@:pythonImport("PyQt5.QtCore", "QSizeF")
@:native("QSizeF")
extern class QSizeF {
	@:overload(function():QSizeF {})
	@:overload(function(sz:QSize):QSizeF {})
	function new(w:Float, h:Float);

	function transpose():Void;
	@:overload(function(w:Float, h:Float, mode:QtAspectRatioMode):Void {})
	function scale(s:QSizeF, mode:QtAspectRatioMode):Void;
	function isNull():Bool;
	function isEmpty():Bool;
	function isValid():Bool;
	function width():Float;
	function height():Float;
	function setWidth(w:Float):Void;
	function setHeight(h:Float):Void;
	function expandedTo(otherSize:QSizeF):QSizeF;
	function boundedTo(otherSize:QSizeF):QSizeF;
	function toSize():QSize;
	@:overload(function(w:Float, h:Float, mode:QtAspectRatioMode):QSizeF {})
	function scaled(s:QSizeF, mode:QtAspectRatioMode):QSizeF;
	function transposed():QSizeF;
	function grownBy(m:QMarginsF):QSizeF;
	function shrunkBy(m:QMarginsF):QSizeF;
}

