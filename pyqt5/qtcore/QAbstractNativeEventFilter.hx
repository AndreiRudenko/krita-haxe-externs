package pyqt5.qtcore;

import pyqt5.qtcore.QByteArray;

@:pythonImport("PyQt5.QtCore", "QAbstractNativeEventFilter")
@:native("QAbstractNativeEventFilter")
extern class QAbstractNativeEventFilter {
	@:overload(function():QAbstractNativeEventFilter {})
	function new(?v:QAbstractNativeEventFilter);

	function nativeEventFilter(eventType:QByteArray, message:Void, result:Int):Bool;
}

