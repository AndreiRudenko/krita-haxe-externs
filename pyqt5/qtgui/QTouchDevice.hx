package pyqt5.qtgui;

import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QString;

typedef QTouchDeviceCapabilities = QFlags<QTouchDeviceCapabilityFlag>;

@:pythonImport("PyQt5.QtGui", "QTouchDevice")
@:native("QTouchDevice")
extern class QTouchDevice {
	static function devices():QList<QTouchDevice>;

	function new();

	function name():QString;
	function type():QTouchDeviceDeviceType;
	function capabilities():QTouchDeviceCapabilities;
	function setName(name:QString):Void;
	function setType(devType:QTouchDeviceDeviceType):Void;
	function setCapabilities(caps:QTouchDeviceCapabilities):Void;
	function maximumTouchPoints():Int;
	function setMaximumTouchPoints(max:Int):Void;
}

@:pythonImport("PyQt5.QtGui", "QTouchDevice")
@:native("QTouchDevice")
extern enum abstract QTouchDeviceDeviceType(Int) from Int to Int {
	var TouchScreen;
	var TouchPad;
}

@:pythonImport("PyQt5.QtGui", "QTouchDevice")
@:native("QTouchDevice")
extern enum abstract QTouchDeviceCapabilityFlag(Int) from Int to Int {
	var Position;
	var Area;
	var Pressure;
	var Velocity;
	var RawPositions;
	var NormalizedPosition;
	var MouseEmulation;
}

