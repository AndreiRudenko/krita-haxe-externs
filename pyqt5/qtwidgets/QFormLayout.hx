package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QLayout;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QString;
import pyqt5.qtwidgets.QLayoutItem;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QSize;

@:pythonImport("PyQt5.QtWidgets", "QFormLayout")
@:native("QFormLayout")
extern class QFormLayout extends QLayout {
	function new(?parent:QWidget);

	function setFieldGrowthPolicy(policy:QFormLayoutFieldGrowthPolicy):Void;
	function fieldGrowthPolicy():QFormLayoutFieldGrowthPolicy;
	function setRowWrapPolicy(policy:QFormLayoutRowWrapPolicy):Void;
	function rowWrapPolicy():QFormLayoutRowWrapPolicy;
	function setLabelAlignment(alignment:QtAlignment):Void;
	function labelAlignment():QtAlignment;
	function setFormAlignment(alignment:QtAlignment):Void;
	function formAlignment():QtAlignment;
	function setHorizontalSpacing(spacing:Int):Void;
	function horizontalSpacing():Int;
	function setVerticalSpacing(spacing:Int):Void;
	function verticalSpacing():Int;
	function spacing():Int;
	function setSpacing(?v:Int):Void;
	@:overload(function(label:QWidget, field:QLayout):Void {})
	@:overload(function(labelText:QString, field:QWidget):Void {})
	@:overload(function(labelText:QString, field:QLayout):Void {})
	@:overload(function(widget:QWidget):Void {})
	@:overload(function(layout:QLayout):Void {})
	function addRow(label:QWidget, field:QWidget):Void;
	@:overload(function(row:Int, label:QWidget, field:QLayout):Void {})
	@:overload(function(row:Int, labelText:QString, field:QWidget):Void {})
	@:overload(function(row:Int, labelText:QString, field:QLayout):Void {})
	@:overload(function(row:Int, widget:QWidget):Void {})
	@:overload(function(row:Int, layout:QLayout):Void {})
	function insertRow(row:Int, label:QWidget, field:QWidget):Void;
	function setItem(row:Int, role:QFormLayoutItemRole, item:QLayoutItem):Void;
	function setWidget(row:Int, role:QFormLayoutItemRole, widget:QWidget):Void;
	function setLayout(row:Int, role:QFormLayoutItemRole, layout:QLayout):Void;
	@:overload(function(index:Int):QLayoutItem {})
	function itemAt(row:Int, role:QFormLayoutItemRole):QLayoutItem;
	function getItemPosition(index:Int, rowPtr:Int, rolePtr:QFormLayoutItemRole):Void;
	function getWidgetPosition(widget:QWidget, rowPtr:Int, rolePtr:QFormLayoutItemRole):Void;
	function getLayoutPosition(layout:QLayout, rowPtr:Int, rolePtr:QFormLayoutItemRole):Void;
	@:overload(function(field:QLayout):QWidget {})
	function labelForField(field:QWidget):QWidget;
	function addItem(item:QLayoutItem):Void;
	function takeAt(index:Int):QLayoutItem;
	function setGeometry(rect:QRect):Void;
	function minimumSize():QSize;
	function sizeHint():QSize;
	function invalidate():Void;
	function hasHeightForWidth():Bool;
	function heightForWidth(width:Int):Int;
	function expandingDirections():QtOrientations;
	function count():Int;
	function rowCount():Int;
	@:overload(function(widget:QWidget):Void {})
	@:overload(function(layout:QLayout):Void {})
	function removeRow(row:Int):Void;
	@:overload(function(widget:QWidget):TakeRowResult {})
	@:overload(function(layout:QLayout):TakeRowResult {})
	function takeRow(row:Int):TakeRowResult;
}

@:pythonImport("PyQt5.QtWidgets", "FieldGrowthPolicy")
@:native("QFormLayout.FieldGrowthPolicy")
extern enum abstract QFormLayoutFieldGrowthPolicy(Int) from Int to Int {
	var FieldsStayAtSizeHint;
	var ExpandingFieldsGrow;
	var AllNonFixedFieldsGrow;
}

@:pythonImport("PyQt5.QtWidgets", "RowWrapPolicy")
@:native("QFormLayout.RowWrapPolicy")
extern enum abstract QFormLayoutRowWrapPolicy(Int) from Int to Int {
	var DontWrapRows;
	var WrapLongRows;
	var WrapAllRows;
}

@:pythonImport("PyQt5.QtWidgets", "ItemRole")
@:native("QFormLayout.ItemRole")
extern enum abstract QFormLayoutItemRole(Int) from Int to Int {
	var LabelRole;
	var FieldRole;
	var SpanningRole;
}

@:pythonImport("PyQt5.QtWidgets", "TakeRowResult")
@:native("TakeRowResult")
extern class TakeRowResult {
}

