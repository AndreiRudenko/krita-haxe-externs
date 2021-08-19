package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QListView;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtwidgets.QUndoStack;
import pyqt5.qtwidgets.QUndoGroup;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QIcon;

@:pythonImport("PyQt5.QtWidgets", "QUndoView")
@:native("QUndoView")
extern class QUndoView extends QListView {
	@:overload(function(?parent:QWidget):QUndoView {})
	@:overload(function(stack:QUndoStack, ?parent:QWidget):QUndoView {})
	function new(group:QUndoGroup, ?parent:QWidget);

	function stack():QUndoStack;
	function group():QUndoGroup;
	function setEmptyLabel(label:QString):Void;
	function emptyLabel():QString;
	function setCleanIcon(icon:QIcon):Void;
	function cleanIcon():QIcon;
	function setStack(stack:QUndoStack):Void;
	function setGroup(group:QUndoGroup):Void;
}

