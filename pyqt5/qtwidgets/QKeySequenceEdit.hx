package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtgui.QKeySequence;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QKeySequenceEdit")
@:native("QKeySequenceEdit")
extern class QKeySequenceEdit extends QWidget {
	var editingFinished:QSignal0;
	var keySequenceChanged:QSignal1<QKeySequence>;

	@:overload(function(?parent:QWidget):QKeySequenceEdit {})
	function new(keySequence:QKeySequence, ?parent:QWidget);

	function keySequence():QKeySequence;
	function setKeySequence(keySequence:QKeySequence):Void;
	function clear():Void;
	function event(?v:QEvent):Bool;
	function keyPressEvent(?v:QKeyEvent):Void;
	function keyReleaseEvent(?v:QKeyEvent):Void;
	function timerEvent(?v:QTimerEvent):Void;
}

