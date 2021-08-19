package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtwidgets.QAction;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtWidgets", "QActionGroup")
@:native("QActionGroup")
extern class QActionGroup extends QObject {
	var triggered:QSignal1<QAction>;
	var hovered:QSignal1<QAction>;

	@:overload(function(parent:QObject):QActionGroup {})
	function new(?v:QActionGroup);

	@:overload(function(text:QString):QAction {})
	@:overload(function(icon:QIcon, text:QString):QAction {})
	function addAction(a:QAction):QAction;
	function removeAction(a:QAction):Void;
	function actions():QList<QAction>;
	function checkedAction():QAction;
	function isExclusive():Bool;
	function isEnabled():Bool;
	function isVisible():Bool;
	function setEnabled(?v:Bool):Void;
	function setDisabled(b:Bool):Void;
	function setVisible(?v:Bool):Void;
	function setExclusive(?v:Bool):Void;
	function exclusionPolicy():QActionGroupExclusionPolicy;
	function setExclusionPolicy(policy:QActionGroupExclusionPolicy):Void;
}

@:pythonImport("PyQt5.QtWidgets", "ExclusionPolicy")
@:native("QActionGroup.ExclusionPolicy")
extern enum abstract QActionGroupExclusionPolicy(Int) from Int to Int {
	var None;
	var Exclusive;
	var ExclusiveOptional;
}

