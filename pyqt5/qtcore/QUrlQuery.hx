package pyqt5.qtcore;

import pyqt5.qtcore.QUrl;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QChar;
import pyqt5.qtcore.QPair;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QStringList;

@:pythonImport("PyQt5.QtCore", "QUrlQuery")
@:native("QUrlQuery")
extern class QUrlQuery {
	static function defaultQueryValueDelimiter():QChar;
	static function defaultQueryPairDelimiter():QChar;

	@:overload(function():QUrlQuery {})
	@:overload(function(url:QUrl):QUrlQuery {})
	@:overload(function(queryString:QString):QUrlQuery {})
	function new(other:QUrlQuery);

	function swap(other:QUrlQuery):Void;
	function isEmpty():Bool;
	function isDetached():Bool;
	function clear():Void;
	function query(?options:QUrlComponentFormattingOptions):QString;
	function setQuery(queryString:QString):Void;
	function toString(?options:QUrlComponentFormattingOptions):QString;
	function setQueryDelimiters(valueDelimiter:QChar, pairDelimiter:QChar):Void;
	function queryValueDelimiter():QChar;
	function queryPairDelimiter():QChar;
	function setQueryItems(query:QList<QPair<QString, QString>>):Void;
	function queryItems(?options:QUrlComponentFormattingOptions):QList<QPair<QString, QString>>;
	function hasQueryItem(key:QString):Bool;
	function addQueryItem(key:QString, value:QString):Void;
	function removeQueryItem(key:QString):Void;
	function queryItemValue(key:QString, ?options:QUrlComponentFormattingOptions):QString;
	function allQueryItemValues(key:QString, ?options:QUrlComponentFormattingOptions):QStringList;
	function removeAllQueryItems(key:QString):Void;
}

