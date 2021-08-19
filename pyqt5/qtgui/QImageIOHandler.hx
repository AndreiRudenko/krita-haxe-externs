package pyqt5.qtgui;

import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtgui.QImage;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QGlobal;

typedef QImageIOHandlerTransformations = QFlags<QImageIOHandlerTransformation>;

@:pythonImport("PyQt5.QtGui", "QImageIOHandler")
@:native("QImageIOHandler")
extern class QImageIOHandler {
	@:overload(function():QImageIOHandler {})
	function new(?v:QImageIOHandler);

	function setDevice(device:QIODevice):Void;
	function device():QIODevice;
	function setFormat(format:QByteArray):Void;
	function format():QByteArray;
	function canRead():Bool;
	function read(image:QImage):Bool;
	function write(image:QImage):Bool;
	function option(option:QImageIOHandlerImageOption):QVariant;
	function setOption(option:QImageIOHandlerImageOption, value:QVariant):Void;
	function supportsOption(option:QImageIOHandlerImageOption):Bool;
	function jumpToNextImage():Bool;
	function jumpToImage(imageNumber:Int):Bool;
	function loopCount():Int;
	function imageCount():Int;
	function nextImageDelay():Int;
	function currentImageNumber():Int;
	function currentImageRect():QRect;
}

@:pythonImport("PyQt5.QtGui", "QImageIOHandler")
@:native("QImageIOHandler")
extern enum abstract QImageIOHandlerImageOption(Int) from Int to Int {
	var Size;
	var ClipRect;
	var Description;
	var ScaledClipRect;
	var ScaledSize;
	var CompressionRatio;
	var Gamma;
	var Quality;
	var Name;
	var SubType;
	var IncrementalReading;
	var Endianness;
	var Animation;
	var BackgroundColor;
	var SupportedSubTypes;
	var OptimizedWrite;
	var ProgressiveScanWrite;
	var ImageTransformation;
	var TransformedByDefault;
}

@:pythonImport("PyQt5.QtGui", "QImageIOHandler")
@:native("QImageIOHandler")
extern enum abstract QImageIOHandlerTransformation(Int) from Int to Int {
	var TransformationNone;
	var TransformationMirror;
	var TransformationFlip;
	var TransformationRotate180;
	var TransformationRotate90;
	var TransformationMirrorAndRotate90;
	var TransformationFlipAndRotate90;
	var TransformationRotate270;
}

