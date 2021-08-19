package pyqt5.qtcore;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.QMimeType;
import pyqt5.qtcore.QFileInfo;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QUrl;

@:pythonImport("PyQt5.QtCore", "QMimeDatabase")
@:native("QMimeDatabase")
extern class QMimeDatabase {
	@:overload(function():QMimeDatabase {})
	function new(?v:QMimeDatabase);

	function mimeTypeForName(nameOrAlias:QString):QMimeType;
	@:overload(function(fileInfo:QFileInfo, ?mode:QMimeDatabaseMatchMode):QMimeType {})
	function mimeTypeForFile(fileName:QString, ?mode:QMimeDatabaseMatchMode):QMimeType;
	function mimeTypesForFileName(fileName:QString):QList<QMimeType>;
	@:overload(function(device:QIODevice):QMimeType {})
	function mimeTypeForData(data:QByteArray):QMimeType;
	function mimeTypeForUrl(url:QUrl):QMimeType;
	@:overload(function(fileName:QString, data:QByteArray):QMimeType {})
	function mimeTypeForFileNameAndData(fileName:QString, device:QIODevice):QMimeType;
	function suffixForFileName(fileName:QString):QString;
	function allMimeTypes():QList<QMimeType>;
}

@:pythonImport("PyQt5.QtCore", "MatchMode")
@:native("QMimeDatabase.MatchMode")
extern enum abstract QMimeDatabaseMatchMode(Int) from Int to Int {
	var MatchDefault;
	var MatchExtension;
	var MatchContent;
}

