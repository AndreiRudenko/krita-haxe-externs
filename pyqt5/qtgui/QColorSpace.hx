package pyqt5.qtgui;

import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtgui.QColorTransform;

@:pythonImport("PyQt5.QtGui", "QColorSpace")
@:native("QColorSpace")
extern class QColorSpace {
	static function fromIccProfile(iccProfile:QByteArray):QColorSpace;

	@:overload(function():QColorSpace {})
	@:overload(function(namedColorSpace:QColorSpaceNamedColorSpace):QColorSpace {})
	@:overload(function(primaries:QColorSpacePrimaries, fun:QColorSpaceTransferFunction, ?gamma:Float):QColorSpace {})
	@:overload(function(primaries:QColorSpacePrimaries, gamma:Float):QColorSpace {})
	@:overload(function(whitePoint:QPointF, redPoint:QPointF, greenPoint:QPointF, bluePoint:QPointF, fun:QColorSpaceTransferFunction, ?gamma:Float):QColorSpace {})
	function new(colorSpace:QColorSpace);

	function swap(colorSpace:QColorSpace):Void;
	function primaries():QColorSpacePrimaries;
	function transferFunction():QColorSpaceTransferFunction;
	function gamma():Float;
	function setTransferFunction(transferFunction:QColorSpaceTransferFunction, ?gamma:Float):Void;
	function withTransferFunction(transferFunction:QColorSpaceTransferFunction, ?gamma:Float):QColorSpace;
	@:overload(function(whitePoint:QPointF, redPoint:QPointF, greenPoint:QPointF, bluePoint:QPointF):Void {})
	function setPrimaries(primariesId:QColorSpacePrimaries):Void;
	function isValid():Bool;
	function iccProfile():QByteArray;
	function transformationToColorSpace(colorspace:QColorSpace):QColorTransform;
}

@:pythonImport("PyQt5.QtGui", "QColorSpace")
@:native("QColorSpace")
extern enum abstract QColorSpaceNamedColorSpace(Int) from Int to Int {
	var SRgb;
	var SRgbLinear;
	var AdobeRgb;
	var DisplayP3;
	var ProPhotoRgb;
}

@:pythonImport("PyQt5.QtGui", "QColorSpace")
@:native("QColorSpace")
extern enum abstract QColorSpacePrimaries(Int) from Int to Int {
	var Custom;
	var SRgb;
	var AdobeRgb;
	var DciP3D65;
	var ProPhotoRgb;
}

@:pythonImport("PyQt5.QtGui", "QColorSpace")
@:native("QColorSpace")
extern enum abstract QColorSpaceTransferFunction(Int) from Int to Int {
	var Custom;
	var Linear;
	var Gamma;
	var SRgb;
	var ProPhotoRgb;
}

