package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractScrollArea;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QScrollArea")
@:native("QScrollArea")
extern class QScrollArea extends QAbstractScrollArea {
	function new(?parent:QWidget);

	function widget():QWidget;
	function setWidget(w:QWidget):Void;
	function takeWidget():QWidget;
	function widgetResizable():Bool;
	function setWidgetResizable(resizable:Bool):Void;
	function alignment():QtAlignment;
	function setAlignment(?v:QtAlignment):Void;
	function sizeHint():QSize;
	function focusNextPrevChild(next:Bool):Bool;
	function ensureVisible(x:Int, y:Int, ?xMargin:Int, ?yMargin:Int):Void;
	function ensureWidgetVisible(childWidget:QWidget, ?xMargin:Int, ?yMargin:Int):Void;
	function event(?v:QEvent):Bool;
	function eventFilter(?v:QObject, ?v:QEvent):Bool;
	function resizeEvent(?v:QResizeEvent):Void;
	function scrollContentsBy(dx:Int, dy:Int):Void;
	function viewportSizeHint():QSize;
}

