package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QFocusFrame")
@:native("QFocusFrame")
extern class QFocusFrame extends QWidget {
	function new(?parent:QWidget);

	function setWidget(widget:QWidget):Void;
	function widget():QWidget;
	function initStyleOption(option:QStyleOption):Void;
	function eventFilter(?v:QObject, ?v:QEvent):Bool;
	function event(e:QEvent):Bool;
	function paintEvent(?v:QPaintEvent):Void;
}

