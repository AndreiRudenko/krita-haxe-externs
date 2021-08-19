package pyqt5.qtcore;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.QStringList;

@:pythonImport("PyQt5.QtCore", "QMimeType")
@:native("QMimeType")
extern class QMimeType {
	@:overload(function():QMimeType {})
	function new(other:QMimeType);

	function swap(other:QMimeType):Void;
	function isValid():Bool;
	function isDefault():Bool;
	function name():QString;
	function comment():QString;
	function genericIconName():QString;
	function iconName():QString;
	function globPatterns():QStringList;
	function parentMimeTypes():QStringList;
	function allAncestors():QStringList;
	function aliases():QStringList;
	function suffixes():QStringList;
	function preferredSuffix():QString;
	function inherits(mimeTypeName:QString):Bool;
	function filterString():QString;
}

