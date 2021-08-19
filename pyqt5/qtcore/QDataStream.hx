package pyqt5.qtcore;

import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QVariantMap;

@:pythonImport("PyQt5.QtCore", "QDataStream")
@:native("QDataStream")
extern class QDataStream {
	@:overload(function():QDataStream {})
	@:overload(function(?v:QIODevice):QDataStream {})
	@:overload(function(?v:QByteArray, flags:QIODeviceOpenMode):QDataStream {})
	@:overload(function(?v:QByteArray):QDataStream {})
	function new(?v:QDataStream);

	function device():QIODevice;
	function setDevice(?v:QIODevice):Void;
	function atEnd():Bool;
	function status():QDataStreamStatus;
	function setStatus(status:QDataStreamStatus):Void;
	function resetStatus():Void;
	function byteOrder():QDataStreamByteOrder;
	function setByteOrder(?v:QDataStreamByteOrder):Void;
	function version():Int;
	function setVersion(v:Int):Void;
	function skipRawData(len:Int):Int;
	function readInt():Int;
	function readInt8():Int;
	function readUInt8():UInt;
	function readInt16():Int;
	function readUInt16():UInt;
	function readInt32():Int;
	function readUInt32():UInt;
	function readInt64():Int;
	function readUInt64():UInt;
	function readBool():Bool;
	function readFloat():Float;
	function readDouble():Float;
	function readString():Dynamic;
	function writeInt(i:Int):Void;
	function writeInt8(i:Int):Void;
	function writeUInt8(i:UInt):Void;
	function writeInt16(i:Int):Void;
	function writeUInt16(i:UInt):Void;
	function writeInt32(i:Int):Void;
	function writeUInt32(i:UInt):Void;
	function writeInt64(i:Int):Void;
	function writeUInt64(i:UInt):Void;
	function writeBool(i:Bool):Void;
	function writeFloat(f:Float):Void;
	function writeDouble(f:Float):Void;
	function writeString(str:Int):Void;
	function readQString():QString;
	function writeQString(qstr:QString):Void;
	function readQStringList():QStringList;
	function writeQStringList(qstrlst:QStringList):Void;
	function readQVariant():QVariant;
	function writeQVariant(qvar:QVariant):Void;
	function readQVariantList():QVariantList;
	function writeQVariantList(qvarlst:QVariantList):Void;
	function readQVariantMap():QVariantMap;
	function writeQVariantMap(qvarmap:QVariantMap):Void;
	function readQVariantHash():QVariantHash;
	function writeQVariantHash(qvarhash:QVariantHash):Void;
	function readBytes():Dynamic;
	function readRawData(len:Int):Dynamic;
	function writeBytes(?v:Int, len:UInt):QDataStream;
	function writeRawData(?v:Int, len:Int):Int;
	function floatingPointPrecision():QDataStreamFloatingPointPrecision;
	function setFloatingPointPrecision(precision:QDataStreamFloatingPointPrecision):Void;
	function startTransaction():Void;
	function commitTransaction():Bool;
	function rollbackTransaction():Void;
	function abortTransaction():Void;
}

@:pythonImport("PyQt5.QtCore", "Version")
@:native("QDataStream.Version")
extern enum abstract QDataStreamVersion(Int) from Int to Int {
	var Qt_1_0;
	var Qt_2_0;
	var Qt_2_1;
	var Qt_3_0;
	var Qt_3_1;
	var Qt_3_3;
	var Qt_4_0;
	var Qt_4_1;
	var Qt_4_2;
	var Qt_4_3;
	var Qt_4_4;
	var Qt_4_5;
	var Qt_4_6;
	var Qt_4_7;
	var Qt_4_8;
	var Qt_4_9;
	var Qt_5_0;
	var Qt_5_1;
	var Qt_5_2;
	var Qt_5_3;
	var Qt_5_4;
	var Qt_5_5;
	var Qt_5_6;
	var Qt_5_7;
	var Qt_5_8;
	var Qt_5_9;
	var Qt_5_10;
	var Qt_5_11;
	var Qt_5_12;
	var Qt_5_13;
	var Qt_5_14;
	var Qt_5_15;
}

@:pythonImport("PyQt5.QtCore", "ByteOrder")
@:native("QDataStream.ByteOrder")
extern enum abstract QDataStreamByteOrder(Int) from Int to Int {
	var BigEndian;
	var LittleEndian;
}

@:pythonImport("PyQt5.QtCore", "Status")
@:native("QDataStream.Status")
extern enum abstract QDataStreamStatus(Int) from Int to Int {
	var Ok;
	var ReadPastEnd;
	var ReadCorruptData;
	var WriteFailed;
}

@:pythonImport("PyQt5.QtCore", "FloatingPointPrecision")
@:native("QDataStream.FloatingPointPrecision")
extern enum abstract QDataStreamFloatingPointPrecision(Int) from Int to Int {
	var SinglePrecision;
	var DoublePrecision;
}

