package pyqt5.qtwidgets;

import pyqt5.qtcore.QVariant;

@:pythonImport("PyQt5.QtWidgets", "QScrollerProperties")
@:native("QScrollerProperties")
extern class QScrollerProperties {
	static function setDefaultScrollerProperties(sp:QScrollerProperties):Void;
	static function unsetDefaultScrollerProperties():Void;

	@:overload(function():QScrollerProperties {})
	function new(sp:QScrollerProperties);

	function scrollMetric(metric:QScrollerPropertiesScrollMetric):QVariant;
	function setScrollMetric(metric:QScrollerPropertiesScrollMetric, value:QVariant):Void;
}

@:pythonImport("PyQt5.QtWidgets", "OvershootPolicy")
@:native("QScrollerProperties.OvershootPolicy")
extern enum abstract QScrollerPropertiesOvershootPolicy(Int) from Int to Int {
	var OvershootWhenScrollable;
	var OvershootAlwaysOff;
	var OvershootAlwaysOn;
}

@:pythonImport("PyQt5.QtWidgets", "FrameRates")
@:native("QScrollerProperties.FrameRates")
extern enum abstract QScrollerPropertiesFrameRates(Int) from Int to Int {
	var Standard;
	var Fps60;
	var Fps30;
	var Fps20;
}

@:pythonImport("PyQt5.QtWidgets", "ScrollMetric")
@:native("QScrollerProperties.ScrollMetric")
extern enum abstract QScrollerPropertiesScrollMetric(Int) from Int to Int {
	var MousePressEventDelay;
	var DragStartDistance;
	var DragVelocitySmoothingFactor;
	var AxisLockThreshold;
	var ScrollingCurve;
	var DecelerationFactor;
	var MinimumVelocity;
	var MaximumVelocity;
	var MaximumClickThroughVelocity;
	var AcceleratingFlickMaximumTime;
	var AcceleratingFlickSpeedupFactor;
	var SnapPositionRatio;
	var SnapTime;
	var OvershootDragResistanceFactor;
	var OvershootDragDistanceFactor;
	var OvershootScrollDistanceFactor;
	var OvershootScrollTime;
	var HorizontalOvershootPolicy;
	var VerticalOvershootPolicy;
	var FrameRate;
	var ScrollMetricCount;
}

