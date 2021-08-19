package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtwidgets.QAbstractButton;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtWidgets", "QButtonGroup")
@:native("QButtonGroup")
extern class QButtonGroup extends QObject {
	var buttonClicked:QSignal1<Int>;
	var buttonPressed:QSignal1<Int>;
	var buttonReleased:QSignal1<Int>;
	var buttonToggled:QSignal2<Int, Bool>;
	var idClicked:QSignal1<Int>;
	var idPressed:QSignal1<Int>;
	var idReleased:QSignal1<Int>;
	var idToggled:QSignal2<Int, Bool>;

	function new(?parent:QObject);

	function setExclusive(?v:Bool):Void;
	function exclusive():Bool;
	function addButton(?v:QAbstractButton, ?id:Int):Void;
	function removeButton(?v:QAbstractButton):Void;
	function buttons():QList<QAbstractButton>;
	function button(id:Int):QAbstractButton;
	function checkedButton():QAbstractButton;
	function setId(button:QAbstractButton, id:Int):Void;
	function id(button:QAbstractButton):Int;
	function checkedId():Int;
}

