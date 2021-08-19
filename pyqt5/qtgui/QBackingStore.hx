package pyqt5.qtgui;

import pyqt5.qtgui.QWindow;
import pyqt5.qtgui.QPaintDevice;
import pyqt5.qtgui.QRegion;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QSize;

@:pythonImport("PyQt5.QtGui", "QBackingStore")
@:native("QBackingStore")
extern class QBackingStore {
	function new(window:QWindow);

	function window():QWindow;
	function paintDevice():QPaintDevice;
	function flush(region:QRegion, ?window:QWindow, ?offset:QPoint):Void;
	function resize(size:QSize):Void;
	function size():QSize;
	function scroll(area:QRegion, dx:Int, dy:Int):Bool;
	function beginPaint(?v:QRegion):Void;
	function endPaint():Void;
	function setStaticContents(region:QRegion):Void;
	function staticContents():QRegion;
	function hasStaticContents():Bool;
}

