package pyqt5.qtcore;

import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QChar;

typedef QTextCodecConversionFlags = QFlags<QTextCodecConversionFlag>;

@:pythonImport("PyQt5.QtCore", "QTextCodec")
@:native("QTextCodec")
extern class QTextCodec {
	@:overload(function(name:Int):QTextCodec {})
	static function codecForName(name:QByteArray):QTextCodec;
	static function codecForMib(mib:Int):QTextCodec;
	@:overload(function(ba:QByteArray, defaultCodec:QTextCodec):QTextCodec {})
	static function codecForHtml(ba:QByteArray):QTextCodec;
	@:overload(function(ba:QByteArray, defaultCodec:QTextCodec):QTextCodec {})
	static function codecForUtfText(ba:QByteArray):QTextCodec;
	static function availableCodecs():QList<QByteArray>;
	static function availableMibs():QList<Int>;
	static function codecForLocale():QTextCodec;
	static function setCodecForLocale(c:QTextCodec):Void;

	@:overload(function():QTextCodec {})
	function new(?v:QTextCodec);

	function makeDecoder(?flags:QTextCodecConversionFlags):QTextDecoder;
	function makeEncoder(?flags:QTextCodecConversionFlags):QTextEncoder;
	function canEncode(?v:QString):Bool;
	@:overload(function(chars:Int):QString {})
	function toUnicode(?v:QByteArray):QString;
	function fromUnicode(uc:QString):QByteArray;
	function convertToUnicode(in_:Int, length:Int, state:ConverterState):QString;
	function convertFromUnicode(in_:QChar, length:Int, state:ConverterState):QByteArray;
}

@:pythonImport("PyQt5.QtCore", "ConversionFlag")
@:native("QTextCodec.ConversionFlag")
extern enum abstract QTextCodecConversionFlag(Int) from Int to Int {
	var DefaultConversion;
	var ConvertInvalidToNull;
	var IgnoreHeader;
}

@:pythonImport("PyQt5.QtCore", "ConverterState")
@:native("ConverterState")
extern class ConverterState {
	@:overload(function(?flags:QTextCodecConversionFlags):ConverterState {})
	function new(?v:ConverterState);
}

@:pythonImport("PyQt5.QtCore", "QTextEncoder")
@:native("QTextEncoder")
extern class QTextEncoder {
	@:overload(function(codec:QTextCodec):QTextEncoder {})
	@:overload(function(codec:QTextCodec, flags:QTextCodecConversionFlags):QTextEncoder {})
	function new(?v:QTextEncoder);

	function fromUnicode(str:QString):QByteArray;
}

@:pythonImport("PyQt5.QtCore", "QTextDecoder")
@:native("QTextDecoder")
extern class QTextDecoder {
	@:overload(function(codec:QTextCodec):QTextDecoder {})
	@:overload(function(codec:QTextCodec, flags:QTextCodecConversionFlags):QTextDecoder {})
	function new(?v:QTextDecoder);

	@:overload(function(ba:QByteArray):QString {})
	function toUnicode(chars:Int, len:Int):QString;
}

