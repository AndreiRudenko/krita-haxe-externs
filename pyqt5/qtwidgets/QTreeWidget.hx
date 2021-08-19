package pyqt5.qtwidgets;

import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QIcon;
import pyqt5.qtgui.QFont;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QDataStream;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QList;
import pyqt5.qtgui.QBrush;
import pyqt5.qtwidgets.QTreeView;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QItemSelectionModel;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QRect;
import pyqt5.qtwidgets.QAbstractItemView;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QTreeWidgetItem")
@:native("QTreeWidgetItem")
extern class QTreeWidgetItem {
	@:overload(function(?type:Int):QTreeWidgetItem {})
	@:overload(function(strings:QStringList, ?type:Int):QTreeWidgetItem {})
	@:overload(function(parent:QTreeWidget, ?type:Int):QTreeWidgetItem {})
	@:overload(function(parent:QTreeWidget, strings:QStringList, ?type:Int):QTreeWidgetItem {})
	@:overload(function(parent:QTreeWidget, preceding:QTreeWidgetItem, ?type:Int):QTreeWidgetItem {})
	@:overload(function(parent:QTreeWidgetItem, ?type:Int):QTreeWidgetItem {})
	@:overload(function(parent:QTreeWidgetItem, strings:QStringList, ?type:Int):QTreeWidgetItem {})
	@:overload(function(parent:QTreeWidgetItem, preceding:QTreeWidgetItem, ?type:Int):QTreeWidgetItem {})
	function new(other:QTreeWidgetItem);

	function clone():QTreeWidgetItem;
	function treeWidget():QTreeWidget;
	function flags():QtItemFlags;
	function text(column:Int):QString;
	function icon(column:Int):QIcon;
	function statusTip(column:Int):QString;
	function toolTip(column:Int):QString;
	function whatsThis(column:Int):QString;
	function font(column:Int):QFont;
	function textAlignment(column:Int):Int;
	function setTextAlignment(column:Int, alignment:Int):Void;
	function checkState(column:Int):QtCheckState;
	function setCheckState(column:Int, state:QtCheckState):Void;
	function data(column:Int, role:Int):QVariant;
	function setData(column:Int, role:Int, value:QVariant):Void;
	function read(in_:QDataStream):Void;
	function write(out:QDataStream):Void;
	function parent():QTreeWidgetItem;
	function child(index:Int):QTreeWidgetItem;
	function childCount():Int;
	function columnCount():Int;
	function addChild(child:QTreeWidgetItem):Void;
	function insertChild(index:Int, child:QTreeWidgetItem):Void;
	function takeChild(index:Int):QTreeWidgetItem;
	function type():Int;
	function setFlags(aflags:QtItemFlags):Void;
	function setText(column:Int, atext:QString):Void;
	function setIcon(column:Int, aicon:QIcon):Void;
	function setStatusTip(column:Int, astatusTip:QString):Void;
	function setToolTip(column:Int, atoolTip:QString):Void;
	function setWhatsThis(column:Int, awhatsThis:QString):Void;
	function setFont(column:Int, afont:QFont):Void;
	function indexOfChild(achild:QTreeWidgetItem):Int;
	function sizeHint(column:Int):QSize;
	function setSizeHint(column:Int, size:QSize):Void;
	function addChildren(children:QList<QTreeWidgetItem>):Void;
	function insertChildren(index:Int, children:QList<QTreeWidgetItem>):Void;
	function takeChildren():QList<QTreeWidgetItem>;
	function background(column:Int):QBrush;
	function setBackground(column:Int, brush:QBrush):Void;
	function foreground(column:Int):QBrush;
	function setForeground(column:Int, brush:QBrush):Void;
	function sortChildren(column:Int, order:QtSortOrder):Void;
	function setSelected(aselect:Bool):Void;
	function isSelected():Bool;
	function setHidden(ahide:Bool):Void;
	function isHidden():Bool;
	function setExpanded(aexpand:Bool):Void;
	function isExpanded():Bool;
	function setChildIndicatorPolicy(policy:QTreeWidgetItemChildIndicatorPolicy):Void;
	function childIndicatorPolicy():QTreeWidgetItemChildIndicatorPolicy;
	function removeChild(child:QTreeWidgetItem):Void;
	function setFirstColumnSpanned(aspan:Bool):Void;
	function isFirstColumnSpanned():Bool;
	function setDisabled(disabled:Bool):Void;
	function isDisabled():Bool;
	function emitDataChanged():Void;
}

@:pythonImport("PyQt5.QtWidgets", "QTreeWidgetItem")
@:native("QTreeWidgetItem")
extern enum abstract QTreeWidgetItemItemType(Int) from Int to Int {
	var Type;
	var UserType;
}

