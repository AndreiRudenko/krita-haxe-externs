package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QStringList;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtwidgets.QAbstractItemView;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtWidgets", "QCompleter")
@:native("QCompleter")
extern class QCompleter extends QObject {
	var activated:QSignal1<QModelIndex>;
	var highlighted:QSignal1<QModelIndex>;

	@:overload(function(?parent:QObject):QCompleter {})
	@:overload(function(model:QAbstractItemModel, ?parent:QObject):QCompleter {})
	function new(list:QStringList, ?parent:QObject);

	function setWidget(widget:QWidget):Void;
	function widget():QWidget;
	function setModel(c:QAbstractItemModel):Void;
	function model():QAbstractItemModel;
	function setCompletionMode(mode:QCompleterCompletionMode):Void;
	function completionMode():QCompleterCompletionMode;
	function popup():QAbstractItemView;
	function setPopup(popup:QAbstractItemView):Void;
	function setCaseSensitivity(caseSensitivity:QtCaseSensitivity):Void;
	function caseSensitivity():QtCaseSensitivity;
	function setModelSorting(sorting:QCompleterModelSorting):Void;
	function modelSorting():QCompleterModelSorting;
	function setCompletionColumn(column:Int):Void;
	function completionColumn():Int;
	function setCompletionRole(role:Int):Void;
	function completionRole():Int;
	function completionCount():Int;
	function setCurrentRow(row:Int):Bool;
	function currentRow():Int;
	function currentIndex():QModelIndex;
	function currentCompletion():QString;
	function completionModel():QAbstractItemModel;
	function completionPrefix():QString;
	function pathFromIndex(index:QModelIndex):QString;
	function splitPath(path:QString):QStringList;
	function wrapAround():Bool;
	function complete(?rect:QRect):Void;
	function setCompletionPrefix(prefix:QString):Void;
	function setWrapAround(wrap:Bool):Void;
	function eventFilter(o:QObject, e:QEvent):Bool;
	function event(?v:QEvent):Bool;
	function maxVisibleItems():Int;
	function setMaxVisibleItems(maxItems:Int):Void;
	function setFilterMode(filterMode:QtMatchFlags):Void;
	function filterMode():QtMatchFlags;
}

@:pythonImport("PyQt5.QtWidgets", "QCompleter")
@:native("QCompleter")
extern enum abstract QCompleterCompletionMode(Int) from Int to Int {
	var PopupCompletion;
	var UnfilteredPopupCompletion;
	var InlineCompletion;
}

@:pythonImport("PyQt5.QtWidgets", "QCompleter")
@:native("QCompleter")
extern enum abstract QCompleterModelSorting(Int) from Int to Int {
	var UnsortedModel;
	var CaseSensitivelySortedModel;
	var CaseInsensitivelySortedModel;
}

