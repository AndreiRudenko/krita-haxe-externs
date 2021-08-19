package pyqt5.qtwidgets;

import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QRect;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtwidgets.QLayout;
import pyqt5.qtwidgets.QSizePolicy;

@:pythonImport("PyQt5.QtWidgets", "QLayoutItem")
@:native("QLayoutItem")
extern class QLayoutItem {
	function new(?alignment:QtAlignment);

	function sizeHint():QSize;
	function minimumSize():QSize;
	function maximumSize():QSize;
	function expandingDirections():QtOrientations;
	function setGeometry(?v:QRect):Void;
	function geometry():QRect;
	function isEmpty():Bool;
	function hasHeightForWidth():Bool;
	function heightForWidth(?v:Int):Int;
	function minimumHeightForWidth(?v:Int):Int;
	function invalidate():Void;
	function widget():QWidget;
	function layout():QLayout;
	function spacerItem():QSpacerItem;
	function alignment():QtAlignment;
	function setAlignment(a:QtAlignment):Void;
	function controlTypes():QSizePolicyControlTypes;
}

@:pythonImport("PyQt5.QtWidgets", "QSpacerItem")
@:native("QSpacerItem")
extern class QSpacerItem extends QLayoutItem {
	function new(w:Int, h:Int, ?hPolicy:QSizePolicyPolicy, ?vPolicy:QSizePolicyPolicy);

	function changeSize(w:Int, h:Int, ?hPolicy:QSizePolicyPolicy, ?vPolicy:QSizePolicyPolicy):Void;
	function sizeHint():QSize;
	function minimumSize():QSize;
	function maximumSize():QSize;
	function expandingDirections():QtOrientations;
	function isEmpty():Bool;
	function setGeometry(?v:QRect):Void;
	function geometry():QRect;
	function spacerItem():QSpacerItem;
	function sizePolicy():QSizePolicy;
}

@:pythonImport("PyQt5.QtWidgets", "QWidgetItem")
@:native("QWidgetItem")
extern class QWidgetItem extends QLayoutItem {
	@:overload(function(w:QWidget):QWidgetItem {})
	function new(?v:QWidgetItem);

	function sizeHint():QSize;
	function minimumSize():QSize;
	function maximumSize():QSize;
	function expandingDirections():QtOrientations;
	function isEmpty():Bool;
	function setGeometry(?v:QRect):Void;
	function geometry():QRect;
	function widget():QWidget;
	function hasHeightForWidth():Bool;
	function heightForWidth(?v:Int):Int;
	function controlTypes():QSizePolicyControlTypes;
}

