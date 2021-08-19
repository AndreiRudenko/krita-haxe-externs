package pyqt5.qtgui;

import pyqt5.qtgui.QPaintDeviceWindow;
import pyqt5.qtgui.QWindow;
import pyqt5.qtgui.QPaintDevice;

@:pythonImport("PyQt5.QtGui", "QRasterWindow")
@:native("QRasterWindow")
extern class QRasterWindow extends QPaintDeviceWindow {
	function new(?parent:QWindow);

	function metric(metric:QPaintDevicePaintDeviceMetric):Int;
}

