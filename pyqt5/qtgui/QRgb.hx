package pyqt5.qtgui;

@:pythonImport("PyQt5.QtGui", "QRgb")
@:native("QRgb")
extern class QRgb {
	function qRed(rgb:QRgb):Int;
	function qGreen(rgb:QRgb):Int;
	function qBlue(rgb:QRgb):Int;
	function qAlpha(rgb:QRgb):Int;
	function qRgb(r:Int, g:Int, b:Int):QRgb;
	function qRgba(r:Int, g:Int, b:Int, a:Int):QRgb;
	@:overload(function(r:Int, g:Int, b:Int):Int {})
	function qGray(rgb:QRgb):Int;
	function qIsGray(rgb:QRgb):Bool;
}
