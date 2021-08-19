package pyqt5.qtcore;

import pyqt5.qtcore.QMessageLogContext;
import pyqt5.qtcore.QString;

@:pythonImport("PyQt5.QtCore", "QLoggingCategory")
@:native("QLoggingCategory")
extern class QLoggingCategory {
	static function defaultCategory():QLoggingCategory;
	static function setFilterRules(rules:QString):Void;

	@:overload(function(category:Int):QLoggingCategory {})
	@:overload(function(category:Int, severityLevel:QMessageLogContextQtMsgType):QLoggingCategory {})
	function new(?v:QLoggingCategory);

	function isEnabled(type:QMessageLogContextQtMsgType):Bool;
	function setEnabled(type:QMessageLogContextQtMsgType, enable:Bool):Void;
	function isDebugEnabled():Bool;
	function isInfoEnabled():Bool;
	function isWarningEnabled():Bool;
	function isCriticalEnabled():Bool;
	function categoryName():Int;
}