@:pythonImport("PyQt5.QtWidgets", "QTreeWidgetItem")
@:native("QTreeWidgetItem")
extern enum abstract QTreeWidgetItemChildIndicatorPolicy(Int) from Int to Int {
	var ShowIndicator;
	var DontShowIndicator;
	var DontShowIndicatorWhenChildless;
}

@:pythonImport("PyQt5.QtWidgets", "QTreeWidget")
@:native("QTreeWidget")
extern class QTreeWidget extends QTreeView {
	var itemPressed:QSignal2<QTreeWidgetItem, Int>;
	var itemClicked:QSignal2<QTreeWidgetItem, Int>;
	var itemDoubleClicked:QSignal2<QTreeWidgetItem, Int>;
	var itemActivated:QSignal2<QTreeWidgetItem, Int>;
	var itemEntered:QSignal2<QTreeWidgetItem, Int>;
	var itemChanged:QSignal2<QTreeWidgetItem, Int>;
	var itemExpanded:QSignal1<QTreeWidgetItem>;
	var itemCollapsed:QSignal1<QTreeWidgetItem>;
	var currentItemChanged:QSignal2<QTreeWidgetItem, QTreeWidgetItem>;
	var itemSelectionChanged:QSignal0;

	function new(?parent:QWidget);

	function columnCount():Int;
	function setColumnCount(columns:Int):Void;
	function topLevelItem(index:Int):QTreeWidgetItem;
	function topLevelItemCount():Int;
	function insertTopLevelItem(index:Int, item:QTreeWidgetItem):Void;
	function addTopLevelItem(item:QTreeWidgetItem):Void;
	function takeTopLevelItem(index:Int):QTreeWidgetItem;
	function indexOfTopLevelItem(item:QTreeWidgetItem):Int;
	function insertTopLevelItems(index:Int, items:QList<QTreeWidgetItem>):Void;
	function addTopLevelItems(items:QList<QTreeWidgetItem>):Void;
	function headerItem():QTreeWidgetItem;
	function setHeaderItem(item:QTreeWidgetItem):Void;
	function setHeaderLabels(labels:QStringList):Void;
	function currentItem():QTreeWidgetItem;
	function currentColumn():Int;
	@:overload(function(item:QTreeWidgetItem, column:Int):Void {})
	@:overload(function(item:QTreeWidgetItem, column:Int, command:QItemSelectionModelSelectionFlags):Void {})
	function setCurrentItem(item:QTreeWidgetItem):Void;
	@:overload(function(ax:Int, ay:Int):QTreeWidgetItem {})
	function itemAt(p:QPoint):QTreeWidgetItem;
	function visualItemRect(item:QTreeWidgetItem):QRect;
	function sortColumn():Int;
	function sortItems(column:Int, order:QtSortOrder):Void;
	function editItem(item:QTreeWidgetItem, ?column:Int):Void;
	function openPersistentEditor(item:QTreeWidgetItem, ?column:Int):Void;
	function closePersistentEditor(item:QTreeWidgetItem, ?column:Int):Void;
	function itemWidget(item:QTreeWidgetItem, column:Int):QWidget;
	function setItemWidget(item:QTreeWidgetItem, column:Int, widget:QWidget):Void;
	function selectedItems():QList<QTreeWidgetItem>;
	function findItems(text:QString, flags:QtMatchFlags, ?column:Int):QList<QTreeWidgetItem>;
	function scrollToItem(item:QTreeWidgetItem, ?hint:QAbstractItemViewScrollHint):Void;
	function expandItem(item:QTreeWidgetItem):Void;
	function collapseItem(item:QTreeWidgetItem):Void;
	function clear():Void;
	function mimeTypes():QStringList;
	function mimeData(items:QList<QTreeWidgetItem>):QMimeData;
	function dropMimeData(parent:QTreeWidgetItem, index:Int, data:QMimeData, action:QtDropAction):Bool;
	function supportedDropActions():QtDropActions;
	function indexFromItem(item:QTreeWidgetItem, ?column:Int):QModelIndex;
	function itemFromIndex(index:QModelIndex):QTreeWidgetItem;
	function event(e:QEvent):Bool;
	function dropEvent(event:QDropEvent):Void;
	function invisibleRootItem():QTreeWidgetItem;
	function setHeaderLabel(alabel:QString):Void;
	function isFirstItemColumnSpanned(item:QTreeWidgetItem):Bool;
	function setFirstItemColumnSpanned(item:QTreeWidgetItem, span:Bool):Void;
	function itemAbove(item:QTreeWidgetItem):QTreeWidgetItem;
	function itemBelow(item:QTreeWidgetItem):QTreeWidgetItem;
	function removeItemWidget(item:QTreeWidgetItem, column:Int):Void;
	function setSelectionModel(selectionModel:QItemSelectionModel):Void;
	function isPersistentEditorOpen(item:QTreeWidgetItem, ?column:Int):Bool;
}

