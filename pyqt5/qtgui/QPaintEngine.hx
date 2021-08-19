package pyqt5.qtgui;

import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QFont;
import pyqt5.qtgui.QPaintDevice;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QLine;
import pyqt5.qtgui.QPainterPath;
import pyqt5.qtcore.QPoint;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtgui.QImage;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QPainter;
import pyqt5.qtgui.QPen;
import pyqt5.qtgui.QBrush;
import pyqt5.qtgui.QRegion;
import pyqt5.qtgui.QTransform;

typedef QTextItemRenderFlags = QFlags<QTextItemRenderFlag>;
typedef QPaintEnginePaintEngineFeatures = QFlags<QPaintEnginePaintEngineFeature>;
typedef QPaintEngineDirtyFlags = QFlags<QPaintEngineDirtyFlag>;

@:pythonImport("PyQt5.QtGui", "QTextItem")
@:native("QTextItem")
extern class QTextItem {
	function descent():Float;
	function ascent():Float;
	function width():Float;
	function renderFlags():QTextItemRenderFlags;
	function text():QString;
	function font():QFont;
}

@:pythonImport("PyQt5.QtGui", "QTextItem")
@:native("QTextItem")
extern enum abstract QTextItemRenderFlag(Int) from Int to Int {
	var RightToLeft;
	var Overline;
	var Underline;
	var StrikeOut;
}

@:pythonImport("PyQt5.QtGui", "QPaintEngine")
@:native("QPaintEngine")
extern class QPaintEngine {
	@:overload(function(?features:QPaintEnginePaintEngineFeatures):QPaintEngine {})
	function new(?v:QPaintEngine);

	function isActive():Bool;
	function setActive(newState:Bool):Void;
	function begin(pdev:QPaintDevice):Bool;
	function end():Bool;
	function updateState(state:QPaintEngineState):Void;
	@:overload(function(rects:QRectF, rectCount:Int):Void {})
	function drawRects(rects:QRect, rectCount:Int):Void;
	@:overload(function(lines:QLineF, lineCount:Int):Void {})
	function drawLines(lines:QLine, lineCount:Int):Void;
	@:overload(function(r:QRect):Void {})
	function drawEllipse(r:QRectF):Void;
	function drawPath(path:QPainterPath):Void;
	@:overload(function(points:QPoint, pointCount:Int):Void {})
	function drawPoints(points:QPointF, pointCount:Int):Void;
	@:overload(function(points:QPoint, pointCount:Int, mode:QPaintEnginePolygonDrawMode):Void {})
	function drawPolygon(points:QPointF, pointCount:Int, mode:QPaintEnginePolygonDrawMode):Void;
	function drawPixmap(r:QRectF, pm:QPixmap, sr:QRectF):Void;
	function drawTextItem(p:QPointF, textItem:QTextItem):Void;
	function drawTiledPixmap(r:QRectF, pixmap:QPixmap, s:QPointF):Void;
	function drawImage(r:QRectF, pm:QImage, sr:QRectF, ?flags:QtImageConversionFlags):Void;
	function setPaintDevice(device:QPaintDevice):Void;
	function paintDevice():QPaintDevice;
	function type():QPaintEngineType;
	function painter():QPainter;
	function hasFeature(feature:QPaintEnginePaintEngineFeatures):Bool;
}

@:pythonImport("PyQt5.QtGui", "QPaintEngine")
@:native("QPaintEngine")
extern enum abstract QPaintEnginePaintEngineFeature(Int) from Int to Int {
	var PrimitiveTransform;
	var PatternTransform;
	var PixmapTransform;
	var PatternBrush;
	var LinearGradientFill;
	var RadialGradientFill;
	var ConicalGradientFill;
	var AlphaBlend;
	var PorterDuff;
	var PainterPaths;
	var Antialiasing;
	var BrushStroke;
	var ConstantOpacity;
	var MaskedBrush;
	var PaintOutsidePaintEvent;
	var PerspectiveTransform;
	var BlendModes;
	var ObjectBoundingModeGradients;
	var RasterOpModes;
	var AllFeatures;
}

@:pythonImport("PyQt5.QtGui", "QPaintEngine")
@:native("QPaintEngine")
extern enum abstract QPaintEngineDirtyFlag(Int) from Int to Int {
	var DirtyPen;
	var DirtyBrush;
	var DirtyBrushOrigin;
	var DirtyFont;
	var DirtyBackground;
	var DirtyBackgroundMode;
	var DirtyTransform;
	var DirtyClipRegion;
	var DirtyClipPath;
	var DirtyHints;
	var DirtyCompositionMode;
	var DirtyClipEnabled;
	var DirtyOpacity;
	var AllDirty;
}

@:pythonImport("PyQt5.QtGui", "QPaintEngine")
@:native("QPaintEngine")
extern enum abstract QPaintEnginePolygonDrawMode(Int) from Int to Int {
	var OddEvenMode;
	var WindingMode;
	var ConvexMode;
	var PolylineMode;
}

@:pythonImport("PyQt5.QtGui", "QPaintEngine")
@:native("QPaintEngine")
extern enum abstract QPaintEngineType(Int) from Int to Int {
	var X11;
	var Windows;
	var QuickDraw;
	var CoreGraphics;
	var MacPrinter;
	var QWindowSystem;
	var PostScript;
	var OpenGL;
	var Picture;
	var SVG;
	var Raster;
	var Direct3D;
	var Pdf;
	var OpenVG;
	var OpenGL2;
	var PaintBuffer;
	var Blitter;
	var Direct2D;
	var User;
	var MaxUser;
}

@:pythonImport("PyQt5.QtGui", "QPaintEngineState")
@:native("QPaintEngineState")
extern class QPaintEngineState {
	function state():QPaintEngineDirtyFlags;
	function pen():QPen;
	function brush():QBrush;
	function brushOrigin():QPointF;
	function backgroundBrush():QBrush;
	function backgroundMode():QtBGMode;
	function font():QFont;
	function opacity():Float;
	function clipOperation():QtClipOperation;
	function clipRegion():QRegion;
	function clipPath():QPainterPath;
	function isClipEnabled():Bool;
	function renderHints():QPainterRenderHints;
	function compositionMode():QPainterCompositionMode;
	function painter():QPainter;
	function transform():QTransform;
	function brushNeedsResolving():Bool;
	function penNeedsResolving():Bool;
}

