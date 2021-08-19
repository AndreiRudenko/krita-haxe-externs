package pyqt5.qtgui;

import pyqt5.qtgui.QBitmap;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QPoint;
import pyqt5.qtgui.QScreen;

@:pythonImport("PyQt5.QtGui", "QCursor")
@:native("QCursor")
extern class QCursor {
	@:overload(function(screen:QScreen):QPoint {})
	static function pos():QPoint;
	@:overload(function(p:QPoint):Void {})
	@:overload(function(screen:QScreen, x:Int, y:Int):Void {})
	@:overload(function(screen:QScreen, p:QPoint):Void {})
	static function setPos(x:Int, y:Int):Void;

	@:overload(function():QCursor {})
	@:overload(function(bitmap:QBitmap, mask:QBitmap, ?hotX:Int, ?hotY:Int):QCursor {})
	@:overload(function(pixmap:QPixmap, ?hotX:Int, ?hotY:Int):QCursor {})
	@:overload(function(cursor:QCursor):QCursor {})
	function new(variant:QVariant);

	function shape():QtCursorShape;
	function setShape(newShape:QtCursorShape):Void;
	function bitmap():QBitmap;
	function mask():QBitmap;
	function pixmap():QPixmap;
	function hotSpot():QPoint;
	function swap(other:QCursor):Void;
}

