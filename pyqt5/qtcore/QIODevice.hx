package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSignal;

typedef QIODeviceOpenMode = QFlags<QIODeviceOpenModeFlag>;

@:pythonImport("PyQt5.QtCore", "QIODevice")
@:native("QIODevice")
extern class QIODevice extends QObject {
	var readyRead:QSignal0;
	var bytesWritten:QSignal1<Int>;
	var aboutToClose:QSignal0;
	var readChannelFinished:QSignal0;
	var channelReadyRead:QSignal1<Int>;
	var channelBytesWritten:QSignal2<Int, Int>;

	@:overload(function():QIODevice {})
	function new(parent:QObject);

	function openMode():QIODeviceOpenMode;
	function setTextModeEnabled(enabled:Bool):Void;
	function isTextModeEnabled():Bool;
	function isOpen():Bool;
	function isReadable():Bool;
	function isWritable():Bool;
	function isSequential():Bool;
	function open(mode:QIODeviceOpenMode):Bool;
	function close():Void;
	function pos():Int;
	function size():Int;
	function seek(pos:Int):Bool;
	function atEnd():Bool;
	function reset():Bool;
	function bytesAvailable():Int;
	function bytesToWrite():Int;
	function read(maxlen:Int):Dynamic;
	function readAll():QByteArray;
	function readLine(maxlen:Int):Dynamic;
	function canReadLine():Bool;
	function peek(maxlen:Int):QByteArray;
	function write(data:QByteArray):Int;
	function waitForReadyRead(msecs:Int):Bool;
	function waitForBytesWritten(msecs:Int):Bool;
	function ungetChar(c:Int):Void;
	function putChar(c:Int):Bool;
	function getChar(c:Int):Bool;
	function errorString():QString;
	function readData(maxlen:Int, ?v:Int):Dynamic;
	function readLineData(maxlen:Int, ?v:Int):Dynamic;
	function writeData(data:Int, len:Int):Int;
	function setOpenMode(openMode:QIODeviceOpenMode):Void;
	function setErrorString(errorString:QString):Void;
	function readChannelCount():Int;
	function writeChannelCount():Int;
	function currentReadChannel():Int;
	function setCurrentReadChannel(channel:Int):Void;
	function currentWriteChannel():Int;
	function setCurrentWriteChannel(channel:Int):Void;
	function startTransaction():Void;
	function commitTransaction():Void;
	function rollbackTransaction():Void;
	function isTransactionStarted():Bool;
	function skip(maxSize:Int):Int;
}

@:pythonImport("PyQt5.QtCore", "QIODevice")
@:native("QIODevice")
extern enum abstract QIODeviceOpenModeFlag(Int) from Int to Int {
	var NotOpen;
	var ReadOnly;
	var WriteOnly;
	var ReadWrite;
	var Append;
	var Truncate;
	var Text;
	var Unbuffered;
	var NewOnly;
	var ExistingOnly;
}

