package pyqt5.qtcore;

import pyqt5.qtcore.QAbstractAnimation;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtCore", "QAnimationGroup")
@:native("QAnimationGroup")
extern class QAnimationGroup extends QAbstractAnimation {
	function new(?parent:QObject);

	function animationAt(index:Int):QAbstractAnimation;
	function animationCount():Int;
	function indexOfAnimation(animation:QAbstractAnimation):Int;
	function addAnimation(animation:QAbstractAnimation):Void;
	function insertAnimation(index:Int, animation:QAbstractAnimation):Void;
	function removeAnimation(animation:QAbstractAnimation):Void;
	function takeAnimation(index:Int):QAbstractAnimation;
	function clear():Void;
	function event(event:QEvent):Bool;
}

