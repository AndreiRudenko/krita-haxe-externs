package pyqt5.qtgui;

import pyqt5.qtcore.QGlobal;
import pyqt5.qtgui.QPaintDevice;
import pyqt5.qtgui.QFont;
import pyqt5.qtgui.QFontMetrics;
import pyqt5.qtgui.QFontInfo;
import pyqt5.qtgui.QColor;
import pyqt5.qtgui.QPen;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QBrush;
import pyqt5.qtcore.QPoint;
import pyqt5.qtgui.QRegion;
import pyqt5.qtgui.QPainterPath;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QPolygon;
import pyqt5.qtcore.QLine;
import pyqt5.qtcore.QVector;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtgui.QPicture;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QTextOption;
import pyqt5.qtgui.QPaintEngine;
import pyqt5.qtgui.QImage;
import pyqt5.qtgui.QTransform;
import pyqt5.qtgui.QStaticText;
import pyqt5.qtgui.QGlyphRun;

typedef QPainterRenderHints = QFlags<QPainterRenderHint>;
typedef QPainterPixmapFragmentHints = QFlags<QPainterPixmapFragmentHint>;

@:pythonImport("PyQt5.QtGui", "QPainter")
@:native("QPainter")
extern class QPainter {
	@:overload(function():QPainter {})
	@:overload(function(?v:QPaintDevice):QPainter {})
	function new(?v:QPainter);

	function device():QPaintDevice;
	function begin(?v:QPaintDevice):Bool;
	function end():Bool;
	function isActive():Bool;
	function setCompositionMode(mode:QPainterCompositionMode):Void;
	function compositionMode():QPainterCompositionMode;
	function font():QFont;
	function setFont(f:QFont):Void;
	function fontMetrics():QFontMetrics;
	function fontInfo():QFontInfo;
	@:overload(function(pen:QPen):Void {})
	@:overload(function(style:QtPenStyle):Void {})
	function setPen(color:QColor):Void;
	function pen():QPen;
	@:overload(function(style:QtBrushStyle):Void {})
	function setBrush(brush:QBrush):Void;
	function brush():QBrush;
	function setBackgroundMode(mode:QtBGMode):Void;
	function backgroundMode():QtBGMode;
	function brushOrigin():QPoint;
	@:overload(function(x:Int, y:Int):Void {})
	@:overload(function(p:QPoint):Void {})
	function setBrushOrigin(?v:QPointF):Void;
	function setBackground(bg:QBrush):Void;
	function background():QBrush;
	function clipRegion():QRegion;
	function clipPath():QPainterPath;
	@:overload(function(x:Int, y:Int, width:Int, height:Int, ?operation:QtClipOperation):Void {})
	@:overload(function(rectangle:QRect, ?operation:QtClipOperation):Void {})
	function setClipRect(rectangle:QRectF, ?operation:QtClipOperation):Void;
	function setClipRegion(region:QRegion, ?operation:QtClipOperation):Void;
	function setClipPath(path:QPainterPath, ?operation:QtClipOperation):Void;
	function setClipping(enable:Bool):Void;
	function hasClipping():Bool;
	function save():Void;
	function restore():Void;
	function scale(sx:Float, sy:Float):Void;
	function shear(sh:Float, sv:Float):Void;
	function rotate(a:Float):Void;
	@:overload(function(dx:Float, dy:Float):Void {})
	@:overload(function(offset:QPoint):Void {})
	function translate(offset:QPointF):Void;
	function window():QRect;
	@:overload(function(x:Int, y:Int, w:Int, h:Int):Void {})
	function setWindow(window:QRect):Void;
	function viewport():QRect;
	@:overload(function(x:Int, y:Int, w:Int, h:Int):Void {})
	function setViewport(viewport:QRect):Void;
	function setViewTransformEnabled(enable:Bool):Void;
	function viewTransformEnabled():Bool;
	function strokePath(path:QPainterPath, pen:QPen):Void;
	function fillPath(path:QPainterPath, brush:QBrush):Void;
	function drawPath(path:QPainterPath):Void;
	@:overload(function(points:QPolygonF):Void {})
	@:overload(function(point:QPoint, ...rest:Dynamic):Void {})
	@:overload(function(points:QPolygon):Void {})
	function drawPoints(point:QPointF, ...rest:Dynamic):Void;
	@:overload(function(lines:QVector<QLineF>):Void {})
	@:overload(function(pointPair:QPointF, ...rest:Dynamic):Void {})
	@:overload(function(pointPairs:QVector<QPointF>):Void {})
	@:overload(function(line:QLine, ...rest:Dynamic):Void {})
	@:overload(function(lines:QVector<QLine>):Void {})
	@:overload(function(pointPair:QPoint, ...rest:Dynamic):Void {})
	@:overload(function(pointPairs:QVector<QPoint>):Void {})
	function drawLines(line:QLineF, ...rest:Dynamic):Void;
	@:overload(function(rects:QVector<QRectF>):Void {})
	@:overload(function(rect:QRect, ...rest:Dynamic):Void {})
	@:overload(function(rects:QVector<QRect>):Void {})
	function drawRects(rect:QRectF, ...rest:Dynamic):Void;
	@:overload(function(r:QRect):Void {})
	@:overload(function(x:Int, y:Int, w:Int, h:Int):Void {})
	@:overload(function(center:QPointF, rx:Float, ry:Float):Void {})
	@:overload(function(center:QPoint, rx:Int, ry:Int):Void {})
	function drawEllipse(r:QRectF):Void;
	@:overload(function(polyline:QPolygonF):Void {})
	@:overload(function(point:QPoint, ...rest:Dynamic):Void {})
	@:overload(function(polyline:QPolygon):Void {})
	function drawPolyline(point:QPointF, ...rest:Dynamic):Void;
	@:overload(function(points:QPolygonF, ?fillRule:QtFillRule):Void {})
	@:overload(function(point:QPoint, ...rest:Dynamic):Void {})
	@:overload(function(points:QPolygon, ?fillRule:QtFillRule):Void {})
	function drawPolygon(point:QPointF, ...rest:Dynamic):Void;
	@:overload(function(poly:QPolygonF):Void {})
	@:overload(function(point:QPoint, ...rest:Dynamic):Void {})
	@:overload(function(poly:QPolygon):Void {})
	function drawConvexPolygon(point:QPointF, ...rest:Dynamic):Void;
	@:overload(function(r:QRect, a:Int, alen:Int):Void {})
	@:overload(function(x:Int, y:Int, w:Int, h:Int, a:Int, alen:Int):Void {})
	function drawArc(rect:QRectF, a:Int, alen:Int):Void;
	@:overload(function(rect:QRect, a:Int, alen:Int):Void {})
	@:overload(function(x:Int, y:Int, w:Int, h:Int, a:Int, alen:Int):Void {})
	function drawPie(rect:QRectF, a:Int, alen:Int):Void;
	@:overload(function(rect:QRect, a:Int, alen:Int):Void {})
	@:overload(function(x:Int, y:Int, w:Int, h:Int, a:Int, alen:Int):Void {})
	function drawChord(rect:QRectF, a:Int, alen:Int):Void;
	@:overload(function(rectangle:QRect, pixmap:QPixmap, ?pos:QPoint):Void {})
	@:overload(function(x:Int, y:Int, width:Int, height:Int, pixmap:QPixmap, ?sx:Int, ?sy:Int):Void {})
	function drawTiledPixmap(rectangle:QRectF, pixmap:QPixmap, ?pos:QPointF):Void;
	@:overload(function(x:Int, y:Int, p:QPicture):Void {})
	@:overload(function(pt:QPoint, p:QPicture):Void {})
	function drawPicture(p:QPointF, picture:QPicture):Void;
	@:overload(function(targetRect:QRect, pixmap:QPixmap, sourceRect:QRect):Void {})
	@:overload(function(p:QPointF, pm:QPixmap):Void {})
	@:overload(function(p:QPoint, pm:QPixmap):Void {})
	@:overload(function(r:QRect, pm:QPixmap):Void {})
	@:overload(function(x:Int, y:Int, pm:QPixmap):Void {})
	@:overload(function(x:Int, y:Int, w:Int, h:Int, pm:QPixmap):Void {})
	@:overload(function(x:Int, y:Int, w:Int, h:Int, pm:QPixmap, sx:Int, sy:Int, sw:Int, sh:Int):Void {})
	@:overload(function(x:Int, y:Int, pm:QPixmap, sx:Int, sy:Int, sw:Int, sh:Int):Void {})
	@:overload(function(p:QPointF, pm:QPixmap, sr:QRectF):Void {})
	@:overload(function(p:QPoint, pm:QPixmap, sr:QRect):Void {})
	function drawPixmap(targetRect:QRectF, pixmap:QPixmap, sourceRect:QRectF):Void;
	function setLayoutDirection(direction:QtLayoutDirection):Void;
	function layoutDirection():QtLayoutDirection;
	@:overload(function(rectangle:QRectF, flags:Int, text:QString, boundingRect:QRectF):Void {})
	@:overload(function(rectangle:QRect, flags:Int, text:QString, boundingRect:QRect):Void {})
	@:overload(function(rectangle:QRectF, text:QString, ?option:QTextOption):Void {})
	@:overload(function(p:QPoint, s:QString):Void {})
	@:overload(function(x:Int, y:Int, width:Int, height:Int, flags:Int, text:QString, boundingRect:QRect):Void {})
	@:overload(function(x:Int, y:Int, s:QString):Void {})
	function drawText(p:QPointF, s:QString):Void;
	@:overload(function(rect:QRect, flags:Int, text:QString):QRect {})
	@:overload(function(rectangle:QRectF, text:QString, ?option:QTextOption):QRectF {})
	@:overload(function(x:Int, y:Int, w:Int, h:Int, flags:Int, text:QString):QRect {})
	function boundingRect(rect:QRectF, flags:Int, text:QString):QRectF;
	@:overload(function(?v:QRect, ?v:QBrush):Void {})
	@:overload(function(x:Int, y:Int, w:Int, h:Int, b:QBrush):Void {})
	@:overload(function(?v:QRectF, color:QColor):Void {})
	@:overload(function(?v:QRect, color:QColor):Void {})
	@:overload(function(x:Int, y:Int, w:Int, h:Int, b:QColor):Void {})
	@:overload(function(x:Int, y:Int, w:Int, h:Int, c:QtGlobalColor):Void {})
	@:overload(function(r:QRect, c:QtGlobalColor):Void {})
	@:overload(function(r:QRectF, c:QtGlobalColor):Void {})
	@:overload(function(x:Int, y:Int, w:Int, h:Int, style:QtBrushStyle):Void {})
	@:overload(function(r:QRect, style:QtBrushStyle):Void {})
	@:overload(function(r:QRectF, style:QtBrushStyle):Void {})
	@:overload(function(x:Int, y:Int, w:Int, h:Int, preset:QGradientPreset):Void {})
	@:overload(function(r:QRect, preset:QGradientPreset):Void {})
	@:overload(function(r:QRectF, preset:QGradientPreset):Void {})
	function fillRect(?v:QRectF, ?v:QBrush):Void;
	@:overload(function(rect:QRect):Void {})
	@:overload(function(x:Int, y:Int, w:Int, h:Int):Void {})
	function eraseRect(?v:QRectF):Void;
	function setRenderHint(hint:QPainterRenderHint, ?on:Bool):Void;
	function renderHints():QPainterRenderHints;
	function setRenderHints(hints:QPainterRenderHints, ?on:Bool):Void;
	function paintEngine():QPaintEngine;
	@:overload(function(line:QLine):Void {})
	@:overload(function(x1:Int, y1:Int, x2:Int, y2:Int):Void {})
	@:overload(function(p1:QPoint, p2:QPoint):Void {})
	@:overload(function(p1:QPointF, p2:QPointF):Void {})
	function drawLine(l:QLineF):Void;
	@:overload(function(x:Int, y:Int, w:Int, h:Int):Void {})
	@:overload(function(r:QRect):Void {})
	function drawRect(rect:QRectF):Void;
	@:overload(function(x:Int, y:Int):Void {})
	@:overload(function(p:QPoint):Void {})
	function drawPoint(p:QPointF):Void;
	@:overload(function(r:QRect, image:QImage):Void {})
	@:overload(function(p:QPointF, image:QImage):Void {})
	@:overload(function(p:QPoint, image:QImage):Void {})
	@:overload(function(x:Int, y:Int, image:QImage, ?sx:Int, ?sy:Int, ?sw:Int, ?sh:Int, ?flags:QtImageConversionFlags):Void {})
	@:overload(function(targetRect:QRectF, image:QImage, sourceRect:QRectF, ?flags:QtImageConversionFlags):Void {})
	@:overload(function(targetRect:QRect, image:QImage, sourceRect:QRect, ?flags:QtImageConversionFlags):Void {})
	@:overload(function(p:QPointF, image:QImage, sr:QRectF, ?flags:QtImageConversionFlags):Void {})
	@:overload(function(p:QPoint, image:QImage, sr:QRect, ?flags:QtImageConversionFlags):Void {})
	function drawImage(r:QRectF, image:QImage):Void;
	function opacity():Float;
	function setOpacity(opacity:Float):Void;
	function worldMatrixEnabled():Bool;
	function setWorldMatrixEnabled(enabled:Bool):Void;
	function setTransform(transform:QTransform, ?combine:Bool):Void;
	function transform():QTransform;
	function deviceTransform():QTransform;
	function resetTransform():Void;
	function setWorldTransform(matrix:QTransform, ?combine:Bool):Void;
	function worldTransform():QTransform;
	function combinedTransform():QTransform;
	function testRenderHint(hint:QPainterRenderHint):Bool;
	@:overload(function(x:Int, y:Int, w:Int, h:Int, xRadius:Float, yRadius:Float, ?mode:QtSizeMode):Void {})
	@:overload(function(rect:QRect, xRadius:Float, yRadius:Float, ?mode:QtSizeMode):Void {})
	function drawRoundedRect(rect:QRectF, xRadius:Float, yRadius:Float, ?mode:QtSizeMode):Void;
	function beginNativePainting():Void;
	function endNativePainting():Void;
	function drawPixmapFragments(fragments:Array<QPainter>, pixmap:QPixmap, ?hints:QFlags<QPainterPixmapFragmentHint>):Void;
	@:overload(function(p:QPoint, staticText:QStaticText):Void {})
	@:overload(function(x:Int, y:Int, staticText:QStaticText):Void {})
	function drawStaticText(topLeftPosition:QPointF, staticText:QStaticText):Void;
	function clipBoundingRect():QRectF;
	function drawGlyphRun(position:QPointF, glyphRun:QGlyphRun):Void;
}

