package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtgui.QKeySequence;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtWidgets", "QShortcut")
@:native("QShortcut")
extern class QShortcut extends QObject {
	var activated:QSignal0;
	var activatedAmbiguously:QSignal0;

	@:overload(function(parent:QWidget):QShortcut {})
	function new(key:QKeySequence, parent:QWidget, member:Dynamic, ambiguousMember:Dynamic, ?context:QtShortcutContext);

	function setKey(key:QKeySequence):Void;
	function key():QKeySequence;
	function setEnabled(enable:Bool):Void;
	function isEnabled():Bool;
	function setContext(context:QtShortcutContext):Void;
	function context():QtShortcutContext;
	function setWhatsThis(text:QString):Void;
	function whatsThis():QString;
	function id():Int;
	function parentWidget():QWidget;
	function setAutoRepeat(on:Bool):Void;
	function autoRepeat():Bool;
	function event(e:QEvent):Bool;
}

