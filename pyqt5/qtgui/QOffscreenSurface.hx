package pyqt5.qtgui;

import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QScreen;
import pyqt5.qtgui.QSurface;
import pyqt5.qtgui.QSurfaceFormat;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtGui", "QOffscreenSurface")
@:native("QOffscreenSurface")
extern class QOffscreenSurface extends QObject {
	var screenChanged:QSignal1<QScreen>;

	@:overload(function(?screen:QScreen):QOffscreenSurface {})
	function new(screen:QScreen, parent:QObject);

	function surfaceType():QSurfaceSurfaceType;
	function create():Void;
	function destroy():Void;
	function isValid():Bool;
	function setFormat(format:QSurfaceFormat):Void;
	function format():QSurfaceFormat;
	function requestedFormat():QSurfaceFormat;
	function size():QSize;
	function screen():QScreen;
	function setScreen(screen:QScreen):Void;
	function nativeHandle():Void;
	function setNativeHandle(handle:Void):Void;
}