@:pythonImport("PyQt5.QtGui", "QPainter")
@:native("QPainter")
extern enum abstract QPainterRenderHint(Int) from Int to Int {
	var Antialiasing;
	var TextAntialiasing;
	var SmoothPixmapTransform;
	var HighQualityAntialiasing;
	var NonCosmeticDefaultPen;
	var Qt4CompatiblePainting;
	var LosslessImageRendering;
}

@:pythonImport("PyQt5.QtGui", "QPainter")
@:native("QPainter")
extern enum abstract QPainterCompositionMode(Int) from Int to Int {
	var CompositionMode_SourceOver;
	var CompositionMode_DestinationOver;
	var CompositionMode_Clear;
	var CompositionMode_Source;
	var CompositionMode_Destination;
	var CompositionMode_SourceIn;
	var CompositionMode_DestinationIn;
	var CompositionMode_SourceOut;
	var CompositionMode_DestinationOut;
	var CompositionMode_SourceAtop;
	var CompositionMode_DestinationAtop;
	var CompositionMode_Xor;
	var CompositionMode_Plus;
	var CompositionMode_Multiply;
	var CompositionMode_Screen;
	var CompositionMode_Overlay;
	var CompositionMode_Darken;
	var CompositionMode_Lighten;
	var CompositionMode_ColorDodge;
	var CompositionMode_ColorBurn;
	var CompositionMode_HardLight;
	var CompositionMode_SoftLight;
	var CompositionMode_Difference;
	var CompositionMode_Exclusion;
	var RasterOp_SourceOrDestination;
	var RasterOp_SourceAndDestination;
	var RasterOp_SourceXorDestination;
	var RasterOp_NotSourceAndNotDestination;
	var RasterOp_NotSourceOrNotDestination;
	var RasterOp_NotSourceXorDestination;
	var RasterOp_NotSource;
	var RasterOp_NotSourceAndDestination;
	var RasterOp_SourceAndNotDestination;
	var RasterOp_NotSourceOrDestination;
	var RasterOp_SourceOrNotDestination;
	var RasterOp_ClearDestination;
	var RasterOp_SetDestination;
	var RasterOp_NotDestination;
}

@:pythonImport("PyQt5.QtGui", "PixmapFragment")
@:native("PixmapFragment")
extern class PixmapFragment {
	static function create(pos:QPointF, sourceRect:QRectF, ?scaleX:Float, ?scaleY:Float, ?rotation:Float, ?opacity:Float):PixmapFragment;
}

@:pythonImport("PyQt5.QtGui", "QPainter")
@:native("QPainter")
extern enum abstract QPainterPixmapFragmentHint(Int) from Int to Int {
	var OpaqueHint;
}

