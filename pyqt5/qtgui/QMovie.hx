package pyqt5.qtgui;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QColor;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QImage;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QImageReader;

@:pythonImport("PyQt5.QtGui", "QMovie")
@:native("QMovie")
extern class QMovie extends QObject {
	static function supportedFormats():QList<QByteArray>;

	var started:QSignal0;
	var resized:QSignal1<QSize>;
	var updated:QSignal1<QRect>;
	var stateChanged:QSignal1<QMovieMovieState>;
	var error:QSignal1<QImageReaderImageReaderError>;
	var finished:QSignal0;
	var frameChanged:QSignal1<Int>;

	@:overload(function(?parent:QObject):QMovie {})
	@:overload(function(device:QIODevice, ?format:QByteArray):QMovie {})
	function new(fileName:QString, ?format:QByteArray);

	function setDevice(device:QIODevice):Void;
	function device():QIODevice;
	function setFileName(fileName:QString):Void;
	function fileName():QString;
	function setFormat(format:QByteArray):Void;
	function format():QByteArray;
	function setBackgroundColor(color:QColor):Void;
	function backgroundColor():QColor;
	function state():QMovieMovieState;
	function frameRect():QRect;
	function currentImage():QImage;
	function currentPixmap():QPixmap;
	function isValid():Bool;
	function jumpToFrame(frameNumber:Int):Bool;
	function loopCount():Int;
	function frameCount():Int;
	function nextFrameDelay():Int;
	function currentFrameNumber():Int;
	function setSpeed(percentSpeed:Int):Void;
	function speed():Int;
	function scaledSize():QSize;
	function setScaledSize(size:QSize):Void;
	function cacheMode():QMovieCacheMode;
	function setCacheMode(mode:QMovieCacheMode):Void;
	function start():Void;
	function jumpToNextFrame():Bool;
	function setPaused(paused:Bool):Void;
	function stop():Void;
	function lastError():QImageReaderImageReaderError;
	function lastErrorString():QString;
}

@:pythonImport("PyQt5.QtGui", "MovieState")
@:native("QMovie.MovieState")
extern enum abstract QMovieMovieState(Int) from Int to Int {
	var NotRunning;
	var Paused;
	var Running;
}

@:pythonImport("PyQt5.QtGui", "CacheMode")
@:native("QMovie.CacheMode")
extern enum abstract QMovieCacheMode(Int) from Int to Int {
	var CacheNone;
	var CacheAll;
}

