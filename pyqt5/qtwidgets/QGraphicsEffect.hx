package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QPoint;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtgui.QColor;
import pyqt5.qtgui.QBrush;

typedef QGraphicsEffectChangeFlags = QFlags<QGraphicsEffectChangeFlag>;
typedef QGraphicsBlurEffectBlurHints = QFlags<QGraphicsBlurEffectBlurHint>;

@:pythonImport("PyQt5.QtWidgets", "QGraphicsEffect")
@:native("QGraphicsEffect")
extern class QGraphicsEffect extends QObject {
	var enabledChanged:QSignal1<Bool>;

	function new(?parent:QObject);

	function boundingRectFor(sourceRect:QRectF):QRectF;
	function boundingRect():QRectF;
	function isEnabled():Bool;
	function setEnabled(enable:Bool):Void;
	function update():Void;
	function draw(painter:QPainter):Void;
	function sourceChanged(flags:QGraphicsEffectChangeFlags):Void;
	function updateBoundingRect():Void;
	function sourceIsPixmap():Bool;
	function sourceBoundingRect(?system:QtCoordinateSystem):QRectF;
	function drawSource(painter:QPainter):Void;
	function sourcePixmap(?system:QtCoordinateSystem, offset:QPoint, ?mode:QGraphicsEffectPixmapPadMode):QPixmap;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsEffect")
@:native("QGraphicsEffect")
extern enum abstract QGraphicsEffectChangeFlag(Int) from Int to Int {
	var SourceAttached;
	var SourceDetached;
	var SourceBoundingRectChanged;
	var SourceInvalidated;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsEffect")
@:native("QGraphicsEffect")
extern enum abstract QGraphicsEffectPixmapPadMode(Int) from Int to Int {
	var NoPad;
	var PadToTransparentBorder;
	var PadToEffectiveBoundingRect;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsColorizeEffect")
@:native("QGraphicsColorizeEffect")
extern class QGraphicsColorizeEffect extends QGraphicsEffect {
	var colorChanged:QSignal1<QColor>;
	var strengthChanged:QSignal1<Float>;

	function new(?parent:QObject);

	function color():QColor;
	function strength():Float;
	function setColor(c:QColor):Void;
	function setStrength(strength:Float):Void;
	function draw(painter:QPainter):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsBlurEffect")
@:native("QGraphicsBlurEffect")
extern class QGraphicsBlurEffect extends QGraphicsEffect {
	var blurRadiusChanged:QSignal1<Float>;
	var blurHintsChanged:QSignal1<QGraphicsBlurEffectBlurHints>;

	function new(?parent:QObject);

	function boundingRectFor(rect:QRectF):QRectF;
	function blurRadius():Float;
	function blurHints():QGraphicsBlurEffectBlurHints;
	function setBlurRadius(blurRadius:Float):Void;
	function setBlurHints(hints:QGraphicsBlurEffectBlurHints):Void;
	function draw(painter:QPainter):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsBlurEffect")
@:native("QGraphicsBlurEffect")
extern enum abstract QGraphicsBlurEffectBlurHint(Int) from Int to Int {
	var PerformanceHint;
	var QualityHint;
	var AnimationHint;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsDropShadowEffect")
@:native("QGraphicsDropShadowEffect")
extern class QGraphicsDropShadowEffect extends QGraphicsEffect {
	var offsetChanged:QSignal1<QPointF>;
	var blurRadiusChanged:QSignal1<Float>;
	var colorChanged:QSignal1<QColor>;

	function new(?parent:QObject);

	function boundingRectFor(rect:QRectF):QRectF;
	function offset():QPointF;
	function xOffset():Float;
	function yOffset():Float;
	function blurRadius():Float;
	function color():QColor;
	@:overload(function(dx:Float, dy:Float):Void {})
	@:overload(function(d:Float):Void {})
	function setOffset(ofs:QPointF):Void;
	function setXOffset(dx:Float):Void;
	function setYOffset(dy:Float):Void;
	function setBlurRadius(blurRadius:Float):Void;
	function setColor(color:QColor):Void;
	function draw(painter:QPainter):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QGraphicsOpacityEffect")
@:native("QGraphicsOpacityEffect")
extern class QGraphicsOpacityEffect extends QGraphicsEffect {
	var opacityChanged:QSignal1<Float>;
	var opacityMaskChanged:QSignal1<QBrush>;

	function new(?parent:QObject);

	function opacity():Float;
	function opacityMask():QBrush;
	function setOpacity(opacity:Float):Void;
	function setOpacityMask(mask:QBrush):Void;
	function draw(painter:QPainter):Void;
}

