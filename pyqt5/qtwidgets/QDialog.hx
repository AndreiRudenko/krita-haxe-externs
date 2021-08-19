package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtWidgets", "QDialog")
@:native("QDialog")
extern class QDialog extends QWidget {
	var accepted:QSignal0;
	var finished:QSignal1<Int>;
	var rejected:QSignal0;

	function new(?parent:QWidget, ?flags:QtWindowFlags);

	function result():Int;
	function setVisible(visible:Bool):Void;
	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function setSizeGripEnabled(?v:Bool):Void;
	function isSizeGripEnabled():Bool;
	function setModal(modal:Bool):Void;
	function setResult(r:Int):Void;
	function exec():Int;
	function done(?v:Int):Void;
	function accept():Void;
	function reject():Void;
	function open():Void;
	function keyPressEvent(?v:QKeyEvent):Void;
	function closeEvent(?v:QCloseEvent):Void;
	function showEvent(?v:QShowEvent):Void;
	function resizeEvent(?v:QResizeEvent):Void;
	function contextMenuEvent(?v:QContextMenuEvent):Void;
	function eventFilter(?v:QObject, ?v:QEvent):Bool;
}

@:pythonImport("PyQt5.QtWidgets", "DialogCode")
@:native("QDialog.DialogCode")
extern enum abstract QDialogDialogCode(Int) from Int to Int {
	var Rejected;
	var Accepted;
}

