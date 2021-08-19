package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractItemDelegate;
import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QPainter;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QSize;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtwidgets.QItemEditorFactory;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtWidgets", "QItemDelegate")
@:native("QItemDelegate")
extern class QItemDelegate extends QAbstractItemDelegate {
	function new(?parent:QObject);

	function paint(painter:QPainter, option:QStyleOptionViewItem, index:QModelIndex):Void;
	function sizeHint(option:QStyleOptionViewItem, index:QModelIndex):QSize;
	function createEditor(parent:QWidget, option:QStyleOptionViewItem, index:QModelIndex):QWidget;
	function setEditorData(editor:QWidget, index:QModelIndex):Void;
	function setModelData(editor:QWidget, model:QAbstractItemModel, index:QModelIndex):Void;
	function updateEditorGeometry(editor:QWidget, option:QStyleOptionViewItem, index:QModelIndex):Void;
	function itemEditorFactory():QItemEditorFactory;
	function setItemEditorFactory(factory:QItemEditorFactory):Void;
	function hasClipping():Bool;
	function setClipping(clip:Bool):Void;
	function drawBackground(painter:QPainter, option:QStyleOptionViewItem, index:QModelIndex):Void;
	function drawCheck(painter:QPainter, option:QStyleOptionViewItem, rect:QRect, state:QtCheckState):Void;
	function drawDecoration(painter:QPainter, option:QStyleOptionViewItem, rect:QRect, pixmap:QPixmap):Void;
	function drawDisplay(painter:QPainter, option:QStyleOptionViewItem, rect:QRect, text:QString):Void;
	function drawFocus(painter:QPainter, option:QStyleOptionViewItem, rect:QRect):Void;
	function eventFilter(object:QObject, event:QEvent):Bool;
	function editorEvent(event:QEvent, model:QAbstractItemModel, option:QStyleOptionViewItem, index:QModelIndex):Bool;
}

