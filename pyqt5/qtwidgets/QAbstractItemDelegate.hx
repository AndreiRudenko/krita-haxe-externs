package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QPainter;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QSize;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtwidgets.QAbstractItemView;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtWidgets", "QAbstractItemDelegate")
@:native("QAbstractItemDelegate")
extern class QAbstractItemDelegate extends QObject {
	var commitData:QSignal1<QWidget>;
	var closeEditor:QSignal2<QWidget, QAbstractItemDelegateEndEditHint>;
	var sizeHintChanged:QSignal1<QModelIndex>;

	function new(?parent:QObject);

	function paint(painter:QPainter, option:QStyleOptionViewItem, index:QModelIndex):Void;
	function sizeHint(option:QStyleOptionViewItem, index:QModelIndex):QSize;
	function createEditor(parent:QWidget, option:QStyleOptionViewItem, index:QModelIndex):QWidget;
	function setEditorData(editor:QWidget, index:QModelIndex):Void;
	function setModelData(editor:QWidget, model:QAbstractItemModel, index:QModelIndex):Void;
	function updateEditorGeometry(editor:QWidget, option:QStyleOptionViewItem, index:QModelIndex):Void;
	function destroyEditor(editor:QWidget, index:QModelIndex):Void;
	function editorEvent(event:QEvent, model:QAbstractItemModel, option:QStyleOptionViewItem, index:QModelIndex):Bool;
	function helpEvent(event:QHelpEvent, view:QAbstractItemView, option:QStyleOptionViewItem, index:QModelIndex):Bool;
}

@:pythonImport("PyQt5.QtWidgets", "EndEditHint")
@:native("QAbstractItemDelegate.EndEditHint")
extern enum abstract QAbstractItemDelegateEndEditHint(Int) from Int to Int {
	var NoHint;
	var EditNextItem;
	var EditPreviousItem;
	var SubmitModelCache;
	var RevertModelCache;
}

