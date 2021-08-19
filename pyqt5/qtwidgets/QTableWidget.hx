package pyqt5.qtwidgets;

import pyqt5.qtcore.QString;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QFont;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QDataStream;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QBrush;
import pyqt5.qtwidgets.QTableView;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QItemSelectionModel;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QRect;
import pyqt5.qtwidgets.QAbstractItemView;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QTableWidgetSelectionRange")
@:native("QTableWidgetSelectionRange")
extern class QTableWidgetSelectionRange {
	@:overload(function():QTableWidgetSelectionRange {})
	@:overload(function(top:Int, left:Int, bottom:Int, right:Int):QTableWidgetSelectionRange {})
	function new(other:QTableWidgetSelectionRange);

	function topRow():Int;
	function bottomRow():Int;
	function leftColumn():Int;
	function rightColumn():Int;
	function rowCount():Int;
	function columnCount():Int;
}

@:pythonImport("PyQt5.QtWidgets", "QTableWidgetItem")
@:native("QTableWidgetItem")
extern class QTableWidgetItem {
	@:overload(function(?type:Int):QTableWidgetItem {})
	@:overload(function(text:QString, ?type:Int):QTableWidgetItem {})
	@:overload(function(icon:QIcon, text:QString, ?type:Int):QTableWidgetItem {})
	function new(other:QTableWidgetItem);

	function clone():QTableWidgetItem;
	function tableWidget():QTableWidget;
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
	function sizeHint():QSize;
	function setSizeHint(size:QSize):Void;
	function background():QBrush;
	function setBackground(brush:QBrush):Void;
	function foreground():QBrush;
	function setForeground(brush:QBrush):Void;
	function row():Int;
	function column():Int;
	function setSelected(aselect:Bool):Void;
	function isSelected():Bool;
}

@:pythonImport("PyQt5.QtWidgets", "ItemType")
@:native("QTableWidgetItem.ItemType")
extern enum abstract QTableWidgetItemItemType(Int) from Int to Int {
	var Type;
	var UserType;
}

@:pythonImport("PyQt5.QtWidgets", "QTableWidget")
@:native("QTableWidget")
extern class QTableWidget extends QTableView {
	var itemPressed:QSignal1<QTableWidgetItem>;
	var itemClicked:QSignal1<QTableWidgetItem>;
	var itemDoubleClicked:QSignal1<QTableWidgetItem>;
	var itemActivated:QSignal1<QTableWidgetItem>;
	var itemEntered:QSignal1<QTableWidgetItem>;
	var itemChanged:QSignal1<QTableWidgetItem>;
	var currentItemChanged:QSignal2<QTableWidgetItem, QTableWidgetItem>;
	var itemSelectionChanged:QSignal0;
	var cellPressed:QSignal2<Int, Int>;
	var cellClicked:QSignal2<Int, Int>;
	var cellDoubleClicked:QSignal2<Int, Int>;
	var cellActivated:QSignal2<Int, Int>;
	var cellEntered:QSignal2<Int, Int>;
	var cellChanged:QSignal2<Int, Int>;
	var currentCellChanged:QSignal0;

	@:overload(function(?parent:QWidget):QTableWidget {})
	function new(rows:Int, columns:Int, ?parent:QWidget);

	function setRowCount(rows:Int):Void;
	function rowCount():Int;
	function setColumnCount(columns:Int):Void;
	function columnCount():Int;
	function row(item:QTableWidgetItem):Int;
	function column(item:QTableWidgetItem):Int;
	function item(row:Int, column:Int):QTableWidgetItem;
	function setItem(row:Int, column:Int, item:QTableWidgetItem):Void;
	function takeItem(row:Int, column:Int):QTableWidgetItem;
	function verticalHeaderItem(row:Int):QTableWidgetItem;
	function setVerticalHeaderItem(row:Int, item:QTableWidgetItem):Void;
	function takeVerticalHeaderItem(row:Int):QTableWidgetItem;
	function horizontalHeaderItem(column:Int):QTableWidgetItem;
	function setHorizontalHeaderItem(column:Int, item:QTableWidgetItem):Void;
	function takeHorizontalHeaderItem(column:Int):QTableWidgetItem;
	function setVerticalHeaderLabels(labels:QStringList):Void;
	function setHorizontalHeaderLabels(labels:QStringList):Void;
	function currentRow():Int;
	function currentColumn():Int;
	function currentItem():QTableWidgetItem;
	@:overload(function(item:QTableWidgetItem, command:QItemSelectionModelSelectionFlags):Void {})
	function setCurrentItem(item:QTableWidgetItem):Void;
	@:overload(function(row:Int, column:Int, command:QItemSelectionModelSelectionFlags):Void {})
	function setCurrentCell(row:Int, column:Int):Void;
	function sortItems(column:Int, ?order:QtSortOrder):Void;
	function setSortingEnabled(enable:Bool):Void;
	function isSortingEnabled():Bool;
	function editItem(item:QTableWidgetItem):Void;
	function openPersistentEditor(item:QTableWidgetItem):Void;
	function closePersistentEditor(item:QTableWidgetItem):Void;
	function cellWidget(row:Int, column:Int):QWidget;
	function setCellWidget(row:Int, column:Int, widget:QWidget):Void;
	function removeCellWidget(arow:Int, acolumn:Int):Void;
	function setRangeSelected(range:QTableWidgetSelectionRange, select:Bool):Void;
	function selectedRanges():QList<QTableWidgetSelectionRange>;
	function selectedItems():QList<QTableWidgetItem>;
	function findItems(text:QString, flags:QtMatchFlags):QList<QTableWidgetItem>;
	function visualRow(logicalRow:Int):Int;
	function visualColumn(logicalColumn:Int):Int;
	@:overload(function(ax:Int, ay:Int):QTableWidgetItem {})
	function itemAt(p:QPoint):QTableWidgetItem;
	function visualItemRect(item:QTableWidgetItem):QRect;
	function itemPrototype():QTableWidgetItem;
	function setItemPrototype(item:QTableWidgetItem):Void;
	function scrollToItem(item:QTableWidgetItem, ?hint:QAbstractItemViewScrollHint):Void;
	function insertRow(row:Int):Void;
	function insertColumn(column:Int):Void;
	function removeRow(row:Int):Void;
	function removeColumn(column:Int):Void;
	function clear():Void;
	function clearContents():Void;
	function mimeTypes():QStringList;
	function mimeData(items:QList<QTableWidgetItem>):QMimeData;
	function dropMimeData(row:Int, column:Int, data:QMimeData, action:QtDropAction):Bool;
	function supportedDropActions():QtDropActions;
	function items(data:QMimeData):QList<QTableWidgetItem>;
	function indexFromItem(item:QTableWidgetItem):QModelIndex;
	function itemFromIndex(index:QModelIndex):QTableWidgetItem;
	function event(e:QEvent):Bool;
	function dropEvent(event:QDropEvent):Void;
	function isPersistentEditorOpen(item:QTableWidgetItem):Bool;
}

