package pyqt5.qtwidgets;

import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QString;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QPalette;
import pyqt5.qtgui.QFont;

@:pythonImport("PyQt5.QtWidgets", "QToolTip")
@:native("QToolTip")
extern class QToolTip {
	@:overload(function(pos:QPoint, text:QString, w:QWidget, rect:QRect):Void {})
	@:overload(function(pos:QPoint, text:QString, w:QWidget, rect:QRect, msecShowTime:Int):Void {})
	static function showText(pos:QPoint, text:QString, ?widget:QWidget):Void;
	static function palette():QPalette;
	static function hideText():Void;
	static function setPalette(?v:QPalette):Void;
	static function font():QFont;
	static function setFont(?v:QFont):Void;
	static function isVisible():Bool;
	static function text():QString;

	function new();
}

