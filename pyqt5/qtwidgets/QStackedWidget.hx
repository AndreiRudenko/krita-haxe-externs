package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QFrame;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtWidgets", "QStackedWidget")
@:native("QStackedWidget")
extern class QStackedWidget extends QFrame {
	var currentChanged:QSignal1<Int>;
	var widgetRemoved:QSignal1<Int>;

	function new(?parent:QWidget);

	function addWidget(w:QWidget):Int;
	function insertWidget(index:Int, w:QWidget):Int;
	function removeWidget(w:QWidget):Void;
	function currentWidget():QWidget;
	function currentIndex():Int;
	function indexOf(?v:QWidget):Int;
	function widget(?v:Int):QWidget;
	function count():Int;
	function setCurrentIndex(index:Int):Void;
	function setCurrentWidget(w:QWidget):Void;
	function event(e:QEvent):Bool;
}

