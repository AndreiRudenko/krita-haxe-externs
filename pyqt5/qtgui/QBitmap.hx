package pyqt5.qtgui;

import pyqt5.qtgui.QPixmap;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QVariant;
import pyqt5.qtgui.QImage;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QTransform;

@:pythonImport("PyQt5.QtGui", "QBitmap")
@:native("QBitmap")
extern class QBitmap extends QPixmap {
	static function fromImage(image:QImage, ?flags:QtImageConversionFlags):QBitmap;
	static function fromData(size:QSize, bits:UInt, ?format:QImageFormat):QBitmap;

	@:overload(function():QBitmap {})
	@:overload(function(other:QBitmap):QBitmap {})
	@:overload(function(?v:QPixmap):QBitmap {})
	@:overload(function(w:Int, h:Int):QBitmap {})
	@:overload(function(?v:QSize):QBitmap {})
	@:overload(function(fileName:QString, ?format:Int):QBitmap {})
	function new(variant:QVariant);

	function clear():Void;
	function transformed(matrix:QTransform):QBitmap;
	function swap(other:QBitmap):Void;
}

