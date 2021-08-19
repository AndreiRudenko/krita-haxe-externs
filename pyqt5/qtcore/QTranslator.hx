package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QLocale;

@:pythonImport("PyQt5.QtCore", "QTranslator")
@:native("QTranslator")
extern class QTranslator extends QObject {
	function new(?parent:QObject);

	function translate(context:Int, sourceText:Int, ?disambiguation:Int, ?n:Int):QString;
	function isEmpty():Bool;
	@:overload(function(locale:QLocale, fileName:QString, ?prefix:QString, ?directory:QString, ?suffix:QString):Bool {})
	@:overload(function(data:UInt, len:Int, ?directory:QString):Bool {})
	function load(fileName:QString, ?directory:QString, ?searchDelimiters:QString, ?suffix:QString):Bool;
	function language():QString;
	function filePath():QString;
}

