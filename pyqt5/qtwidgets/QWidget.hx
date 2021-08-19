package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QStyle;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QRegion;
import pyqt5.qtgui.QPalette;
import pyqt5.qtgui.QFont;
import pyqt5.qtgui.QCursor;
import pyqt5.qtgui.QBitmap;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QIcon;
import pyqt5.qtgui.QKeySequence;
import pyqt5.qtwidgets.QSizePolicy;
import pyqt5.qtwidgets.QLayout;
import pyqt5.qtwidgets.QAction;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QWindowdefs;
import pyqt5.qtgui.QPaintEngine;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtgui.QPaintDevice;
import pyqt5.qtcore.QVariant;
import pyqt5.qtgui.QFontMetrics;
import pyqt5.qtgui.QFontInfo;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.QLocale;
import pyqt5.qtwidgets.QGraphicsProxyWidget;
import pyqt5.qtwidgets.QGraphicsEffect;
import pyqt5.qtcore.QMargins;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtgui.QWindow;
import pyqt5.qtgui.QScreen;

typedef QWidgetRenderFlags = QFlags<QWidgetRenderFlag>;

@:pythonImport("PyQt5.QtWidgets", "QWidget")
@:native("QWidget")
extern class QWidget extends QObject {
	static function setTabOrder(?v:QWidget, ?v:QWidget):Void;
	static function mouseGrabber():QWidget;
	static function keyboardGrabber():QWidget;
	static function find(?v:WId):QWidget;
	static function createWindowContainer(window:QWindow, parent:QWidget, ?flags:QtWindowFlags):Dynamic;

	var customContextMenuRequested:QSignal1<QPoint>;
	var windowTitleChanged:QSignal1<QString>;
	var windowIconChanged:QSignal1<QIcon>;
	var windowIconTextChanged:QSignal1<QString>;

	function new(?parent:QWidget, ?flags:QtWindowFlags);

	function devType():Int;
	function style():QStyle;
	function setStyle(?v:QStyle):Void;
	function isEnabledTo(?v:QWidget):Bool;
	function setEnabled(?v:Bool):Void;
	function setDisabled(?v:Bool):Void;
	function setWindowModified(?v:Bool):Void;
	function frameGeometry():QRect;
	function normalGeometry():QRect;
	function x():Int;
	function y():Int;
	function pos():QPoint;
	function frameSize():QSize;
	function childrenRect():QRect;
	function childrenRegion():QRegion;
	function minimumSize():QSize;
	function maximumSize():QSize;
	@:overload(function(s:QSize):Void {})
	function setMinimumSize(minw:Int, minh:Int):Void;
	@:overload(function(s:QSize):Void {})
	function setMaximumSize(maxw:Int, maxh:Int):Void;
	function setMinimumWidth(minw:Int):Void;
	function setMinimumHeight(minh:Int):Void;
	function setMaximumWidth(maxw:Int):Void;
	function setMaximumHeight(maxh:Int):Void;
	function sizeIncrement():QSize;
	@:overload(function(s:QSize):Void {})
	function setSizeIncrement(w:Int, h:Int):Void;
	function baseSize():QSize;
	@:overload(function(s:QSize):Void {})
	function setBaseSize(basew:Int, baseh:Int):Void;
	@:overload(function(w:Int, h:Int):Void {})
	function setFixedSize(?v:QSize):Void;
	function setFixedWidth(w:Int):Void;
	function setFixedHeight(h:Int):Void;
	function mapToGlobal(?v:QPoint):QPoint;
	function mapFromGlobal(?v:QPoint):QPoint;
	function mapToParent(?v:QPoint):QPoint;
	function mapFromParent(?v:QPoint):QPoint;
	function mapTo(?v:QWidget, ?v:QPoint):QPoint;
	function mapFrom(?v:QWidget, ?v:QPoint):QPoint;
	function window():QWidget;
	function palette():QPalette;
	function setPalette(?v:QPalette):Void;
	function setBackgroundRole(?v:QPaletteColorRole):Void;
	function backgroundRole():QPaletteColorRole;
	function setForegroundRole(?v:QPaletteColorRole):Void;
	function foregroundRole():QPaletteColorRole;
	function setFont(?v:QFont):Void;
	function cursor():QCursor;
	function setCursor(?v:QCursor):Void;
	function unsetCursor():Void;
	@:overload(function(?v:QRegion):Void {})
	function setMask(?v:QBitmap):Void;
	function mask():QRegion;
	function clearMask():Void;
	function setWindowTitle(?v:QString):Void;
	function windowTitle():QString;
	function setWindowIcon(icon:QIcon):Void;
	function windowIcon():QIcon;
	function setWindowIconText(?v:QString):Void;
	function windowIconText():QString;
	function setWindowRole(?v:QString):Void;
	function windowRole():QString;
	function setWindowOpacity(level:Float):Void;
	function windowOpacity():Float;
	function isWindowModified():Bool;
	function setToolTip(?v:QString):Void;
	function toolTip():QString;
	function setStatusTip(?v:QString):Void;
	function statusTip():QString;
	function setWhatsThis(?v:QString):Void;
	function whatsThis():QString;
	function accessibleName():QString;
	function setAccessibleName(name:QString):Void;
	function accessibleDescription():QString;
	function setAccessibleDescription(description:QString):Void;
	function setLayoutDirection(direction:QtLayoutDirection):Void;
	function layoutDirection():QtLayoutDirection;
	function unsetLayoutDirection():Void;
	function isRightToLeft():Bool;
	function isLeftToRight():Bool;
	@:overload(function(reason:QtFocusReason):Void {})
	function setFocus():Void;
	function isActiveWindow():Bool;
	function activateWindow():Void;
	function clearFocus():Void;
	function focusPolicy():QtFocusPolicy;
	function setFocusPolicy(policy:QtFocusPolicy):Void;
	function hasFocus():Bool;
	function setFocusProxy(?v:QWidget):Void;
	function focusProxy():QWidget;
	function contextMenuPolicy():QtContextMenuPolicy;
	function setContextMenuPolicy(policy:QtContextMenuPolicy):Void;
	@:overload(function(?v:QCursor):Void {})
	function grabMouse():Void;
	function releaseMouse():Void;
	function grabKeyboard():Void;
	function releaseKeyboard():Void;
	function grabShortcut(key:QKeySequence, ?context:QtShortcutContext):Int;
	function releaseShortcut(id:Int):Void;
	function setShortcutEnabled(id:Int, ?enabled:Bool):Void;
	function setUpdatesEnabled(enable:Bool):Void;
	@:overload(function(?v:QRect):Void {})
	@:overload(function(?v:QRegion):Void {})
	@:overload(function(ax:Int, ay:Int, aw:Int, ah:Int):Void {})
	function update():Void;
	@:overload(function(x:Int, y:Int, w:Int, h:Int):Void {})
	@:overload(function(?v:QRect):Void {})
	@:overload(function(?v:QRegion):Void {})
	function repaint():Void;
	function setVisible(visible:Bool):Void;
	function setHidden(hidden:Bool):Void;
	function show():Void;
	function hide():Void;
	function showMinimized():Void;
	function showMaximized():Void;
	function showFullScreen():Void;
	function showNormal():Void;
	function close():Bool;
	function raise():Void;
	function lower():Void;
	function stackUnder(?v:QWidget):Void;
	@:overload(function(ax:Int, ay:Int):Void {})
	function move(?v:QPoint):Void;
	@:overload(function(w:Int, h:Int):Void {})
	function resize(?v:QSize):Void;
	@:overload(function(ax:Int, ay:Int, aw:Int, ah:Int):Void {})
	function setGeometry(?v:QRect):Void;
	function adjustSize():Void;
	function isVisibleTo(?v:QWidget):Bool;
	function isMinimized():Bool;
	function isMaximized():Bool;
	function isFullScreen():Bool;
	function windowState():QtWindowStates;
	function setWindowState(state:QtWindowStates):Void;
	function overrideWindowState(state:QtWindowStates):Void;
	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function sizePolicy():QSizePolicy;
	@:overload(function(hor:QSizePolicyPolicy, ver:QSizePolicyPolicy):Void {})
	function setSizePolicy(?v:QSizePolicy):Void;
	function heightForWidth(?v:Int):Int;
	function visibleRegion():QRegion;
	@:overload(function(margins:QMargins):Void {})
	function setContentsMargins(left:Int, top:Int, right:Int, bottom:Int):Void;
	function getContentsMargins(left:Int, top:Int, right:Int, bottom:Int):Void;
	function contentsRect():QRect;
	function layout():QLayout;
	function setLayout(?v:QLayout):Void;
	function updateGeometry():Void;
	@:overload(function(parent:QWidget, f:QtWindowFlags):Void {})
	function setParent(parent:QWidget):Void;
	@:overload(function(dx:Int, dy:Int, ?v:QRect):Void {})
	function scroll(dx:Int, dy:Int):Void;
	function focusWidget():QWidget;
	function nextInFocusChain():QWidget;
	function acceptDrops():Bool;
	function setAcceptDrops(on:Bool):Void;
	function addAction(action:QAction):Void;
	function addActions(actions:QList<QAction>):Void;
	function insertAction(before:QAction, action:QAction):Void;
	function insertActions(before:QAction, actions:QList<QAction>):Void;
	function removeAction(action:QAction):Void;
	function actions():QList<QAction>;
	function setWindowFlags(type:QtWindowFlags):Void;
	function overrideWindowFlags(type:QtWindowFlags):Void;
	@:overload(function(ax:Int, ay:Int):QWidget {})
	function childAt(p:QPoint):QWidget;
	function setAttribute(attribute:QtWidgetAttribute, ?on:Bool):Void;
	function paintEngine():QPaintEngine;
	function ensurePolished():Void;
	function isAncestorOf(child:QWidget):Bool;
	function event(?v:QEvent):Bool;
	function mousePressEvent(?v:QMouseEvent):Void;
	function mouseReleaseEvent(?v:QMouseEvent):Void;
	function mouseDoubleClickEvent(?v:QMouseEvent):Void;
	function mouseMoveEvent(?v:QMouseEvent):Void;
	function wheelEvent(?v:QWheelEvent):Void;
	function keyPressEvent(?v:QKeyEvent):Void;
	function keyReleaseEvent(?v:QKeyEvent):Void;
	function focusInEvent(?v:QFocusEvent):Void;
	function focusOutEvent(?v:QFocusEvent):Void;
	function enterEvent(?v:QEvent):Void;
	function leaveEvent(?v:QEvent):Void;
	function paintEvent(?v:QPaintEvent):Void;
	function moveEvent(?v:QMoveEvent):Void;
	function resizeEvent(?v:QResizeEvent):Void;
	function closeEvent(?v:QCloseEvent):Void;
	function contextMenuEvent(?v:QContextMenuEvent):Void;
	function tabletEvent(?v:QTabletEvent):Void;
	function actionEvent(?v:QActionEvent):Void;
	function dragEnterEvent(?v:QDragEnterEvent):Void;
	function dragMoveEvent(?v:QDragMoveEvent):Void;
	function dragLeaveEvent(?v:QDragLeaveEvent):Void;
	function dropEvent(?v:QDropEvent):Void;
	function showEvent(?v:QShowEvent):Void;
	function hideEvent(?v:QHideEvent):Void;
	function changeEvent(?v:QEvent):Void;
	function metric(?v:QPaintDevicePaintDeviceMetric):Int;
	function inputMethodEvent(?v:QInputMethodEvent):Void;
	function inputMethodQuery(?v:QtInputMethodQuery):QVariant;
	function updateMicroFocus():Void;
	function create(?window:WId, ?initializeWindow:Bool, ?destroyOldWindow:Bool):Void;
	function destroy(?destroyWindow:Bool, ?destroySubWindows:Bool):Void;
	function focusNextPrevChild(next:Bool):Bool;
	function focusNextChild():Bool;
	function focusPreviousChild():Bool;
	function windowType():QtWindowType;
	function windowFlags():QtWindowFlags;
	function winId():WId;
	function isWindow():Bool;
	function isEnabled():Bool;
	function isModal():Bool;
	function minimumWidth():Int;
	function minimumHeight():Int;
	function maximumWidth():Int;
	function maximumHeight():Int;
	function font():QFont;
	function fontMetrics():QFontMetrics;
	function fontInfo():QFontInfo;
	function setMouseTracking(enable:Bool):Void;
	function hasMouseTracking():Bool;
	function underMouse():Bool;
	function updatesEnabled():Bool;
	function isVisible():Bool;
	function isHidden():Bool;
	function rect():QRect;
	function geometry():QRect;
	function size():QSize;
	function width():Int;
	function height():Int;
	function parentWidget():QWidget;
	function testAttribute(attribute:QtWidgetAttribute):Bool;
	function windowModality():QtWindowModality;
	function setWindowModality(windowModality:QtWindowModality):Void;
	function autoFillBackground():Bool;
	function setAutoFillBackground(enabled:Bool):Void;
	function setStyleSheet(styleSheet:QString):Void;
	function styleSheet():QString;
	function setShortcutAutoRepeat(id:Int, ?enabled:Bool):Void;
	function saveGeometry():QByteArray;
	function restoreGeometry(geometry:QByteArray):Bool;
	@:overload(function(painter:QPainter, ?targetOffset:QPoint, ?sourceRegion:QRegion, ?flags:QWidgetRenderFlags):Void {})
	function render(target:QPaintDevice, ?targetOffset:QPoint, ?sourceRegion:QRegion, ?flags:QWidgetRenderFlags):Void;
	function setLocale(locale:QLocale):Void;
	function locale():QLocale;
	function unsetLocale():Void;
	function effectiveWinId():WId;
	function nativeParentWidget():QWidget;
	function setWindowFilePath(filePath:QString):Void;
	function windowFilePath():QString;
	function graphicsProxyWidget():QGraphicsProxyWidget;
	function graphicsEffect():QGraphicsEffect;
	function setGraphicsEffect(effect:QGraphicsEffect):Void;
	function grabGesture(type:QtGestureType, ?flags:QtGestureFlags):Void;
	function ungrabGesture(type:QtGestureType):Void;
	function contentsMargins():QMargins;
	function previousInFocusChain():QWidget;
	function inputMethodHints():QtInputMethodHints;
	function setInputMethodHints(hints:QtInputMethodHints):Void;
	function hasHeightForWidth():Bool;
	function grab(?rectangle:QRect):QPixmap;
	function windowHandle():QWindow;
	function nativeEvent(eventType:QByteArray, message:Void, result:Int):Bool;
	function sharedPainter():QPainter;
	function initPainter(painter:QPainter):Void;
	function setToolTipDuration(msec:Int):Void;
	function toolTipDuration():Int;
	function setTabletTracking(enable:Bool):Void;
	function hasTabletTracking():Bool;
	function setWindowFlag(?v:QtWindowType, ?on:Bool):Void;
	function screen():QScreen;
}

@:pythonImport("PyQt5.QtWidgets", "RenderFlag")
@:native("QWidget.RenderFlag")
extern enum abstract QWidgetRenderFlag(Int) from Int to Int {
	var DrawWindowBackground;
	var DrawChildren;
	var IgnoreMask;
}

