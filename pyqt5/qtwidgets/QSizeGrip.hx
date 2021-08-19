package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtWidgets", "QSizeGrip")
@:native("QSizeGrip")
extern class QSizeGrip extends QWidget {
	function new(parent:QWidget);

	function sizeHint():QSize;
	function setVisible(?v:Bool):Void;
	function paintEvent(?v:QPaintEvent):Void;
	function mousePressEvent(?v:QMouseEvent):Void;
	function mouseReleaseEvent(mouseEvent:QMouseEvent):Void;
	function mouseMoveEvent(?v:QMouseEvent):Void;
	function eventFilter(?v:QObject, ?v:QEvent):Bool;
	function event(?v:QEvent):Bool;
	function moveEvent(moveEvent:QMoveEvent):Void;
	function showEvent(showEvent:QShowEvent):Void;
	function hideEvent(hideEvent:QHideEvent):Void;
}

