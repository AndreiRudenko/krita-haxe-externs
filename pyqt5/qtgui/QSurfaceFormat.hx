package pyqt5.qtgui;

import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QPair;

typedef QSurfaceFormatFormatOptions = QFlags<QSurfaceFormatFormatOption>;

@:pythonImport("PyQt5.QtGui", "QSurfaceFormat")
@:native("QSurfaceFormat")
extern class QSurfaceFormat {
	static function setDefaultFormat(format:QSurfaceFormat):Void;
	static function defaultFormat():QSurfaceFormat;

	@:overload(function():QSurfaceFormat {})
	@:overload(function(options:QSurfaceFormatFormatOptions):QSurfaceFormat {})
	function new(other:QSurfaceFormat);

	function setDepthBufferSize(size:Int):Void;
	function depthBufferSize():Int;
	function setStencilBufferSize(size:Int):Void;
	function stencilBufferSize():Int;
	function setRedBufferSize(size:Int):Void;
	function redBufferSize():Int;
	function setGreenBufferSize(size:Int):Void;
	function greenBufferSize():Int;
	function setBlueBufferSize(size:Int):Void;
	function blueBufferSize():Int;
	function setAlphaBufferSize(size:Int):Void;
	function alphaBufferSize():Int;
	function setSamples(numSamples:Int):Void;
	function samples():Int;
	function setSwapBehavior(behavior:QSurfaceFormatSwapBehavior):Void;
	function swapBehavior():QSurfaceFormatSwapBehavior;
	function hasAlpha():Bool;
	function setProfile(profile:QSurfaceFormatOpenGLContextProfile):Void;
	function profile():QSurfaceFormatOpenGLContextProfile;
	function setRenderableType(type:QSurfaceFormatRenderableType):Void;
	function renderableType():QSurfaceFormatRenderableType;
	function setMajorVersion(majorVersion:Int):Void;
	function majorVersion():Int;
	function setMinorVersion(minorVersion:Int):Void;
	function minorVersion():Int;
	function setStereo(enable:Bool):Void;
	@:overload(function(option:QSurfaceFormatFormatOption, ?on:Bool):Void {})
	function setOption(opt:QSurfaceFormatFormatOptions):Void;
	@:overload(function(option:QSurfaceFormatFormatOption):Bool {})
	function testOption(opt:QSurfaceFormatFormatOptions):Bool;
	function stereo():Bool;
	function version():QPair<Int, Int>;
	function setVersion(major:Int, minor:Int):Void;
	function setOptions(options:QSurfaceFormatFormatOptions):Void;
	function options():QSurfaceFormatFormatOptions;
	function swapInterval():Int;
	function setSwapInterval(interval:Int):Void;
	function colorSpace():QSurfaceFormatColorSpace;
	function setColorSpace(colorSpace:QSurfaceFormatColorSpace):Void;
}

@:pythonImport("PyQt5.QtGui", "FormatOption")
@:native("QSurfaceFormat.FormatOption")
extern enum abstract QSurfaceFormatFormatOption(Int) from Int to Int {
	var StereoBuffers;
	var DebugContext;
	var DeprecatedFunctions;
	var ResetNotification;
}

@:pythonImport("PyQt5.QtGui", "SwapBehavior")
@:native("QSurfaceFormat.SwapBehavior")
extern enum abstract QSurfaceFormatSwapBehavior(Int) from Int to Int {
	var DefaultSwapBehavior;
	var SingleBuffer;
	var DoubleBuffer;
	var TripleBuffer;
}

@:pythonImport("PyQt5.QtGui", "RenderableType")
@:native("QSurfaceFormat.RenderableType")
extern enum abstract QSurfaceFormatRenderableType(Int) from Int to Int {
	var DefaultRenderableType;
	var OpenGL;
	var OpenGLES;
	var OpenVG;
}

@:pythonImport("PyQt5.QtGui", "OpenGLContextProfile")
@:native("QSurfaceFormat.OpenGLContextProfile")
extern enum abstract QSurfaceFormatOpenGLContextProfile(Int) from Int to Int {
	var NoProfile;
	var CoreProfile;
	var CompatibilityProfile;
}

@:pythonImport("PyQt5.QtGui", "ColorSpace")
@:native("QSurfaceFormat.ColorSpace")
extern enum abstract QSurfaceFormatColorSpace(Int) from Int to Int {
	var DefaultColorSpace;
	var sRGBColorSpace;
}

