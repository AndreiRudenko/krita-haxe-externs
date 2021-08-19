package pyqt5.qtwidgets;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.QObject;
import pyqt5.qtwidgets.QAction;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtWidgets", "QUndoCommand")
@:native("QUndoCommand")
extern class QUndoCommand {
	@:overload(function(?parent:QUndoCommand):QUndoCommand {})
	@:overload(function(text:QString, ?parent:QUndoCommand):QUndoCommand {})
	function new(?v:QUndoCommand);

	function id():Int;
	function mergeWith(other:QUndoCommand):Bool;
	function redo():Void;
	function setText(text:QString):Void;
	function text():QString;
	function undo():Void;
	function childCount():Int;
	function child(index:Int):QUndoCommand;
	function actionText():QString;
	function isObsolete():Bool;
	function setObsolete(obsolete:Bool):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QUndoStack")
@:native("QUndoStack")
extern class QUndoStack extends QObject {
	var canRedoChanged:QSignal1<Bool>;
	var canUndoChanged:QSignal1<Bool>;
	var cleanChanged:QSignal1<Bool>;
	var indexChanged:QSignal1<Int>;
	var redoTextChanged:QSignal1<QString>;
	var undoTextChanged:QSignal1<QString>;

	function new(?parent:QObject);

	function clear():Void;
	function push(cmd:QUndoCommand):Void;
	function canUndo():Bool;
	function canRedo():Bool;
	function undoText():QString;
	function redoText():QString;
	function count():Int;
	function index():Int;
	function text(idx:Int):QString;
	function createUndoAction(parent:QObject, ?prefix:QString):QAction;
	function createRedoAction(parent:QObject, ?prefix:QString):QAction;
	function isActive():Bool;
	function isClean():Bool;
	function cleanIndex():Int;
	function beginMacro(text:QString):Void;
	function endMacro():Void;
	function redo():Void;
	function setActive(?active:Bool):Void;
	function setClean():Void;
	function setIndex(idx:Int):Void;
	function undo():Void;
	function resetClean():Void;
	function setUndoLimit(limit:Int):Void;
	function undoLimit():Int;
	function command(index:Int):QUndoCommand;
}

