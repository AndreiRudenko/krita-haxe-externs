package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAbstractItemView;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QVector;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QItemSelectionModel;
import pyqt5.qtgui.QRegion;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtwidgets.QStyleOption;

@:pythonImport("PyQt5.QtWidgets", "QHeaderView")
@:native("QHeaderView")
extern class QHeaderView extends QAbstractItemView {
	var geometriesChanged:QSignal0;
	var sectionMoved:QSignal3<Int, Int, Int>;
	var sectionResized:QSignal3<Int, Int, Int>;
	var sectionPressed:QSignal1<Int>;
	var sectionClicked:QSignal1<Int>;
	var sectionDoubleClicked:QSignal1<Int>;
	var sectionCountChanged:QSignal2<Int, Int>;
	var sectionHandleDoubleClicked:QSignal1<Int>;
	var sectionEntered:QSignal1<Int>;
	var sortIndicatorChanged:QSignal2<Int, QtSortOrder>;

	function new(orientation:QtOrientation, ?parent:QWidget);

	function setModel(model:QAbstractItemModel):Void;
	function orientation():QtOrientation;
	function offset():Int;
	function length():Int;
	function sizeHint():QSize;
	function sectionSizeHint(logicalIndex:Int):Int;
	function visualIndexAt(position:Int):Int;
	@:overload(function(ax:Int, ay:Int):Int {})
	@:overload(function(apos:QPoint):Int {})
	function logicalIndexAt(position:Int):Int;
	function sectionSize(logicalIndex:Int):Int;
	function sectionPosition(logicalIndex:Int):Int;
	function sectionViewportPosition(logicalIndex:Int):Int;
	function moveSection(from:Int, to:Int):Void;
	function resizeSection(logicalIndex:Int, size:Int):Void;
	function isSectionHidden(logicalIndex:Int):Bool;
	function setSectionHidden(logicalIndex:Int, hide:Bool):Void;
	function count():Int;
	function visualIndex(logicalIndex:Int):Int;
	function logicalIndex(visualIndex:Int):Int;
	function setHighlightSections(highlight:Bool):Void;
	function highlightSections():Bool;
	function stretchSectionCount():Int;
	function setSortIndicatorShown(show:Bool):Void;
	function isSortIndicatorShown():Bool;
	function setSortIndicator(logicalIndex:Int, order:QtSortOrder):Void;
	function sortIndicatorSection():Int;
	function sortIndicatorOrder():QtSortOrder;
	function stretchLastSection():Bool;
	function setStretchLastSection(stretch:Bool):Void;
	function sectionsMoved():Bool;
	function setOffset(offset:Int):Void;
	function headerDataChanged(orientation:QtOrientation, logicalFirst:Int, logicalLast:Int):Void;
	function setOffsetToSectionPosition(visualIndex:Int):Void;
	function updateSection(logicalIndex:Int):Void;
	@:overload(function(mode:QHeaderViewResizeMode):Void {})
	function resizeSections():Void;
	function sectionsInserted(parent:QModelIndex, logicalFirst:Int, logicalLast:Int):Void;
	function sectionsAboutToBeRemoved(parent:QModelIndex, logicalFirst:Int, logicalLast:Int):Void;
	function initialize():Void;
	@:overload(function(start:Int, end:Int):Void {})
	function initializeSections():Void;
	function currentChanged(current:QModelIndex, old:QModelIndex):Void;
	function event(e:QEvent):Bool;
	function viewportEvent(e:QEvent):Bool;
	function paintEvent(e:QPaintEvent):Void;
	function mousePressEvent(e:QMouseEvent):Void;
	function mouseMoveEvent(e:QMouseEvent):Void;
	function mouseReleaseEvent(e:QMouseEvent):Void;
	function mouseDoubleClickEvent(e:QMouseEvent):Void;
	function paintSection(painter:QPainter, rect:QRect, logicalIndex:Int):Void;
	function sectionSizeFromContents(logicalIndex:Int):QSize;
	function horizontalOffset():Int;
	function verticalOffset():Int;
	function updateGeometries():Void;
	function scrollContentsBy(dx:Int, dy:Int):Void;
	function dataChanged(topLeft:QModelIndex, bottomRight:QModelIndex, ?roles:QVector<Int>):Void;
	function rowsInserted(parent:QModelIndex, start:Int, end:Int):Void;
	function visualRect(index:QModelIndex):QRect;
	function scrollTo(index:QModelIndex, hint:QAbstractItemViewScrollHint):Void;
	function indexAt(p:QPoint):QModelIndex;
	function isIndexHidden(index:QModelIndex):Bool;
	function moveCursor(?v:QAbstractItemViewCursorAction, ?v:QtKeyboardModifiers):QModelIndex;
	function setSelection(rect:QRect, flags:QItemSelectionModelSelectionFlags):Void;
	function visualRegionForSelection(selection:QItemSelection):QRegion;
	function hideSection(alogicalIndex:Int):Void;
	function showSection(alogicalIndex:Int):Void;
	function hiddenSectionCount():Int;
	function defaultSectionSize():Int;
	function setDefaultSectionSize(size:Int):Void;
	function defaultAlignment():QtAlignment;
	function setDefaultAlignment(alignment:QtAlignment):Void;
	function sectionsHidden():Bool;
	function swapSections(first:Int, second:Int):Void;
	function cascadingSectionResizes():Bool;
	function setCascadingSectionResizes(enable:Bool):Void;
	function minimumSectionSize():Int;
	function setMinimumSectionSize(size:Int):Void;
	function saveState():QByteArray;
	function restoreState(state:QByteArray):Bool;
	function reset():Void;
	function setOffsetToLastSection():Void;
	function initStyleOption(option:QStyleOptionHeader):Void;
	function setSectionsMovable(movable:Bool):Void;
	function sectionsMovable():Bool;
	function setSectionsClickable(clickable:Bool):Void;
	function sectionsClickable():Bool;
	function sectionResizeMode(logicalIndex:Int):QHeaderViewResizeMode;
	@:overload(function(mode:QHeaderViewResizeMode):Void {})
	function setSectionResizeMode(logicalIndex:Int, mode:QHeaderViewResizeMode):Void;
	function setVisible(v:Bool):Void;
	function setResizeContentsPrecision(precision:Int):Void;
	function resizeContentsPrecision():Int;
	function maximumSectionSize():Int;
	function setMaximumSectionSize(size:Int):Void;
	function resetDefaultSectionSize():Void;
	function setFirstSectionMovable(movable:Bool):Void;
	function isFirstSectionMovable():Bool;
}

@:pythonImport("PyQt5.QtWidgets", "QHeaderView")
@:native("QHeaderView")
extern enum abstract QHeaderViewResizeMode(Int) from Int to Int {
	var Interactive;
	var Fixed;
	var Stretch;
	var ResizeToContents;
	var Custom;
}

