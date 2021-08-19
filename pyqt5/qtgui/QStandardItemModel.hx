package pyqt5.qtgui;

import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QMap;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QHash;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QFont;
import pyqt5.qtgui.QBrush;
import pyqt5.qtcore.QDataStream;

@:pythonImport("PyQt5.QtGui", "QStandardItemModel")
@:native("QStandardItemModel")
extern class QStandardItemModel extends QAbstractItemModel {
	var itemChanged:QSignal1<QStandardItem>;

	@:overload(function(?parent:QObject):QStandardItemModel {})
	function new(rows:Int, columns:Int, ?parent:QObject);

	function index(row:Int, column:Int, ?parent:QModelIndex):QModelIndex;
	@:overload(function():QObject {})
	function parent(child:QModelIndex):QModelIndex;
	function rowCount(?parent:QModelIndex):Int;
	function columnCount(?parent:QModelIndex):Int;
	function hasChildren(?parent:QModelIndex):Bool;
	function data(index:QModelIndex, ?role:Int):QVariant;
	function setData(index:QModelIndex, value:QVariant, ?role:Int):Bool;
	function headerData(section:Int, orientation:QtOrientation, ?role:Int):QVariant;
	function setHeaderData(section:Int, orientation:QtOrientation, value:QVariant, ?role:Int):Bool;
	function insertRows(row:Int, count:Int, ?parent:QModelIndex):Bool;
	function insertColumns(column:Int, count:Int, ?parent:QModelIndex):Bool;
	function removeRows(row:Int, count:Int, ?parent:QModelIndex):Bool;
	function removeColumns(column:Int, count:Int, ?parent:QModelIndex):Bool;
	function flags(index:QModelIndex):QtItemFlags;
	function clear():Void;
	function supportedDropActions():QtDropActions;
	function itemData(index:QModelIndex):QMap<Int, QVariant>;
	function setItemData(index:QModelIndex, roles:QMap<Int, QVariant>):Bool;
	function sort(column:Int, ?order:QtSortOrder):Void;
	function itemFromIndex(index:QModelIndex):QStandardItem;
	function indexFromItem(item:QStandardItem):QModelIndex;
	function item(row:Int, ?column:Int):QStandardItem;
	@:overload(function(arow:Int, aitem:QStandardItem):Void {})
	function setItem(row:Int, column:Int, item:QStandardItem):Void;
	function invisibleRootItem():QStandardItem;
	function horizontalHeaderItem(column:Int):QStandardItem;
	function setHorizontalHeaderItem(column:Int, item:QStandardItem):Void;
	function verticalHeaderItem(row:Int):QStandardItem;
	function setVerticalHeaderItem(row:Int, item:QStandardItem):Void;
	function setHorizontalHeaderLabels(labels:QStringList):Void;
	function setVerticalHeaderLabels(labels:QStringList):Void;
	function setRowCount(rows:Int):Void;
	function setColumnCount(columns:Int):Void;
	@:overload(function(aitem:QStandardItem):Void {})
	function appendRow(items:QList<QStandardItem>):Void;
	function appendColumn(items:QList<QStandardItem>):Void;
	@:overload(function(arow:Int, aitem:QStandardItem):Void {})
	@:overload(function(row:Int, ?parent:QModelIndex):Bool {})
	function insertRow(row:Int, items:QList<QStandardItem>):Void;
	@:overload(function(column:Int, ?parent:QModelIndex):Bool {})
	function insertColumn(column:Int, items:QList<QStandardItem>):Void;
	function takeItem(row:Int, ?column:Int):QStandardItem;
	function takeRow(row:Int):QList<QStandardItem>;
	function takeColumn(column:Int):QList<QStandardItem>;
	function takeHorizontalHeaderItem(column:Int):QStandardItem;
	function takeVerticalHeaderItem(row:Int):QStandardItem;
	function itemPrototype():QStandardItem;
	function setItemPrototype(item:QStandardItem):Void;
	function findItems(text:QString, ?flags:QtMatchFlags, ?column:Int):QList<QStandardItem>;
	function sortRole():Int;
	function setSortRole(role:Int):Void;
	function mimeTypes():QStringList;
	function mimeData(indexes:QModelIndexList):QMimeData;
	function dropMimeData(data:QMimeData, action:QtDropAction, row:Int, column:Int, parent:QModelIndex):Bool;
	function sibling(row:Int, column:Int, idx:QModelIndex):QModelIndex;
	function setItemRoleNames(roleNames:QHash<Int, QByteArray>):Void;
	function clearItemData(index:QModelIndex):Bool;
}

