package pyqt5.qtgui;

import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QBrush;
import pyqt5.qtcore.QVariant;
import pyqt5.qtgui.QColor;
import pyqt5.qtcore.QVector;

@:pythonImport("PyQt5.QtGui", "QPen")
@:native("QPen")
extern class QPen {
	@:overload(function():QPen {})
	@:overload(function(?v:QtPenStyle):QPen {})
	@:overload(function(brush:QBrush, width:Float, ?style:QtPenStyle, ?cap:QtPenCapStyle, ?join:QtPenJoinStyle):QPen {})
	@:overload(function(pen:QPen):QPen {})
	function new(variant:QVariant);

	function style():QtPenStyle;
	function setStyle(?v:QtPenStyle):Void;
	function widthF():Float;
	function setWidthF(width:Float):Void;
	function width():Int;
	function setWidth(width:Int):Void;
	function color():QColor;
	function setColor(color:QColor):Void;
	function brush():QBrush;
	function setBrush(brush:QBrush):Void;
	function isSolid():Bool;
	function capStyle():QtPenCapStyle;
	function setCapStyle(pcs:QtPenCapStyle):Void;
	function joinStyle():QtPenJoinStyle;
	function setJoinStyle(pcs:QtPenJoinStyle):Void;
	function dashPattern():QVector<Float>;
	function setDashPattern(pattern:QVector<Float>):Void;
	function miterLimit():Float;
	function setMiterLimit(limit:Float):Void;
	function dashOffset():Float;
	function setDashOffset(doffset:Float):Void;
	function isCosmetic():Bool;
	function setCosmetic(cosmetic:Bool):Void;
	function swap(other:QPen):Void;
}

