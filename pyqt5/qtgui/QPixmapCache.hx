package pyqt5.qtgui;

import pyqt5.qtcore.QString;
import pyqt5.qtgui.QPixmap;

@:pythonImport("PyQt5.QtGui", "QPixmapCache")
@:native("QPixmapCache")
extern class QPixmapCache {
	static function cacheLimit():Int;
	static function clear():Void;
	@:overload(function(key:Key):QPixmap {})
	static function find(key:QString):QPixmap;
	@:overload(function(pixmap:QPixmap):Key {})
	static function insert(key:QString, ?v:QPixmap):Bool;
	@:overload(function(key:Key):Void {})
	static function remove(key:QString):Void;
	static function replace(key:Key, pixmap:QPixmap):Bool;
	static function setCacheLimit(?v:Int):Void;
}

@:pythonImport("PyQt5.QtGui", "Key")
@:native("Key")
extern class Key {
	@:overload(function():Key {})
	function new(other:Key);

	function swap(other:Key):Void;
	function isValid():Bool;
}