@:pythonImport("PyQt5.QtGui", "QStandardItem")
@:native("QStandardItem")
extern class QStandardItem {
	@:overload(function():QStandardItem {})
	@:overload(function(text:QString):QStandardItem {})
	@:overload(function(icon:QIcon, text:QString):QStandardItem {})
	@:overload(function(rows:Int, ?columns:Int):QStandardItem {})
	function new(other:QStandardItem);

	function data(?role:Int):QVariant;
	function setData(value:QVariant, ?role:Int):Void;
	function text():QString;
	function icon():QIcon;
	function toolTip():QString;
	function statusTip():QString;
	function whatsThis():QString;
	function sizeHint():QSize;
	function font():QFont;
	function textAlignment():QtAlignment;
	function background():QBrush;
	function foreground():QBrush;
	function checkState():QtCheckState;
	function accessibleText():QString;
	function accessibleDescription():QString;
	function flags():QtItemFlags;
	function setFlags(flags:QtItemFlags):Void;
	function isEnabled():Bool;
	function setEnabled(enabled:Bool):Void;
	function isEditable():Bool;
	function setEditable(editable:Bool):Void;
	function isSelectable():Bool;
	function setSelectable(selectable:Bool):Void;
	function isCheckable():Bool;
	function setCheckable(checkable:Bool):Void;
	function isTristate():Bool;
	function setTristate(tristate:Bool):Void;
	function isDragEnabled():Bool;
	function setDragEnabled(dragEnabled:Bool):Void;
	function isDropEnabled():Bool;
	function setDropEnabled(dropEnabled:Bool):Void;
	function parent():QStandardItem;
	function row():Int;
	function column():Int;
	function index():QModelIndex;
	function model():QStandardItemModel;
	function rowCount():Int;
	function setRowCount(rows:Int):Void;
	function columnCount():Int;
	function setColumnCount(columns:Int):Void;
	function hasChildren():Bool;
	function child(row:Int, ?column:Int):QStandardItem;
	@:overload(function(arow:Int, aitem:QStandardItem):Void {})
	function setChild(row:Int, column:Int, item:QStandardItem):Void;
	@:overload(function(arow:Int, aitem:QStandardItem):Void {})
	function insertRow(row:Int, items:QList<QStandardItem>):Void;
	@:overload(function(row:Int, items:QList<QStandardItem>):Void {})
	function insertRows(row:Int, count:Int):Void;
	function insertColumn(column:Int, items:QList<QStandardItem>):Void;
	function insertColumns(column:Int, count:Int):Void;
	function removeRow(row:Int):Void;
	function removeColumn(column:Int):Void;
	function removeRows(row:Int, count:Int):Void;
	function removeColumns(column:Int, count:Int):Void;
	function takeChild(row:Int, ?column:Int):QStandardItem;
	function takeRow(row:Int):QList<QStandardItem>;
	function takeColumn(column:Int):QList<QStandardItem>;
	function sortChildren(column:Int, ?order:QtSortOrder):Void;
	function clone():QStandardItem;
	function type():Int;
	function read(in_:QDataStream):Void;
	function write(out:QDataStream):Void;
	function setText(atext:QString):Void;
	function setIcon(aicon:QIcon):Void;
	function setToolTip(atoolTip:QString):Void;
	function setStatusTip(astatusTip:QString):Void;
	function setWhatsThis(awhatsThis:QString):Void;
	function setSizeHint(asizeHint:QSize):Void;
	function setFont(afont:QFont):Void;
	function setTextAlignment(atextAlignment:QtAlignment):Void;
	function setBackground(abrush:QBrush):Void;
	function setForeground(abrush:QBrush):Void;
	function setCheckState(acheckState:QtCheckState):Void;
	function setAccessibleText(aaccessibleText:QString):Void;
	function setAccessibleDescription(aaccessibleDescription:QString):Void;
	@:overload(function(aitem:QStandardItem):Void {})
	function appendRow(items:QList<QStandardItem>):Void;
	function appendColumn(items:QList<QStandardItem>):Void;
	function appendRows(items:QList<QStandardItem>):Void;
	function emitDataChanged():Void;
	function isAutoTristate():Bool;
	function setAutoTristate(tristate:Bool):Void;
	function isUserTristate():Bool;
	function setUserTristate(tristate:Bool):Void;
	function clearData():Void;
}

@:pythonImport("PyQt5.QtGui", "ItemType")
@:native("QStandardItem.ItemType")
extern enum abstract QStandardItemItemType(Int) from Int to Int {
	var Type;
	var UserType;
}

