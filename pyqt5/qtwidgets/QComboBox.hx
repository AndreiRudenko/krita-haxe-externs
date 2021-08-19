package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QSize;
import pyqt5.qtwidgets.QLineEdit;
import pyqt5.qtgui.QValidator;
import pyqt5.qtwidgets.QAbstractItemDelegate;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QStringList;
import pyqt5.qtwidgets.QAbstractItemView;
import pyqt5.qtcore.QEvent;
import pyqt5.qtwidgets.QCompleter;
import pyqt5.qtcore.QSignal;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QComboBox")
@:native("QComboBox")
extern class QComboBox extends QWidget {
	var editTextChanged:QSignal1<QString>;
	var activated:QSignal1<QString>;
	var currentIndexChanged:QSignal1<QString>;
	var currentTextChanged:QSignal1<QString>;
	var highlighted:QSignal1<QString>;
	var textActivated:QSignal1<QString>;
	var textHighlighted:QSignal1<QString>;

	function new(?parent:QWidget);

	function maxVisibleItems():Int;
	function setMaxVisibleItems(maxItems:Int):Void;
	function count():Int;
	function setMaxCount(max:Int):Void;
	function maxCount():Int;
	function duplicatesEnabled():Bool;
	function setDuplicatesEnabled(enable:Bool):Void;
	function setFrame(?v:Bool):Void;
	function hasFrame():Bool;
	function findText(text:QString, ?flags:QtMatchFlags):Int;
	function findData(data:QVariant, ?role:Int, ?flags:QtMatchFlags):Int;
	function insertPolicy():QComboBoxInsertPolicy;
	function setInsertPolicy(policy:QComboBoxInsertPolicy):Void;
	function sizeAdjustPolicy():QComboBoxSizeAdjustPolicy;
	function setSizeAdjustPolicy(policy:QComboBoxSizeAdjustPolicy):Void;
	function minimumContentsLength():Int;
	function setMinimumContentsLength(characters:Int):Void;
	function iconSize():QSize;
	function setIconSize(size:QSize):Void;
	function isEditable():Bool;
	function setEditable(editable:Bool):Void;
	function setLineEdit(edit:QLineEdit):Void;
	function lineEdit():QLineEdit;
	function setValidator(v:QValidator):Void;
	function validator():QValidator;
	function itemDelegate():QAbstractItemDelegate;
	function setItemDelegate(delegate:QAbstractItemDelegate):Void;
	function model():QAbstractItemModel;
	function setModel(model:QAbstractItemModel):Void;
	function rootModelIndex():QModelIndex;
	function setRootModelIndex(index:QModelIndex):Void;
	function modelColumn():Int;
	function setModelColumn(visibleColumn:Int):Void;
	function currentIndex():Int;
	function setCurrentIndex(index:Int):Void;
	function currentText():QString;
	function itemText(index:Int):QString;
	function itemIcon(index:Int):QIcon;
	function itemData(index:Int, ?role:Int):QVariant;
	function addItems(texts:QStringList):Void;
	@:overload(function(icon:QIcon, text:QString, ?userData:QVariant):Void {})
	function addItem(text:QString, ?userData:QVariant):Void;
	@:overload(function(index:Int, icon:QIcon, text:QString, ?userData:QVariant):Void {})
	function insertItem(index:Int, text:QString, ?userData:QVariant):Void;
	function insertItems(index:Int, texts:QStringList):Void;
	function removeItem(index:Int):Void;
	function setItemText(index:Int, text:QString):Void;
	function setItemIcon(index:Int, icon:QIcon):Void;
	function setItemData(index:Int, value:QVariant, ?role:Int):Void;
	function view():QAbstractItemView;
	function setView(itemView:QAbstractItemView):Void;
	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function showPopup():Void;
	function hidePopup():Void;
	function event(event:QEvent):Bool;
	function setCompleter(c:QCompleter):Void;
	function completer():QCompleter;
	function insertSeparator(index:Int):Void;
	function clear():Void;
	function clearEditText():Void;
	function setEditText(text:QString):Void;
	function setCurrentText(text:QString):Void;
	function initStyleOption(option:QStyleOptionComboBox):Void;
	function focusInEvent(e:QFocusEvent):Void;
	function focusOutEvent(e:QFocusEvent):Void;
	function changeEvent(e:QEvent):Void;
	function resizeEvent(e:QResizeEvent):Void;
	function paintEvent(e:QPaintEvent):Void;
	function showEvent(e:QShowEvent):Void;
	function hideEvent(e:QHideEvent):Void;
	function mousePressEvent(e:QMouseEvent):Void;
	function mouseReleaseEvent(e:QMouseEvent):Void;
	function keyPressEvent(e:QKeyEvent):Void;
	function keyReleaseEvent(e:QKeyEvent):Void;
	function wheelEvent(e:QWheelEvent):Void;
	function contextMenuEvent(e:QContextMenuEvent):Void;
	function inputMethodEvent(?v:QInputMethodEvent):Void;
	@:overload(function(query:QtInputMethodQuery, argument:QVariant):QVariant {})
	function inputMethodQuery(?v:QtInputMethodQuery):QVariant;
	function currentData(?role:Int):QVariant;
	function setPlaceholderText(placeholderText:QString):Void;
	function placeholderText():QString;
}

@:pythonImport("PyQt5.QtWidgets", "QComboBox")
@:native("QComboBox")
extern enum abstract QComboBoxInsertPolicy(Int) from Int to Int {
	var NoInsert;
	var InsertAtTop;
	var InsertAtCurrent;
	var InsertAtBottom;
	var InsertAfterCurrent;
	var InsertBeforeCurrent;
	var InsertAlphabetically;
}

@:pythonImport("PyQt5.QtWidgets", "QComboBox")
@:native("QComboBox")
extern enum abstract QComboBoxSizeAdjustPolicy(Int) from Int to Int {
	var AdjustToContents;
	var AdjustToContentsOnFirstShow;
	var AdjustToMinimumContentsLength;
	var AdjustToMinimumContentsLengthWithIcon;
}

