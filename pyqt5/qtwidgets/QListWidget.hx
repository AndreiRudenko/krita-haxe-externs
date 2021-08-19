package pyqt5.qtwidgets;

import pyqt5.qtcore.QString;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QFont;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QDataStream;
import pyqt5.qtgui.QBrush;
import pyqt5.qtwidgets.QListView;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QItemSelectionModel;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QList;
import pyqt5.qtwidgets.QAbstractItemView;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QListWidgetItem")
@:native("QListWidgetItem")
extern class QListWidgetItem {
	@:overload(function(?parent:QListWidget, ?type:Int):QListWidgetItem {})
	@:overload(function(text:QString, ?parent:QListWidget, ?type:Int):QListWidgetItem {})
	@:overload(function(icon:QIcon, text:QString, ?parent:QListWidget, ?type:Int):QListWidgetItem {})
	function new(other:QListWidgetItem);

	function clone():QListWidgetItem;
	function listWidget():QListWidget;
	function flags():QtItemFlags;
	function text():QString;
	function icon():QIcon;
	function statusTip():QString;
	function toolTip():QString;
	function whatsThis():QString;
	function font():QFont;
	function textAlignment():Int;
	function setTextAlignment(alignment:Int):Void;
	function checkState():QtCheckState;
	function setCheckState(state:QtCheckState):Void;
	function sizeHint():QSize;
	function setSizeHint(size:QSize):Void;
	function data(role:Int):QVariant;
	function setData(role:Int, value:QVariant):Void;
	function read(in_:QDataStream):Void;
	function write(out:QDataStream):Void;
	function type():Int;
	function setFlags(aflags:QtItemFlags):Void;
	function setText(atext:QString):Void;
	function setIcon(aicon:QIcon):Void;
	function setStatusTip(astatusTip:QString):Void;
	function setToolTip(atoolTip:QString):Void;
	function setWhatsThis(awhatsThis:QString):Void;
	function setFont(afont:QFont):Void;
	function background():QBrush;
	function setBackground(brush:QBrush):Void;
	function foreground():QBrush;
	function setForeground(brush:QBrush):Void;
	function setSelected(aselect:Bool):Void;
	function isSelected():Bool;
	function setHidden(ahide:Bool):Void;
	function isHidden():Bool;
}

@:pythonImport("PyQt5.QtWidgets", "ItemType")
@:native("QListWidgetItem.ItemType")
extern enum abstract QListWidgetItemItemType(Int) from Int to Int {
	var Type;
	var UserType;
}

@:pythonImport("PyQt5.QtWidgets", "QListWidget")
@:native("QListWidget")
extern class QListWidget extends QListView {
	var itemPressed:QSignal1<QListWidgetItem>;
	var itemClicked:QSignal1<QListWidgetItem>;
	var itemDoubleClicked:QSignal1<QListWidgetItem>;
	var itemActivated:QSignal1<QListWidgetItem>;
	var itemEntered:QSignal1<QListWidgetItem>;
	var itemChanged:QSignal1<QListWidgetItem>;
	var currentItemChanged:QSignal2<QListWidgetItem, QListWidgetItem>;
	var currentTextChanged:QSignal1<QString>;
	var currentRowChanged:QSignal1<Int>;
	var itemSelectionChanged:QSignal0;

	function new(?parent:QWidget);

	function item(row:Int):QListWidgetItem;
	function row(item:QListWidgetItem):Int;
	@:overload(function(row:Int, label:QString):Void {})
	function insertItem(row:Int, item:QListWidgetItem):Void;
	function insertItems(row:Int, labels:QStringList):Void;
	@:overload(function(label:QString):Void {})
	function addItem(aitem:QListWidgetItem):Void;
	function addItems(labels:QStringList):Void;
	function takeItem(row:Int):QListWidgetItem;
	function count():Int;
	function currentItem():QListWidgetItem;
	@:overload(function(item:QListWidgetItem, command:QItemSelectionModelSelectionFlags):Void {})
	function setCurrentItem(item:QListWidgetItem):Void;
	function currentRow():Int;
	@:overload(function(row:Int, command:QItemSelectionModelSelectionFlags):Void {})
	function setCurrentRow(row:Int):Void;
	@:overload(function(ax:Int, ay:Int):QListWidgetItem {})
	function itemAt(p:QPoint):QListWidgetItem;
	function itemWidget(item:QListWidgetItem):QWidget;
	function setItemWidget(item:QListWidgetItem, widget:QWidget):Void;
	function visualItemRect(item:QListWidgetItem):QRect;
	function sortItems(?order:QtSortOrder):Void;
	function editItem(item:QListWidgetItem):Void;
	function openPersistentEditor(item:QListWidgetItem):Void;
	function closePersistentEditor(item:QListWidgetItem):Void;
	function selectedItems():QList<QListWidgetItem>;
	function findItems(text:QString, flags:QtMatchFlags):QList<QListWidgetItem>;
	function clear():Void;
	function scrollToItem(item:QListWidgetItem, ?hint:QAbstractItemViewScrollHint):Void;
	function mimeTypes():QStringList;
	function mimeData(items:QList<QListWidgetItem>):QMimeData;
	function dropMimeData(index:Int, data:QMimeData, action:QtDropAction):Bool;
	function supportedDropActions():QtDropActions;
	function items(data:QMimeData):QList<QListWidgetItem>;
	function indexFromItem(item:QListWidgetItem):QModelIndex;
	function itemFromIndex(index:QModelIndex):QListWidgetItem;
	function event(e:QEvent):Bool;
	function setSortingEnabled(enable:Bool):Void;
	function isSortingEnabled():Bool;
	function dropEvent(event:QDropEvent):Void;
	function removeItemWidget(aItem:QListWidgetItem):Void;
	function setSelectionModel(selectionModel:QItemSelectionModel):Void;
	function isPersistentEditorOpen(item:QListWidgetItem):Bool;
}

