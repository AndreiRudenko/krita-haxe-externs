package pyqt5.qtgui;

import pyqt5.qtgui.QPaintDevice;
import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QPaintEngine;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QList;

@:pythonImport("PyQt5.QtGui", "QPicture")
@:native("QPicture")
extern class QPicture extends QPaintDevice {
	@:overload(function(?formatVersion:Int):QPicture {})
	function new(?v:QPicture);

	function isNull():Bool;
	function devType():Int;
	function size():UInt;
	function data():Int;
	function setData(data:Int, size:UInt):Void;
	function play(p:QPainter):Bool;
	@:overload(function(fileName:QString, ?format:Int):Bool {})
	function load(dev:QIODevice, ?format:Int):Bool;
	@:overload(function(fileName:QString, ?format:Int):Bool {})
	function save(dev:QIODevice, ?format:Int):Bool;
	function boundingRect():QRect;
	function setBoundingRect(r:QRect):Void;
	function detach():Void;
	function isDetached():Bool;
	function paintEngine():QPaintEngine;
	function metric(m:QPaintDevicePaintDeviceMetric):Int;
	function swap(other:QPicture):Void;
}

@:pythonImport("PyQt5.QtGui", "QPictureIO")
@:native("QPictureIO")
extern class QPictureIO {
	@:overload(function(?v:QIODevice):QByteArray {})
	static function pictureFormat(fileName:QString):QByteArray;
	static function inputFormats():QList<QByteArray>;
	static function outputFormats():QList<QByteArray>;
	static function defineIOHandler(format:Int, header:Int, flags:Int, ?read_picture:QPictureIO->Void, ?write_picture:QPictureIO->Void):Void;

	@:overload(function():QPictureIO {})
	@:overload(function(ioDevice:QIODevice, format:Int):QPictureIO {})
	@:overload(function(fileName:QString, format:Int):QPictureIO {})
	function new(?v:QPictureIO);

	function picture():QPicture;
	function status():Int;
	function format():Int;
	function ioDevice():QIODevice;
	function fileName():QString;
	function quality():Int;
	function description():QString;
	function parameters():Int;
	function gamma():Float;
	function setPicture(?v:QPicture):Void;
	function setStatus(?v:Int):Void;
	function setFormat(?v:Int):Void;
	function setIODevice(?v:QIODevice):Void;
	function setFileName(?v:QString):Void;
	function setQuality(?v:Int):Void;
	function setDescription(?v:QString):Void;
	function setParameters(?v:Int):Void;
	function setGamma(?v:Float):Void;
	function read():Bool;
	function write():Bool;
}

