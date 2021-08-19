package pyqt5.qtgui;

import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QScreen;
import pyqt5.qtgui.QSurface;
import pyqt5.qtgui.QWindowdefs;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QSurfaceFormat;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QMargins;
import pyqt5.qtcore.QPoint;
import pyqt5.qtgui.QIcon;
import pyqt5.qtgui.QCursor;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QRegion;

@:pythonImport("PyQt5.QtGui", "QWindow")
@:native("QWindow")
extern class QWindow extends QObject {
	static function fromWinId(id:WId):QWindow;

	var screenChanged:QSignal1<QScreen>;
	var modalityChanged:QSignal1<QtWindowModality>;
	var windowStateChanged:QSignal1<QtWindowState>;
	var xChanged:QSignal1<Int>;
	var yChanged:QSignal1<Int>;
	var widthChanged:QSignal1<Int>;
	var heightChanged:QSignal1<Int>;
	var minimumWidthChanged:QSignal1<Int>;
	var minimumHeightChanged:QSignal1<Int>;
	var maximumWidthChanged:QSignal1<Int>;
	var maximumHeightChanged:QSignal1<Int>;
	var visibleChanged:QSignal1<Bool>;
	var contentOrientationChanged:QSignal1<QtScreenOrientation>;
	var focusObjectChanged:QSignal1<QObject>;
	var windowTitleChanged:QSignal1<QString>;
	var visibilityChanged:QSignal1<QWindowVisibility>;
	var activeChanged:QSignal0;
	var opacityChanged:QSignal1<Float>;

	@:overload(function(?screen:QScreen):QWindow {})
	function new(parent:QWindow);

	function setSurfaceType(surfaceType:QSurfaceSurfaceType):Void;
	function surfaceType():QSurfaceSurfaceType;
	function isVisible():Bool;
	function create():Void;
	function winId():WId;
	@:overload(function(mode:QWindowAncestorMode):QWindow {})
	function parent():QWindow;
	function setParent(parent:QWindow):Void;
	function isTopLevel():Bool;
	function isModal():Bool;
	function modality():QtWindowModality;
	function setModality(modality:QtWindowModality):Void;
	function setFormat(format:QSurfaceFormat):Void;
	function format():QSurfaceFormat;
	function requestedFormat():QSurfaceFormat;
	function setFlags(flags:QtWindowFlags):Void;
	function flags():QtWindowFlags;
	function type():QtWindowType;
	function title():QString;
	function setOpacity(level:Float):Void;
	function requestActivate():Void;
	function isActive():Bool;
	function reportContentOrientationChange(orientation:QtScreenOrientation):Void;
	function contentOrientation():QtScreenOrientation;
	function devicePixelRatio():Float;
	function windowState():QtWindowState;
	function setWindowState(state:QtWindowState):Void;
	function setTransientParent(parent:QWindow):Void;
	function transientParent():QWindow;
	function isAncestorOf(child:QWindow, ?mode:QWindowAncestorMode):Bool;
	function isExposed():Bool;
	function minimumWidth():Int;
	function minimumHeight():Int;
	function maximumWidth():Int;
	function maximumHeight():Int;
	function minimumSize():QSize;
	function maximumSize():QSize;
	function baseSize():QSize;
	function sizeIncrement():QSize;
	function setMinimumSize(size:QSize):Void;
	function setMaximumSize(size:QSize):Void;
	function setBaseSize(size:QSize):Void;
	function setSizeIncrement(size:QSize):Void;
	@:overload(function(rect:QRect):Void {})
	function setGeometry(posx:Int, posy:Int, w:Int, h:Int):Void;
	function geometry():QRect;
	function frameMargins():QMargins;
	function frameGeometry():QRect;
	function framePosition():QPoint;
	function setFramePosition(point:QPoint):Void;
	function width():Int;
	function height():Int;
	function x():Int;
	function y():Int;
	function size():QSize;
	function position():QPoint;
	@:overload(function(posx:Int, posy:Int):Void {})
	function setPosition(pt:QPoint):Void;
	@:overload(function(w:Int, h:Int):Void {})
	function resize(newSize:QSize):Void;
	function setFilePath(filePath:QString):Void;
	function filePath():QString;
	function setIcon(icon:QIcon):Void;
	function icon():QIcon;
	function destroy():Void;
	function setKeyboardGrabEnabled(grab:Bool):Bool;
	function setMouseGrabEnabled(grab:Bool):Bool;
	function screen():QScreen;
	function setScreen(screen:QScreen):Void;
	function focusObject():QObject;
	function mapToGlobal(pos:QPoint):QPoint;
	function mapFromGlobal(pos:QPoint):QPoint;
	function cursor():QCursor;
	function setCursor(?v:QCursor):Void;
	function unsetCursor():Void;
	function setVisible(visible:Bool):Void;
	function show():Void;
	function hide():Void;
	function showMinimized():Void;
	function showMaximized():Void;
	function showFullScreen():Void;
	function showNormal():Void;
	function close():Bool;
	function raise():Void;
	function lower():Void;
	function setTitle(?v:QString):Void;
	function setX(arg:Int):Void;
	function setY(arg:Int):Void;
	function setWidth(arg:Int):Void;
	function setHeight(arg:Int):Void;
	function setMinimumWidth(w:Int):Void;
	function setMinimumHeight(h:Int):Void;
	function setMaximumWidth(w:Int):Void;
	function setMaximumHeight(h:Int):Void;
	function alert(msec:Int):Void;
	function requestUpdate():Void;
	function exposeEvent(?v:QExposeEvent):Void;
	function resizeEvent(?v:QResizeEvent):Void;
	function moveEvent(?v:QMoveEvent):Void;
	function focusInEvent(?v:QFocusEvent):Void;
	function focusOutEvent(?v:QFocusEvent):Void;
	function showEvent(?v:QShowEvent):Void;
	function hideEvent(?v:QHideEvent):Void;
	function event(?v:QEvent):Bool;
	function keyPressEvent(?v:QKeyEvent):Void;
	function keyReleaseEvent(?v:QKeyEvent):Void;
	function mousePressEvent(?v:QMouseEvent):Void;
	function mouseReleaseEvent(?v:QMouseEvent):Void;
	function mouseDoubleClickEvent(?v:QMouseEvent):Void;
	function mouseMoveEvent(?v:QMouseEvent):Void;
	function wheelEvent(?v:QWheelEvent):Void;
	function touchEvent(?v:QTouchEvent):Void;
	function tabletEvent(?v:QTabletEvent):Void;
	function visibility():QWindowVisibility;
	function setVisibility(v:QWindowVisibility):Void;
	function opacity():Float;
	function setMask(region:QRegion):Void;
	function mask():QRegion;
	function setFlag(?v:QtWindowType, ?on:Bool):Void;
	function windowStates():QtWindowStates;
	function setWindowStates(states:QtWindowStates):Void;
	function startSystemResize(edges:QtEdges):Bool;
	function startSystemMove():Bool;
}

@:pythonImport("PyQt5.QtGui", "QWindow")
@:native("QWindow")
extern enum abstract QWindowAncestorMode(Int) from Int to Int {
	var ExcludeTransients;
	var IncludeTransients;
}

@:pythonImport("PyQt5.QtGui", "QWindow")
@:native("QWindow")
extern enum abstract QWindowVisibility(Int) from Int to Int {
	var Hidden;
	var AutomaticVisibility;
	var Windowed;
	var Minimized;
	var Maximized;
	var FullScreen;
}

