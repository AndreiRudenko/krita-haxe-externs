package pyqt5.qtgui;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QChar;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtGui", "QStyleHints")
@:native("QStyleHints")
extern class QStyleHints extends QObject {
	var cursorFlashTimeChanged:QSignal1<Int>;
	var keyboardInputIntervalChanged:QSignal1<Int>;
	var mouseDoubleClickIntervalChanged:QSignal1<Int>;
	var startDragDistanceChanged:QSignal1<Int>;
	var startDragTimeChanged:QSignal1<Int>;
	var mousePressAndHoldIntervalChanged:QSignal1<Int>;
	var tabFocusBehaviorChanged:QSignal1<QtTabFocusBehavior>;
	var useHoverEffectsChanged:QSignal1<Bool>;
	var wheelScrollLinesChanged:QSignal1<Int>;
	var mouseQuickSelectionThresholdChanged:QSignal1<Int>;
	var showShortcutsInContextMenusChanged:QSignal1<Bool>;

	function new();

	function mouseDoubleClickInterval():Int;
	function startDragDistance():Int;
	function startDragTime():Int;
	function startDragVelocity():Int;
	function keyboardInputInterval():Int;
	function keyboardAutoRepeatRate():Int;
	function cursorFlashTime():Int;
	function showIsFullScreen():Bool;
	function passwordMaskDelay():Int;
	function fontSmoothingGamma():Float;
	function useRtlExtensions():Bool;
	function passwordMaskCharacter():QChar;
	function setFocusOnTouchRelease():Bool;
	function mousePressAndHoldInterval():Int;
	function tabFocusBehavior():QtTabFocusBehavior;
	function singleClickActivation():Bool;
	function showIsMaximized():Bool;
	function useHoverEffects():Bool;
	function setUseHoverEffects(useHoverEffects:Bool):Void;
	function wheelScrollLines():Int;
	function showShortcutsInContextMenus():Bool;
	function mouseQuickSelectionThreshold():Int;
	function setShowShortcutsInContextMenus(showShortcutsInContextMenus:Bool):Void;
	function mouseDoubleClickDistance():Int;
	function touchDoubleTapDistance():Int;
}

