package pyqt5.qtgui;

import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.QRect;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QDataStream;
import pyqt5.qtcore.QList;

@:pythonImport("PyQt5.QtGui", "QIconEngine")
@:native("QIconEngine")
extern class QIconEngine {
	@:overload(function():QIconEngine {})
	function new(other:QIconEngine);

	function paint(painter:QPainter, rect:QRect, mode:QIconMode, state:QIconState):Void;
	function actualSize(size:QSize, mode:QIconMode, state:QIconState):QSize;
	function pixmap(size:QSize, mode:QIconMode, state:QIconState):QPixmap;
	function addPixmap(pixmap:QPixmap, mode:QIconMode, state:QIconState):Void;
	function addFile(fileName:QString, size:QSize, mode:QIconMode, state:QIconState):Void;
	function key():QString;
	function clone():QIconEngine;
	function read(in_:QDataStream):Bool;
	function write(out:QDataStream):Bool;
	function availableSizes(?mode:QIconMode, ?state:QIconState):QList<QSize>;
	function iconName():QString;
	function isNull():Bool;
	function scaledPixmap(size:QSize, mode:QIconMode, state:QIconState, scale:Float):QPixmap;
}

@:pythonImport("PyQt5.QtGui", "QIconEngine")
@:native("QIconEngine")
extern enum abstract QIconEngineIconEngineHook(Int) from Int to Int {
	var AvailableSizesHook;
	var IconNameHook;
	var IsNullHook;
	var ScaledPixmapHook;
}

@:pythonImport("PyQt5.QtGui", "AvailableSizesArgument")
@:native("AvailableSizesArgument")
extern class AvailableSizesArgument {
}

@:pythonImport("PyQt5.QtGui", "ScaledPixmapArgument")
@:native("ScaledPixmapArgument")
extern class ScaledPixmapArgument {
}

