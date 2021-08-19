package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtWidgets", "QStatusBar")
@:native("QStatusBar")
extern class QStatusBar extends QWidget {
	var messageChanged:QSignal1<QString>;

	function new(?parent:QWidget);

	function addWidget(widget:QWidget, ?stretch:Int):Void;
	function addPermanentWidget(widget:QWidget, ?stretch:Int):Void;
	function removeWidget(widget:QWidget):Void;
	function setSizeGripEnabled(?v:Bool):Void;
	function isSizeGripEnabled():Bool;
	function currentMessage():QString;
	function insertWidget(index:Int, widget:QWidget, ?stretch:Int):Int;
	function insertPermanentWidget(index:Int, widget:QWidget, ?stretch:Int):Int;
	function showMessage(message:QString, ?msecs:Int):Void;
	function clearMessage():Void;
	function paintEvent(?v:QPaintEvent):Void;
	function resizeEvent(?v:QResizeEvent):Void;
	function reformat():Void;
	function hideOrShow():Void;
	function event(?v:QEvent):Bool;
	function showEvent(?v:QShowEvent):Void;
}

