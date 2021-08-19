package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractButton;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSize;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QRadioButton")
@:native("QRadioButton")
extern class QRadioButton extends QAbstractButton {
	@:overload(function(?parent:QWidget):QRadioButton {})
	function new(text:QString, ?parent:QWidget);

	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function initStyleOption(button:QStyleOptionButton):Void;
	function hitButton(?v:QPoint):Bool;
	function event(e:QEvent):Bool;
	function paintEvent(?v:QPaintEvent):Void;
	function mouseMoveEvent(?v:QMouseEvent):Void;
}

