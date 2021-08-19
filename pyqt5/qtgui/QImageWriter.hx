package pyqt5.qtgui;

import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QImage;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QImageIOHandler;

@:pythonImport("PyQt5.QtGui", "QImageWriter")
@:native("QImageWriter")
extern class QImageWriter {
	static function supportedImageFormats():QList<QByteArray>;
	static function supportedMimeTypes():QList<QByteArray>;
	static function imageFormatsForMimeType(mimeType:QByteArray):QList<QByteArray>;

	@:overload(function():QImageWriter {})
	@:overload(function(device:QIODevice, format:QByteArray):QImageWriter {})
	@:overload(function(fileName:QString, ?format:QByteArray):QImageWriter {})
	function new(?v:QImageWriter);

	function setFormat(format:QByteArray):Void;
	function format():QByteArray;
	function setDevice(device:QIODevice):Void;
	function device():QIODevice;
	function setFileName(fileName:QString):Void;
	function fileName():QString;
	function setQuality(quality:Int):Void;
	function quality():Int;
	function setGamma(gamma:Float):Void;
	function gamma():Float;
	function canWrite():Bool;
	function write(image:QImage):Bool;
	function error():QImageWriterImageWriterError;
	function errorString():QString;
	function setText(key:QString, text:QString):Void;
	function supportsOption(option:QImageIOHandlerImageOption):Bool;
	function setCompression(compression:Int):Void;
	function compression():Int;
	function setSubType(type:QByteArray):Void;
	function subType():QByteArray;
	function supportedSubTypes():QList<QByteArray>;
	function setOptimizedWrite(optimize:Bool):Void;
	function optimizedWrite():Bool;
	function setProgressiveScanWrite(progressive:Bool):Void;
	function progressiveScanWrite():Bool;
	function transformation():QImageIOHandlerTransformations;
	function setTransformation(orientation:QImageIOHandlerTransformations):Void;
}

@:pythonImport("PyQt5.QtGui", "QImageWriter")
@:native("QImageWriter")
extern enum abstract QImageWriterImageWriterError(Int) from Int to Int {
	var UnknownError;
	var DeviceError;
	var UnsupportedFormatError;
	var InvalidImageError;
}

