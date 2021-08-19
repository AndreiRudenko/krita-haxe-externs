package pyqt5.qtwidgets;

import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QTreeWidget;

typedef QTreeWidgetItemIteratorIteratorFlags = QFlags<QTreeWidgetItemIteratorIteratorFlag>;

@:pythonImport("PyQt5.QtWidgets", "QTreeWidgetItemIterator")
@:native("QTreeWidgetItemIterator")
extern class QTreeWidgetItemIterator {
	@:overload(function(it:QTreeWidgetItemIterator):QTreeWidgetItemIterator {})
	@:overload(function(widget:QTreeWidget, ?flags:QFlags<QTreeWidgetItemIteratorIteratorFlag>):QTreeWidgetItemIterator {})
	function new(item:QTreeWidgetItem, ?flags:QFlags<QTreeWidgetItemIteratorIteratorFlag>);

	function value():QTreeWidgetItem;
}

@:pythonImport("PyQt5.QtWidgets", "QTreeWidgetItemIterator")
@:native("QTreeWidgetItemIterator")
extern enum abstract QTreeWidgetItemIteratorIteratorFlag(Int) from Int to Int {
	var All;
	var Hidden;
	var NotHidden;
	var Selected;
	var Unselected;
	var Selectable;
	var NotSelectable;
	var DragEnabled;
	var DragDisabled;
	var DropEnabled;
	var DropDisabled;
	var HasChildren;
	var NoChildren;
	var Checked;
	var NotChecked;
	var Enabled;
	var Disabled;
	var Editable;
	var NotEditable;
	var UserFlag;
}

