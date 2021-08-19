package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QRect;
import pyqt5.qtwidgets.QLayoutItem;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QMargins;
import pyqt5.qtwidgets.QSizePolicy;

@:pythonImport("PyQt5.QtWidgets", "QLayout")
@:native("QLayout")
extern class QLayout extends QObject {
	static function closestAcceptableSize(w:QWidget, s:QSize):QSize;

	@:overload(function(parent:QWidget):QLayout {})
	function new();

	function spacing():Int;
	function setSpacing(?v:Int):Void;
	@:overload(function(l:QLayout, alignment:QtAlignment):Bool {})
	@:overload(function(alignment:QtAlignment):Void {})
	function setAlignment(w:QWidget, alignment:QtAlignment):Bool;
	function setSizeConstraint(?v:QLayoutSizeConstraint):Void;
	function sizeConstraint():QLayoutSizeConstraint;
	function setMenuBar(w:QWidget):Void;
	function menuBar():QWidget;
	function parentWidget():QWidget;
	function invalidate():Void;
	function geometry():QRect;
	function activate():Bool;
	function update():Void;
	function addWidget(w:QWidget):Void;
	function addItem(?v:QLayoutItem):Void;
	function removeWidget(w:QWidget):Void;
	function removeItem(?v:QLayoutItem):Void;
	function expandingDirections():QtOrientations;
	function minimumSize():QSize;
	function maximumSize():QSize;
	function setGeometry(?v:QRect):Void;
	function itemAt(index:Int):QLayoutItem;
	function takeAt(index:Int):QLayoutItem;
	@:overload(function(?v:QLayoutItem):Int {})
	function indexOf(?v:QWidget):Int;
	function count():Int;
	function isEmpty():Bool;
	function totalHeightForWidth(w:Int):Int;
	function totalMinimumSize():QSize;
	function totalMaximumSize():QSize;
	function totalSizeHint():QSize;
	function layout():QLayout;
	function setEnabled(?v:Bool):Void;
	function isEnabled():Bool;
	function widgetEvent(?v:QEvent):Void;
	function childEvent(e:QChildEvent):Void;
	function addChildLayout(l:QLayout):Void;
	function addChildWidget(w:QWidget):Void;
	function alignmentRect(?v:QRect):QRect;
	@:overload(function(margins:QMargins):Void {})
	function setContentsMargins(left:Int, top:Int, right:Int, bottom:Int):Void;
	function getContentsMargins(left:Int, top:Int, right:Int, bottom:Int):Void;
	function contentsRect():QRect;
	function contentsMargins():QMargins;
	function controlTypes():QSizePolicyControlTypes;
	function replaceWidget(from:QWidget, to:QWidget, ?options:QtFindChildOptions):QLayoutItem;
}

@:pythonImport("PyQt5.QtWidgets", "SizeConstraint")
@:native("QLayout.SizeConstraint")
extern enum abstract QLayoutSizeConstraint(Int) from Int to Int {
	var SetDefaultConstraint;
	var SetNoConstraint;
	var SetMinimumSize;
	var SetFixedSize;
	var SetMaximumSize;
	var SetMinAndMaxSize;
}

