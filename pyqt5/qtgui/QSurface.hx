package pyqt5.qtgui;

import pyqt5.qtgui.QSurfaceFormat;
import pyqt5.qtcore.QSize;

@:pythonImport("PyQt5.QtGui", "QSurface")
@:native("QSurface")
extern class QSurface {
	function new(type:QSurfaceSurfaceClass);

	function surfaceClass():QSurfaceSurfaceClass;
	function format():QSurfaceFormat;
	function surfaceType():QSurfaceSurfaceType;
	function size():QSize;
	function supportsOpenGL():Bool;
}

@:pythonImport("PyQt5.QtGui", "SurfaceClass")
@:native("QSurface.SurfaceClass")
extern enum abstract QSurfaceSurfaceClass(Int) from Int to Int {
	var Window;
	var Offscreen;
}

@:pythonImport("PyQt5.QtGui", "SurfaceType")
@:native("QSurface.SurfaceType")
extern enum abstract QSurfaceSurfaceType(Int) from Int to Int {
	var RasterSurface;
	var OpenGLSurface;
	var RasterGLSurface;
	var OpenVGSurface;
	var VulkanSurface;
	var MetalSurface;
}

