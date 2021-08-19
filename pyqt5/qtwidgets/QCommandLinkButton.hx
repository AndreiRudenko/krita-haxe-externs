package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QPushButton;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QCommandLinkButton")
@:native("QCommandLinkButton")
extern class QCommandLinkButton extends QPushButton {
	@:overload(function(?parent:QWidget):QCommandLinkButton {})
	@:overload(function(text:QString, ?parent:QWidget):QCommandLinkButton {})
	function new(text:QString, description:QString, ?parent:QWidget);

	function description():QString;
	function setDescription(description:QString):Void;
	function sizeHint():QSize;
	function heightForWidth(?v:Int):Int;
	function minimumSizeHint():QSize;
	function event(e:QEvent):Bool;
	function paintEvent(?v:QPaintEvent):Void;
}

