package pyqt5.qtcore;

import pyqt5.qtcore.QLocale;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QString;

@:pythonImport("PyQt5.QtCore", "QCollatorSortKey")
@:native("QCollatorSortKey")
extern class QCollatorSortKey {
	@:overload(function(other:QCollatorSortKey):QCollatorSortKey {})
	function new();

	function swap(other:QCollatorSortKey):Void;
	function compare(key:QCollatorSortKey):Int;
}

@:pythonImport("PyQt5.QtCore", "QCollator")
@:native("QCollator")
extern class QCollator {
	@:overload(function(?locale:QLocale):QCollator {})
	function new(?v:QCollator);

	function swap(other:QCollator):Void;
	function setLocale(locale:QLocale):Void;
	function locale():QLocale;
	function caseSensitivity():QtCaseSensitivity;
	function setCaseSensitivity(cs:QtCaseSensitivity):Void;
	function setNumericMode(on:Bool):Void;
	function numericMode():Bool;
	function setIgnorePunctuation(on:Bool):Void;
	function ignorePunctuation():Bool;
	function compare(s1:QString, s2:QString):Int;
	function sortKey(string:QString):QCollatorSortKey;
}

