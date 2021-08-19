package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QIcon;
import pyqt5.qtwidgets.QActionGroup;
import pyqt5.qtwidgets.QMenu;
import pyqt5.qtgui.QKeySequence;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QFont;
import pyqt5.qtcore.QVariant;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QList;
import pyqt5.qtwidgets.QGraphicsWidget;

@:pythonImport("PyQt5.QtWidgets", "QAction")
@:native("QAction")
extern class QAction extends QObject {
	var changed:QSignal0;
	var triggered:QSignal1<Bool>;
	var hovered:QSignal0;
	var toggled:QSignal1<Bool>;

	@:overload(function(?parent:QObject):QAction {})
	@:overload(function(text:QString, ?parent:QObject):QAction {})
	function new(icon:QIcon, text:QString, ?parent:QObject);

	function setActionGroup(group:QActionGroup):Void;
	function actionGroup():QActionGroup;
	function setIcon(icon:QIcon):Void;
	function icon():QIcon;
	function setText(text:QString):Void;
	function text():QString;
	function setIconText(text:QString):Void;
	function iconText():QString;
	function setToolTip(tip:QString):Void;
	function toolTip():QString;
	function setStatusTip(statusTip:QString):Void;
	function statusTip():QString;
	function setWhatsThis(what:QString):Void;
	function whatsThis():QString;
	function menu():QMenu;
	function setMenu(menu:QMenu):Void;
	function setSeparator(b:Bool):Void;
	function isSeparator():Bool;
	function setShortcut(shortcut:QKeySequence):Void;
	function shortcut():QKeySequence;
	function setShortcutContext(context:QtShortcutContext):Void;
	function shortcutContext():QtShortcutContext;
	function setFont(font:QFont):Void;
	function font():QFont;
	function setCheckable(?v:Bool):Void;
	function isCheckable():Bool;
	function data():QVariant;
	function setData(var_:QVariant):Void;
	function isChecked():Bool;
	function isEnabled():Bool;
	function isVisible():Bool;
	function activate(event:QActionActionEvent):Void;
	function showStatusText(?widget:QWidget):Bool;
	function parentWidget():QWidget;
	function event(?v:QEvent):Bool;
	function trigger():Void;
	function hover():Void;
	function setChecked(?v:Bool):Void;
	function toggle():Void;
	function setEnabled(?v:Bool):Void;
	function setDisabled(b:Bool):Void;
	function setVisible(?v:Bool):Void;
	@:overload(function(?v:QKeySequenceStandardKey):Void {})
	function setShortcuts(shortcuts:QList<QKeySequence>):Void;
	function shortcuts():QList<QKeySequence>;
	function setAutoRepeat(?v:Bool):Void;
	function autoRepeat():Bool;
	function setMenuRole(menuRole:QActionMenuRole):Void;
	function menuRole():QActionMenuRole;
	function associatedWidgets():QList<QWidget>;
	function associatedGraphicsWidgets():QList<QGraphicsWidget>;
	function setIconVisibleInMenu(visible:Bool):Void;
	function isIconVisibleInMenu():Bool;
	function setPriority(priority:QActionPriority):Void;
	function priority():QActionPriority;
	function setShortcutVisibleInContextMenu(show:Bool):Void;
	function isShortcutVisibleInContextMenu():Bool;
}

@:pythonImport("PyQt5.QtWidgets", "QAction")
@:native("QAction")
extern enum abstract QActionActionEvent(Int) from Int to Int {
	var Trigger;
	var Hover;
}

@:pythonImport("PyQt5.QtWidgets", "QAction")
@:native("QAction")
extern enum abstract QActionMenuRole(Int) from Int to Int {
	var NoRole;
	var TextHeuristicRole;
	var ApplicationSpecificRole;
	var AboutQtRole;
	var AboutRole;
	var PreferencesRole;
	var QuitRole;
}

@:pythonImport("PyQt5.QtWidgets", "QAction")
@:native("QAction")
extern enum abstract QActionPriority(Int) from Int to Int {
	var LowPriority;
	var NormalPriority;
	var HighPriority;
}

