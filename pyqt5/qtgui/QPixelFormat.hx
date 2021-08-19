package pyqt5.qtgui;


@:pythonImport("PyQt5.QtGui", "QPixelFormat")
@:native("QPixelFormat")
extern class QPixelFormat {
	@:overload(function():QPixelFormat {})
	function new(mdl:QPixelFormatColorModel, firstSize:UInt, secondSize:UInt, thirdSize:UInt, fourthSize:UInt, fifthSize:UInt, alfa:UInt, usage:QPixelFormatAlphaUsage, position:QPixelFormatAlphaPosition, premult:QPixelFormatAlphaPremultiplied, typeInterp:QPixelFormatTypeInterpretation, ?byteOrder:QPixelFormatByteOrder, subEnum:UInt);

	function colorModel():QPixelFormatColorModel;
	function channelCount():UInt;
	function redSize():UInt;
	function greenSize():UInt;
	function blueSize():UInt;
	function cyanSize():UInt;
	function magentaSize():UInt;
	function yellowSize():UInt;
	function blackSize():UInt;
	function hueSize():UInt;
	function saturationSize():UInt;
	function lightnessSize():UInt;
	function brightnessSize():UInt;
	function alphaSize():UInt;
	function bitsPerPixel():UInt;
	function alphaUsage():QPixelFormatAlphaUsage;
	function alphaPosition():QPixelFormatAlphaPosition;
	function premultiplied():QPixelFormatAlphaPremultiplied;
	function typeInterpretation():QPixelFormatTypeInterpretation;
	function byteOrder():QPixelFormatByteOrder;
	function yuvLayout():QPixelFormatYUVLayout;
	function subEnum():UInt;
}

@:pythonImport("PyQt5.QtGui", "ColorModel")
@:native("QPixelFormat.ColorModel")
extern enum abstract QPixelFormatColorModel(Int) from Int to Int {
	var RGB;
	var BGR;
	var Indexed;
	var Grayscale;
	var CMYK;
	var HSL;
	var HSV;
	var YUV;
	var Alpha;
}

@:pythonImport("PyQt5.QtGui", "AlphaUsage")
@:native("QPixelFormat.AlphaUsage")
extern enum abstract QPixelFormatAlphaUsage(Int) from Int to Int {
	var UsesAlpha;
	var IgnoresAlpha;
}

@:pythonImport("PyQt5.QtGui", "AlphaPosition")
@:native("QPixelFormat.AlphaPosition")
extern enum abstract QPixelFormatAlphaPosition(Int) from Int to Int {
	var AtBeginning;
	var AtEnd;
}

@:pythonImport("PyQt5.QtGui", "AlphaPremultiplied")
@:native("QPixelFormat.AlphaPremultiplied")
extern enum abstract QPixelFormatAlphaPremultiplied(Int) from Int to Int {
	var NotPremultiplied;
	var Premultiplied;
}

@:pythonImport("PyQt5.QtGui", "TypeInterpretation")
@:native("QPixelFormat.TypeInterpretation")
extern enum abstract QPixelFormatTypeInterpretation(Int) from Int to Int {
	var UnsignedInteger;
	var UnsignedShort;
	var UnsignedByte;
	var FloatingPoint;
}

@:pythonImport("PyQt5.QtGui", "YUVLayout")
@:native("QPixelFormat.YUVLayout")
extern enum abstract QPixelFormatYUVLayout(Int) from Int to Int {
	var YUV444;
	var YUV422;
	var YUV411;
	var YUV420P;
	var YUV420SP;
	var YV12;
	var UYVY;
	var YUYV;
	var NV12;
	var NV21;
	var IMC1;
	var IMC2;
	var IMC3;
	var IMC4;
	var Y8;
	var Y16;
}

@:pythonImport("PyQt5.QtGui", "ByteOrder")
@:native("QPixelFormat.ByteOrder")
extern enum abstract QPixelFormatByteOrder(Int) from Int to Int {
	var LittleEndian;
	var BigEndian;
	var CurrentSystemEndian;
}

