package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QUrl;
import pyqt5.qtcore.QStringList;

@:pythonImport("PyQt5.QtCore", "QFileSelector")
@:native("QFileSelector")
extern class QFileSelector extends QObject {
	function new(?parent:QObject);

	@:overload(function(filePath:QUrl):QUrl {})
	function select(filePath:QString):QString;
	function extraSelectors():QStringList;
	function setExtraSelectors(list:QStringList):Void;
	function allSelectors():QStringList;
}

