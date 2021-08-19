package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QString;

typedef QLibraryLoadHints = QFlags<QLibraryLoadHint>;

@:pythonImport("PyQt5.QtCore", "QLibrary")
@:native("QLibrary")
extern class QLibrary extends QObject {
	@:overload(function(fileName:QString, verNum:Int, symbol:Int):QFunctionPointer {})
	@:overload(function(fileName:QString, version:QString, symbol:Int):QFunctionPointer {})
	static function resolve(fileName:QString, symbol:Int):QFunctionPointer;
	static function isLibrary(fileName:QString):Bool;

	@:overload(function(?parent:QObject):QLibrary {})
	@:overload(function(fileName:QString, ?parent:QObject):QLibrary {})
	@:overload(function(fileName:QString, verNum:Int, ?parent:QObject):QLibrary {})
	function new(fileName:QString, version:QString, ?parent:QObject);

	function errorString():QString;
	function fileName():QString;
	function isLoaded():Bool;
	function load():Bool;
	function loadHints():QLibraryLoadHints;
	function resolve(symbol:Int):QFunctionPointer;
	function unload():Bool;
	function setFileName(fileName:QString):Void;
	@:overload(function(fileName:QString, version:QString):Void {})
	function setFileNameAndVersion(fileName:QString, verNum:Int):Void;
	function setLoadHints(hints:QLibraryLoadHints):Void;
}

@:pythonImport("PyQt5.QtCore", "QLibrary")
@:native("QLibrary")
extern enum abstract QLibraryLoadHint(Int) from Int to Int {
	var ResolveAllSymbolsHint;
	var ExportExternalSymbolsHint;
	var LoadArchiveMemberHint;
	var PreventUnloadHint;
	var DeepBindHint;
}

