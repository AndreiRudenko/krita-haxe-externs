package pyqt5.qtgui;

import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QTransform;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QLocale;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtGui", "QInputMethod")
@:native("QInputMethod")
extern class QInputMethod extends QObject {
	static function queryFocusObject(query:QtInputMethodQuery, argument:QVariant):QVariant;

	var cursorRectangleChanged:QSignal0;
	var keyboardRectangleChanged:QSignal0;
	var visibleChanged:QSignal0;
	var animatingChanged:QSignal0;
	var localeChanged:QSignal0;
	var inputDirectionChanged:QSignal1<QtLayoutDirection>;
	var anchorRectangleChanged:QSignal0;
	var inputItemClipRectangleChanged:QSignal0;

	function new();

	function inputItemTransform():QTransform;
	function setInputItemTransform(transform:QTransform):Void;
	function cursorRectangle():QRectF;
	function keyboardRectangle():QRectF;
	function isVisible():Bool;
	function setVisible(visible:Bool):Void;
	function isAnimating():Bool;
	function locale():QLocale;
	function inputDirection():QtLayoutDirection;
	function inputItemRectangle():QRectF;
	function setInputItemRectangle(rect:QRectF):Void;
	function show():Void;
	function hide():Void;
	function update(queries:QtInputMethodQueries):Void;
	function reset():Void;
	function commit():Void;
	function invokeAction(a:QInputMethodAction, cursorPosition:Int):Void;
	function anchorRectangle():QRectF;
	function inputItemClipRectangle():QRectF;
}

@:pythonImport("PyQt5.QtGui", "QInputMethod")
@:native("QInputMethod")
extern enum abstract QInputMethodAction(Int) from Int to Int {
	var Click;
	var ContextMenu;
}

