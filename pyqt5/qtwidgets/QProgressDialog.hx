package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QDialog;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QString;
import pyqt5.qtwidgets.QLabel;
import pyqt5.qtwidgets.QPushButton;
import pyqt5.qtwidgets.QProgressBar;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtWidgets", "QProgressDialog")
@:native("QProgressDialog")
extern class QProgressDialog extends QDialog {
	var canceled:QSignal0;

	@:overload(function(?parent:QWidget, ?flags:QtWindowFlags):QProgressDialog {})
	function new(labelText:QString, cancelButtonText:QString, minimum:Int, maximum:Int, ?parent:QWidget, ?flags:QtWindowFlags);

	function setLabel(label:QLabel):Void;
	function setCancelButton(button:QPushButton):Void;
	function setBar(bar:QProgressBar):Void;
	function wasCanceled():Bool;
	function minimum():Int;
	function maximum():Int;
	function setRange(minimum:Int, maximum:Int):Void;
	function value():Int;
	function sizeHint():QSize;
	function labelText():QString;
	function minimumDuration():Int;
	function setAutoReset(b:Bool):Void;
	function autoReset():Bool;
	function setAutoClose(b:Bool):Void;
	function autoClose():Bool;
	function cancel():Void;
	function reset():Void;
	function setMaximum(maximum:Int):Void;
	function setMinimum(minimum:Int):Void;
	function setValue(progress:Int):Void;
	function setLabelText(?v:QString):Void;
	function setCancelButtonText(?v:QString):Void;
	function setMinimumDuration(ms:Int):Void;
	function resizeEvent(?v:QResizeEvent):Void;
	function closeEvent(?v:QCloseEvent):Void;
	function changeEvent(?v:QEvent):Void;
	function showEvent(e:QShowEvent):Void;
	function forceShow():Void;
	@:overload(function(slot:Dynamic):Void {})
	function open():Void;
}

