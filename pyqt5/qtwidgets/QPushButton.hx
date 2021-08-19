package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractButton;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QSize;
import pyqt5.qtwidgets.QMenu;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QPoint;

@:pythonImport("PyQt5.QtWidgets", "QPushButton")
@:native("QPushButton")
extern class QPushButton extends QAbstractButton {
	@:overload(function(?parent:QWidget):QPushButton {})
	@:overload(function(text:QString, ?parent:QWidget):QPushButton {})
	function new(icon:QIcon, text:QString, ?parent:QWidget);

	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function autoDefault():Bool;
	function setAutoDefault(?v:Bool):Void;
	function isDefault():Bool;
	function setDefault(?v:Bool):Void;
	function setMenu(menu:QMenu):Void;
	function menu():QMenu;
	function setFlat(?v:Bool):Void;
	function isFlat():Bool;
	function showMenu():Void;
	function initStyleOption(option:QStyleOptionButton):Void;
	function event(e:QEvent):Bool;
	function paintEvent(?v:QPaintEvent):Void;
	function keyPressEvent(?v:QKeyEvent):Void;
	function focusInEvent(?v:QFocusEvent):Void;
	function focusOutEvent(?v:QFocusEvent):Void;
	function hitButton(pos:QPoint):Bool;
}

