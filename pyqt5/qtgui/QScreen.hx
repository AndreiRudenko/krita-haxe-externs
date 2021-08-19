package pyqt5.qtgui;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QTransform;
import pyqt5.qtgui.QWindowdefs;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QPoint;

@:pythonImport("PyQt5.QtGui", "QScreen")
@:native("QScreen")
extern class QScreen extends QObject {
	var geometryChanged:QSignal1<QRect>;
	var physicalDotsPerInchChanged:QSignal1<Float>;
	var logicalDotsPerInchChanged:QSignal1<Float>;
	var primaryOrientationChanged:QSignal1<QtScreenOrientation>;
	var orientationChanged:QSignal1<QtScreenOrientation>;
	var refreshRateChanged:QSignal1<Float>;
	var physicalSizeChanged:QSignal1<QSizeF>;
	var virtualGeometryChanged:QSignal1<QRect>;
	var availableGeometryChanged:QSignal1<QRect>;

	function new(?v:QScreen);

	function name():QString;
	function depth():Int;
	function size():QSize;
	function geometry():QRect;
	function physicalSize():QSizeF;
	function physicalDotsPerInchX():Float;
	function physicalDotsPerInchY():Float;
	function physicalDotsPerInch():Float;
	function logicalDotsPerInchX():Float;
	function logicalDotsPerInchY():Float;
	function logicalDotsPerInch():Float;
	function availableSize():QSize;
	function availableGeometry():QRect;
	function virtualSiblings():QList<QScreen>;
	function virtualSize():QSize;
	function virtualGeometry():QRect;
	function availableVirtualSize():QSize;
	function availableVirtualGeometry():QRect;
	function nativeOrientation():QtScreenOrientation;
	function primaryOrientation():QtScreenOrientation;
	function orientation():QtScreenOrientation;
	function orientationUpdateMask():QtScreenOrientations;
	function setOrientationUpdateMask(mask:QtScreenOrientations):Void;
	function angleBetween(a:QtScreenOrientation, b:QtScreenOrientation):Int;
	function transformBetween(a:QtScreenOrientation, b:QtScreenOrientation, target:QRect):QTransform;
	function mapBetween(a:QtScreenOrientation, b:QtScreenOrientation, rect:QRect):QRect;
	function isPortrait(orientation:QtScreenOrientation):Bool;
	function isLandscape(orientation:QtScreenOrientation):Bool;
	function grabWindow(window:WId, ?x:Int, ?y:Int, ?width:Int, ?height:Int):QPixmap;
	function refreshRate():Float;
	function devicePixelRatio():Float;
	function manufacturer():QString;
	function model():QString;
	function serialNumber():QString;
	function virtualSiblingAt(point:QPoint):QScreen;
}

