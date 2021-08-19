package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QValidator;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QMenu;
import pyqt5.qtcore.QSignal;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QVariant;
import pyqt5.qtwidgets.QCompleter;
import pyqt5.qtcore.QMargins;
import pyqt5.qtwidgets.QAction;
import pyqt5.qtgui.QIcon;

@:pythonImport("PyQt5.QtWidgets", "QLineEdit")
@:native("QLineEdit")
extern class QLineEdit extends QWidget {
	var textChanged:QSignal1<QString>;
	var textEdited:QSignal1<QString>;
	var cursorPositionChanged:QSignal2<Int, Int>;
	var returnPressed:QSignal0;
	var editingFinished:QSignal0;
	var selectionChanged:QSignal0;
	var inputRejected:QSignal0;

	@:overload(function(?parent:QWidget):QLineEdit {})
	function new(contents:QString, ?parent:QWidget);

	function text():QString;
	function displayText():QString;
	function maxLength():Int;
	function setMaxLength(?v:Int):Void;
	function setFrame(?v:Bool):Void;
	function hasFrame():Bool;
	function echoMode():QLineEditEchoMode;
	function setEchoMode(?v:QLineEditEchoMode):Void;
	function isReadOnly():Bool;
	function setReadOnly(?v:Bool):Void;
	function setValidator(?v:QValidator):Void;
	function validator():QValidator;
	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function cursorPosition():Int;
	function setCursorPosition(?v:Int):Void;
	function cursorPositionAt(pos:QPoint):Int;
	function setAlignment(flag:QtAlignment):Void;
	function alignment():QtAlignment;
	function cursorForward(mark:Bool, ?steps:Int):Void;
	function cursorBackward(mark:Bool, ?steps:Int):Void;
	function cursorWordForward(mark:Bool):Void;
	function cursorWordBackward(mark:Bool):Void;
	function backspace():Void;
	function del():Void;
	function home(mark:Bool):Void;
	function end(mark:Bool):Void;
	function isModified():Bool;
	function setModified(?v:Bool):Void;
	function setSelection(?v:Int, ?v:Int):Void;
	function hasSelectedText():Bool;
	function selectedText():QString;
	function selectionStart():Int;
	function isUndoAvailable():Bool;
	function isRedoAvailable():Bool;
	function setDragEnabled(b:Bool):Void;
	function dragEnabled():Bool;
	function inputMask():QString;
	function setInputMask(inputMask:QString):Void;
	function hasAcceptableInput():Bool;
	function setText(?v:QString):Void;
	function clear():Void;
	function selectAll():Void;
	function undo():Void;
	function redo():Void;
	function cut():Void;
	function copy():Void;
	function paste():Void;
	function deselect():Void;
	function insert(?v:QString):Void;
	function createStandardContextMenu():QMenu;
	function initStyleOption(option:QStyleOptionFrame):Void;
	function mousePressEvent(?v:QMouseEvent):Void;
	function mouseMoveEvent(?v:QMouseEvent):Void;
	function mouseReleaseEvent(?v:QMouseEvent):Void;
	function mouseDoubleClickEvent(?v:QMouseEvent):Void;
	function keyPressEvent(?v:QKeyEvent):Void;
	function focusInEvent(?v:QFocusEvent):Void;
	function focusOutEvent(?v:QFocusEvent):Void;
	function paintEvent(?v:QPaintEvent):Void;
	function dragEnterEvent(?v:QDragEnterEvent):Void;
	function dragMoveEvent(e:QDragMoveEvent):Void;
	function dragLeaveEvent(e:QDragLeaveEvent):Void;
	function dropEvent(?v:QDropEvent):Void;
	function changeEvent(?v:QEvent):Void;
	function contextMenuEvent(?v:QContextMenuEvent):Void;
	function inputMethodEvent(?v:QInputMethodEvent):Void;
	function cursorRect():QRect;
	@:overload(function(property:QtInputMethodQuery, argument:QVariant):QVariant {})
	function inputMethodQuery(?v:QtInputMethodQuery):QVariant;
	function event(?v:QEvent):Bool;
	function setCompleter(completer:QCompleter):Void;
	function completer():QCompleter;
	@:overload(function(margins:QMargins):Void {})
	function setTextMargins(left:Int, top:Int, right:Int, bottom:Int):Void;
	function getTextMargins(left:Int, top:Int, right:Int, bottom:Int):Void;
	function textMargins():QMargins;
	function placeholderText():QString;
	function setPlaceholderText(?v:QString):Void;
	function setCursorMoveStyle(style:QtCursorMoveStyle):Void;
	function cursorMoveStyle():QtCursorMoveStyle;
	function setClearButtonEnabled(enable:Bool):Void;
	function isClearButtonEnabled():Bool;
	@:overload(function(action:QAction, position:QLineEditActionPosition):Void {})
	@:overload(function(icon:QIcon, position:QLineEditActionPosition):QAction {})
	function addAction(action:QAction):Void;
	function selectionEnd():Int;
	function selectionLength():Int;
}

@:pythonImport("PyQt5.QtWidgets", "EchoMode")
@:native("QLineEdit.EchoMode")
extern enum abstract QLineEditEchoMode(Int) from Int to Int {
	var Normal;
	var NoEcho;
	var Password;
	var PasswordEchoOnEdit;
}

@:pythonImport("PyQt5.QtWidgets", "ActionPosition")
@:native("QLineEdit.ActionPosition")
extern enum abstract QLineEditActionPosition(Int) from Int to Int {
	var LeadingPosition;
	var TrailingPosition;
}

