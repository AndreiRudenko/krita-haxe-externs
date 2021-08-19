package pyqt5.qtgui;

import pyqt5.qtgui.QPixmap;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QIconEngine;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QWindow;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QStringList;

@:pythonImport("PyQt5.QtGui", "QIcon")
@:native("QIcon")
extern class QIcon {
	@:overload(function(name:QString, fallback:QIcon):QIcon {})
	static function fromTheme(name:QString):QIcon;
	static function hasThemeIcon(name:QString):Bool;
	static function themeSearchPaths():QStringList;
	static function setThemeSearchPaths(searchpath:QStringList):Void;
	static function themeName():QString;
	static function setThemeName(path:QString):Void;
	static function fallbackSearchPaths():QStringList;
	static function setFallbackSearchPaths(paths:QStringList):Void;
	static function fallbackThemeName():QString;
	static function setFallbackThemeName(name:QString):Void;

	@:overload(function():QIcon {})
	@:overload(function(pixmap:QPixmap):QIcon {})
	@:overload(function(other:QIcon):QIcon {})
	@:overload(function(fileName:QString):QIcon {})
	@:overload(function(engine:QIconEngine):QIcon {})
	function new(variant:QVariant);

	@:overload(function(w:Int, h:Int, ?mode:QIconMode, ?state:QIconState):QPixmap {})
	@:overload(function(extent:Int, ?mode:QIconMode, ?state:QIconState):QPixmap {})
	@:overload(function(window:QWindow, size:QSize, ?mode:QIconMode, ?state:QIconState):QPixmap {})
	function pixmap(size:QSize, ?mode:QIconMode, ?state:QIconState):QPixmap;
	@:overload(function(window:QWindow, size:QSize, ?mode:QIconMode, ?state:QIconState):QSize {})
	function actualSize(size:QSize, ?mode:QIconMode, ?state:QIconState):QSize;
	function availableSizes(?mode:QIconMode, ?state:QIconState):QList<QSize>;
	@:overload(function(painter:QPainter, x:Int, y:Int, w:Int, h:Int, ?alignment:QtAlignment, ?mode:QIconMode, ?state:QIconState):Void {})
	function paint(painter:QPainter, rect:QRect, ?alignment:QtAlignment, ?mode:QIconMode, ?state:QIconState):Void;
	function isNull():Bool;
	function isDetached():Bool;
	function addPixmap(pixmap:QPixmap, ?mode:QIconMode, ?state:QIconState):Void;
	function addFile(fileName:QString, ?size:QSize, ?mode:QIconMode, ?state:QIconState):Void;
	function cacheKey():Int;
	function name():QString;
	function swap(other:QIcon):Void;
	function setIsMask(isMask:Bool):Void;
	function isMask():Bool;
}

@:pythonImport("PyQt5.QtGui", "QIcon")
@:native("QIcon")
extern enum abstract QIconMode(Int) from Int to Int {
	var Normal;
	var Disabled;
	var Active;
	var Selected;
}

@:pythonImport("PyQt5.QtGui", "QIcon")
@:native("QIcon")
extern enum abstract QIconState(Int) from Int to Int {
	var On;
	var Off;
}

