package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QFrame;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QToolBox")
@:native("QToolBox")
extern class QToolBox extends QFrame {
	var currentChanged:QSignal1<Int>;

	function new(?parent:QWidget, ?flags:QtWindowFlags);

	@:overload(function(item:QWidget, iconSet:QIcon, text:QString):Int {})
	function addItem(item:QWidget, text:QString):Int;
	@:overload(function(index:Int, widget:QWidget, icon:QIcon, text:QString):Int {})
	function insertItem(index:Int, item:QWidget, text:QString):Int;
	function removeItem(index:Int):Void;
	function setItemEnabled(index:Int, enabled:Bool):Void;
	function isItemEnabled(index:Int):Bool;
	function setItemText(index:Int, text:QString):Void;
	function itemText(index:Int):QString;
	function setItemIcon(index:Int, icon:QIcon):Void;
	function itemIcon(index:Int):QIcon;
	function setItemToolTip(index:Int, toolTip:QString):Void;
	function itemToolTip(index:Int):QString;
	function currentIndex():Int;
	function currentWidget():QWidget;
	function widget(index:Int):QWidget;
	function indexOf(widget:QWidget):Int;
	function count():Int;
	function setCurrentIndex(index:Int):Void;
	function setCurrentWidget(widget:QWidget):Void;
	function itemInserted(index:Int):Void;
	function itemRemoved(index:Int):Void;
	function event(e:QEvent):Bool;
	function showEvent(e:QShowEvent):Void;
	function changeEvent(?v:QEvent):Void;
}

