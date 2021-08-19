package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QDesktopWidget")
@:native("QDesktopWidget")
extern class QDesktopWidget extends QWidget {
	var resized:QSignal1<Int>;
	var workAreaResized:QSignal1<Int>;
	var screenCountChanged:QSignal1<Int>;
	var primaryScreenChanged:QSignal0;

	function new();

	function isVirtualDesktop():Bool;
	function primaryScreen():Int;
	@:overload(function(?v:QPoint):Int {})
	function screenNumber(?widget:QWidget):Int;
	function screen(?screen:Int):QWidget;
	function screenCount():Int;
	@:overload(function(widget:QWidget):QRect {})
	@:overload(function(point:QPoint):QRect {})
	function screenGeometry(?screen:Int):QRect;
	@:overload(function(widget:QWidget):QRect {})
	@:overload(function(point:QPoint):QRect {})
	function availableGeometry(?screen:Int):QRect;
	function resizeEvent(e:QResizeEvent):Void;
}

