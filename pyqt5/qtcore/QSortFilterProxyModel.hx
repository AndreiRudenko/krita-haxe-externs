package pyqt5.qtcore;

import pyqt5.qtcore.QAbstractProxyModel;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QItemSelectionModel;
import pyqt5.qtcore.QRegExp;
import pyqt5.qtcore.QRegularExpression;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtCore", "QSortFilterProxyModel")
@:native("QSortFilterProxyModel")
extern class QSortFilterProxyModel extends QAbstractProxyModel {
	var dynamicSortFilterChanged:QSignal1<Bool>;
	var filterCaseSensitivityChanged:QSignal1<QtCaseSensitivity>;
	var sortCaseSensitivityChanged:QSignal1<QtCaseSensitivity>;
	var sortLocaleAwareChanged:QSignal1<Bool>;
	var sortRoleChanged:QSignal1<Int>;
	var filterRoleChanged:QSignal1<Int>;
	var recursiveFilteringEnabledChanged:QSignal1<Bool>;

	function new(?parent:QObject);

	function setSourceModel(sourceModel:QAbstractItemModel):Void;
	function mapToSource(proxyIndex:QModelIndex):QModelIndex;
	function mapFromSource(sourceIndex:QModelIndex):QModelIndex;
	function mapSelectionToSource(proxySelection:QItemSelection):QItemSelection;
	function mapSelectionFromSource(sourceSelection:QItemSelection):QItemSelection;
	function filterRegExp():QRegExp;
	function filterRegularExpression():QRegularExpression;
	function filterKeyColumn():Int;
	function setFilterKeyColumn(column:Int):Void;
	function filterCaseSensitivity():QtCaseSensitivity;
	function setFilterCaseSensitivity(cs:QtCaseSensitivity):Void;
	function invalidate():Void;
	function setFilterFixedString(pattern:QString):Void;
	@:overload(function(pattern:QString):Void {})
	function setFilterRegExp(regExp:QRegExp):Void;
	@:overload(function(pattern:QString):Void {})
	function setFilterRegularExpression(regularExpression:QRegularExpression):Void;
	function setFilterWildcard(pattern:QString):Void;
	function filterAcceptsRow(source_row:Int, source_parent:QModelIndex):Bool;
	function filterAcceptsColumn(source_column:Int, source_parent:QModelIndex):Bool;
	function lessThan(left:QModelIndex, right:QModelIndex):Bool;
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
	function mimeData(indexes:QModelIndexList):QMimeData;
	function dropMimeData(data:QMimeData, action:QtDropAction, row:Int, column:Int, parent:QModelIndex):Bool;
	function insertRows(row:Int, count:Int, ?parent:QModelIndex):Bool;
	function insertColumns(column:Int, count:Int, ?parent:QModelIndex):Bool;
	function removeRows(row:Int, count:Int, ?parent:QModelIndex):Bool;
	function removeColumns(column:Int, count:Int, ?parent:QModelIndex):Bool;
	function fetchMore(parent:QModelIndex):Void;
	function canFetchMore(parent:QModelIndex):Bool;
	function flags(index:QModelIndex):QtItemFlags;
	function buddy(index:QModelIndex):QModelIndex;
	function span(index:QModelIndex):QSize;
	function match(start:QModelIndex, role:Int, value:QVariant, ?hits:Int, ?flags:QtMatchFlags):QModelIndexList;
	function sort(column:Int, ?order:QtSortOrder):Void;
	function sortCaseSensitivity():QtCaseSensitivity;
	function setSortCaseSensitivity(cs:QtCaseSensitivity):Void;
	function dynamicSortFilter():Bool;
	function setDynamicSortFilter(enable:Bool):Void;
	function sortRole():Int;
	function setSortRole(role:Int):Void;
	function sortColumn():Int;
	function sortOrder():QtSortOrder;
	function filterRole():Int;
	function setFilterRole(role:Int):Void;
	function mimeTypes():QStringList;
	function supportedDropActions():QtDropActions;
	function isSortLocaleAware():Bool;
	function setSortLocaleAware(on:Bool):Void;
	function sibling(row:Int, column:Int, idx:QModelIndex):QModelIndex;
	function isRecursiveFilteringEnabled():Bool;
	function setRecursiveFilteringEnabled(recursive:Bool):Void;
	function invalidateFilter():Void;
}

