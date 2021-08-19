package pyqt5.qtwidgets;

import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QString;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QObject;
import pyqt5.qtwidgets.QAction;

@:pythonImport("PyQt5.QtWidgets", "QWhatsThis")
@:native("QWhatsThis")
extern class QWhatsThis {
	static function enterWhatsThisMode():Void;
	static function inWhatsThisMode():Bool;
	static function leaveWhatsThisMode():Void;
	static function showText(pos:QPoint, text:QString, ?widget:QWidget):Void;
	static function hideText():Void;
	static function createAction(?parent:QObject):QAction;

	function new();
}

