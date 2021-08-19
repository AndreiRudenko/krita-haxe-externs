package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QDialog;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtWidgets", "QErrorMessage")
@:native("QErrorMessage")
extern class QErrorMessage extends QDialog {
	static function qtHandler():QErrorMessage;

	function new(?parent:QWidget);

	@:overload(function(message:QString, type:QString):Void {})
	function showMessage(message:QString):Void;
	function changeEvent(e:QEvent):Void;
	function done(?v:Int):Void;
}

