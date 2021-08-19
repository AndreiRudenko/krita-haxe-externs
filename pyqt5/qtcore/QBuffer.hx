package pyqt5.qtcore;

import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QMetaMethod;

@:pythonImport("PyQt5.QtCore", "QBuffer")
@:native("QBuffer")
extern class QBuffer extends QIODevice {
	@:overload(function(?parent:QObject):QBuffer {})
	function new(byteArray:QByteArray, ?parent:QObject);

	function buffer():QByteArray;
	function data():QByteArray;
	function setBuffer(a:QByteArray):Void;
	@:overload(function(adata:Int, alen:Int):Void {})
	function setData(data:QByteArray):Void;
	function open(openMode:QIODeviceOpenMode):Bool;
	function close():Void;
	function size():Int;
	function pos():Int;
	function seek(off:Int):Bool;
	function atEnd():Bool;
	function canReadLine():Bool;
	function readData(maxlen:Int, ?v:Int):Dynamic;
	function writeData(data:Int, len:Int):Int;
	function connectNotify(?v:QMetaMethod):Void;
	function disconnectNotify(?v:QMetaMethod):Void;
}

