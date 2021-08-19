package pyqt5.qtgui;


@:pythonImport("PyQt5.QtGui", "QRgba64")
@:native("QRgba64")
extern class QRgba64 {
	@:overload(function(red:UInt, green:UInt, blue:UInt, alpha:UInt):QRgba64 {})
	static function fromRgba64(c:UInt):QRgba64;
	static function fromRgba(red:UInt, green:UInt, blue:UInt, alpha:UInt):QRgba64;
	static function fromArgb32(rgb:UInt):QRgba64;

	function new();

	function isOpaque():Bool;
	function isTransparent():Bool;
	function red():UInt;
	function green():UInt;
	function blue():UInt;
	function alpha():UInt;
	function setRed(_red:UInt):Void;
	function setGreen(_green:UInt):Void;
	function setBlue(_blue:UInt):Void;
	function setAlpha(_alpha:UInt):Void;
	function red8():UInt;
	function green8():UInt;
	function blue8():UInt;
	function alpha8():UInt;
	function toArgb32():UInt;
	function toRgb16():UInt;
	function premultiplied():QRgba64;
	function unpremultiplied():QRgba64;
}

