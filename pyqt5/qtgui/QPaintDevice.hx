package pyqt5.qtgui;

import pyqt5.qtgui.QPaintEngine;

@:pythonImport("PyQt5.QtGui", "QPaintDevice")
@:native("QPaintDevice")
extern class QPaintDevice {
	static function devicePixelRatioFScale():Float;

	@:overload(function():QPaintDevice {})
	function new(?v:QPaintDevice);

	function paintEngine():QPaintEngine;
	function width():Int;
	function height():Int;
	function widthMM():Int;
	function heightMM():Int;
	function logicalDpiX():Int;
	function logicalDpiY():Int;
	function physicalDpiX():Int;
	function physicalDpiY():Int;
	function depth():Int;
	function paintingActive():Bool;
	function colorCount():Int;
	function devicePixelRatio():Int;
	function metric(metric:QPaintDevicePaintDeviceMetric):Int;
	function devicePixelRatioF():Float;
}

@:pythonImport("PyQt5.QtGui", "PaintDeviceMetric")
@:native("QPaintDevice.PaintDeviceMetric")
extern enum abstract QPaintDevicePaintDeviceMetric(Int) from Int to Int {
	var PdmWidth;
	var PdmHeight;
	var PdmWidthMM;
	var PdmHeightMM;
	var PdmNumColors;
	var PdmDepth;
	var PdmDpiX;
	var PdmDpiY;
	var PdmPhysicalDpiX;
	var PdmPhysicalDpiY;
	var PdmDevicePixelRatio;
	var PdmDevicePixelRatioScaled;
}

