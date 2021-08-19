package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtwidgets.QUndoStack;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QString;
import pyqt5.qtwidgets.QAction;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtWidgets", "QUndoGroup")
@:native("QUndoGroup")
extern class QUndoGroup extends QObject {
	var activeStackChanged:QSignal1<QUndoStack>;
	var canRedoChanged:QSignal1<Bool>;
	var canUndoChanged:QSignal1<Bool>;
	var cleanChanged:QSignal1<Bool>;
	var indexChanged:QSignal1<Int>;
	var redoTextChanged:QSignal1<QString>;
	var undoTextChanged:QSignal1<QString>;

	function new(?parent:QObject);

	function addStack(stack:QUndoStack):Void;
	function removeStack(stack:QUndoStack):Void;
	function stacks():QList<QUndoStack>;
	function activeStack():QUndoStack;
	function createRedoAction(parent:QObject, ?prefix:QString):QAction;
	function createUndoAction(parent:QObject, ?prefix:QString):QAction;
	function canUndo():Bool;
	function canRedo():Bool;
	function undoText():QString;
	function redoText():QString;
	function isClean():Bool;
	function redo():Void;
	function setActiveStack(stack:QUndoStack):Void;
	function undo():Void;
}

