package pyqt5.qtgui;

import pyqt5.qtgui.QPageSize;
import pyqt5.qtcore.QMargins;
import pyqt5.qtcore.QRect;

@:pythonImport("PyQt5.QtGui", "QPageLayout")
@:native("QPageLayout")
extern class QPageLayout {
	@:overload(function():QPageLayout {})
	@:overload(function(pageSize:QPageSize, orientation:QPageLayoutOrientation, margins:QMarginsF, ?units:QPageLayoutUnit, ?minMargins:QMarginsF):QPageLayout {})
	function new(other:QPageLayout);

	function swap(other:QPageLayout):Void;
	function isEquivalentTo(other:QPageLayout):Bool;
	function isValid():Bool;
	function setMode(mode:QPageLayoutMode):Void;
	function mode():QPageLayoutMode;
	function setPageSize(pageSize:QPageSize, ?minMargins:QMarginsF):Void;
	function pageSize():QPageSize;
	function setOrientation(orientation:QPageLayoutOrientation):Void;
	function orientation():QPageLayoutOrientation;
	function setUnits(units:QPageLayoutUnit):Void;
	function units():QPageLayoutUnit;
	function setMargins(margins:QMarginsF):Bool;
	function setLeftMargin(leftMargin:Float):Bool;
	function setRightMargin(rightMargin:Float):Bool;
	function setTopMargin(topMargin:Float):Bool;
	function setBottomMargin(bottomMargin:Float):Bool;
	@:overload(function(units:QPageLayoutUnit):QMarginsF {})
	function margins():QMarginsF;
	function marginsPoints():QMargins;
	function marginsPixels(resolution:Int):QMargins;
	function setMinimumMargins(minMargins:QMarginsF):Void;
	function minimumMargins():QMarginsF;
	function maximumMargins():QMarginsF;
	@:overload(function(units:QPageLayoutUnit):QRectF {})
	function fullRect():QRectF;
	function fullRectPoints():QRect;
	function fullRectPixels(resolution:Int):QRect;
	@:overload(function(units:QPageLayoutUnit):QRectF {})
	function paintRect():QRectF;
	function paintRectPoints():QRect;
	function paintRectPixels(resolution:Int):QRect;
}

@:pythonImport("PyQt5.QtGui", "QPageLayout")
@:native("QPageLayout")
extern enum abstract QPageLayoutUnit(Int) from Int to Int {
	var Millimeter;
	var Point;
	var Inch;
	var Pica;
	var Didot;
	var Cicero;
}

@:pythonImport("PyQt5.QtGui", "QPageLayout")
@:native("QPageLayout")
extern enum abstract QPageLayoutOrientation(Int) from Int to Int {
	var Portrait;
	var Landscape;
}

@:pythonImport("PyQt5.QtGui", "QPageLayout")
@:native("QPageLayout")
extern enum abstract QPageLayoutMode(Int) from Int to Int {
	var StandardMode;
	var FullPageMode;
}

