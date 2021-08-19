package pyqt5.qtgui;

import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QImage;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QStringList;
import pyqt5.qtgui.QColor;
import pyqt5.qtgui.QImageIOHandler;

@:pythonImport("PyQt5.QtGui", "QImageReader")
@:native("QImageReader")
extern class QImageReader {
	@:overload(function(device:QIODevice):QByteArray {})
	static function imageFormat(fileName:QString):QByteArray;
	static function supportedImageFormats():QList<QByteArray>;
	static function supportedMimeTypes():QList<QByteArray>;
	static function imageFormatsForMimeType(mimeType:QByteArray):QList<QByteArray>;

	@:overload(function():QImageReader {})
	@:overload(function(device:QIODevice, ?format:QByteArray):QImageReader {})
	@:overload(function(fileName:QString, ?format:QByteArray):QImageReader {})
	function new(?v:QImageReader);

	function setFormat(format:QByteArray):Void;
	function format():QByteArray;
	function setDevice(device:QIODevice):Void;
	function device():QIODevice;
	function setFileName(fileName:QString):Void;
	function fileName():QString;
	function size():QSize;
	function setClipRect(rect:QRect):Void;
	function clipRect():QRect;
	function setScaledSize(size:QSize):Void;
	function scaledSize():QSize;
	function setScaledClipRect(rect:QRect):Void;
	function scaledClipRect():QRect;
	function canRead():Bool;
	@:overload(function(image:QImage):Bool {})
	function read():QImage;
	function jumpToNextImage():Bool;
	function jumpToImage(imageNumber:Int):Bool;
	function loopCount():Int;
	function imageCount():Int;
	function nextImageDelay():Int;
	function currentImageNumber():Int;
	function currentImageRect():QRect;
	function error():QImageReaderImageReaderError;
	function errorString():QString;
	function textKeys():QStringList;
	function text(key:QString):QString;
	function setBackgroundColor(color:QColor):Void;
	function backgroundColor():QColor;
	function supportsAnimation():Bool;
	function setQuality(quality:Int):Void;
	function quality():Int;
	function supportsOption(option:QImageIOHandlerImageOption):Bool;
	function setAutoDetectImageFormat(enabled:Bool):Void;
	function autoDetectImageFormat():Bool;
	function imageFormat():QImageFormat;
	function setDecideFormatFromContent(ignored:Bool):Void;
	function decideFormatFromContent():Bool;
	function subType():QByteArray;
	function supportedSubTypes():QList<QByteArray>;
	function transformation():QImageIOHandlerTransformations;
	function setAutoTransform(enabled:Bool):Void;
	function autoTransform():Bool;
	function setGamma(gamma:Float):Void;
	function gamma():Float;
}

@:pythonImport("PyQt5.QtGui", "ImageReaderError")
@:native("QImageReader.ImageReaderError")
extern enum abstract QImageReaderImageReaderError(Int) from Int to Int {
	var UnknownError;
	var FileNotFoundError;
	var DeviceError;
	var UnsupportedFormatError;
	var InvalidDataError;
}

