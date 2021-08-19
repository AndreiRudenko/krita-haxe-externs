package pyqt5.qtcore;

import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QTextCodec;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QChar;
import pyqt5.qtcore.QLocale;

typedef QTextStreamNumberFlags = QFlags<QTextStreamNumberFlag>;

@:pythonImport("PyQt5.QtCore", "QTextStream")
@:native("QTextStream")
extern class QTextStream {
	@:overload(function():QTextStream {})
	@:overload(function(device:QIODevice):QTextStream {})
	@:overload(function(array:QByteArray, ?mode:QIODeviceOpenMode):QTextStream {})
	function new(?v:QTextStream);

	@:overload(function(codecName:Int):Void {})
	function setCodec(codec:QTextCodec):Void;
	function codec():QTextCodec;
	function setAutoDetectUnicode(enabled:Bool):Void;
	function autoDetectUnicode():Bool;
	function setGenerateByteOrderMark(generate:Bool):Void;
	function generateByteOrderMark():Bool;
	function setDevice(device:QIODevice):Void;
	function device():QIODevice;
	function atEnd():Bool;
	function reset():Void;
	function flush():Void;
	function seek(pos:Int):Bool;
	function skipWhiteSpace():Void;
	function read(maxlen:Int):QString;
	function readLine(?maxLength:Int):QString;
	function readAll():QString;
	function setFieldAlignment(alignment:QTextStreamFieldAlignment):Void;
	function fieldAlignment():QTextStreamFieldAlignment;
	function setPadChar(ch:QChar):Void;
	function padChar():QChar;
	function setFieldWidth(width:Int):Void;
	function fieldWidth():Int;
	function setNumberFlags(flags:QTextStreamNumberFlags):Void;
	function numberFlags():QTextStreamNumberFlags;
	function setIntegerBase(base:Int):Void;
	function integerBase():Int;
	function setRealNumberNotation(notation:QTextStreamRealNumberNotation):Void;
	function realNumberNotation():QTextStreamRealNumberNotation;
	function setRealNumberPrecision(precision:Int):Void;
	function realNumberPrecision():Int;
	function status():QTextStreamStatus;
	function setStatus(status:QTextStreamStatus):Void;
	function resetStatus():Void;
	function pos():Int;
	function setLocale(locale:QLocale):Void;
	function locale():QLocale;
}

@:pythonImport("PyQt5.QtCore", "QTextStream")
@:native("QTextStream")
extern enum abstract QTextStreamRealNumberNotation(Int) from Int to Int {
	var SmartNotation;
	var FixedNotation;
	var ScientificNotation;
}

@:pythonImport("PyQt5.QtCore", "QTextStream")
@:native("QTextStream")
extern enum abstract QTextStreamFieldAlignment(Int) from Int to Int {
	var AlignLeft;
	var AlignRight;
	var AlignCenter;
	var AlignAccountingStyle;
}

@:pythonImport("PyQt5.QtCore", "QTextStream")
@:native("QTextStream")
extern enum abstract QTextStreamNumberFlag(Int) from Int to Int {
	var ShowBase;
	var ForcePoint;
	var ForceSign;
	var UppercaseBase;
	var UppercaseDigits;
}

@:pythonImport("PyQt5.QtCore", "QTextStream")
@:native("QTextStream")
extern enum abstract QTextStreamStatus(Int) from Int to Int {
	var Ok;
	var ReadPastEnd;
	var ReadCorruptData;
	var WriteFailed;
}

@:pythonImport("PyQt5.QtCore", "QTextStreamManipulator")
@:native("QTextStreamManipulator")
extern class QTextStreamManipulator {
}

