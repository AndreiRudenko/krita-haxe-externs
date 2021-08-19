package pyqt5.qtgui;

import pyqt5.qtgui.QWindow;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QRegion;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtgui.QPaintDevice;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtGui", "QPaintDeviceWindow")
@:native("QPaintDeviceWindow")
extern class QPaintDeviceWindow extends QWindow {
	@:overload(function(region:QRegion):Void {})
	@:overload(function():Void {})
	function update(rect:QRect):Void;
	function paintEvent(event:QPaintEvent):Void;
	function metric(metric:QPaintDevicePaintDeviceMetric):Int;
	function exposeEvent(?v:QExposeEvent):Void;
	function event(event:QEvent):Bool;
}

