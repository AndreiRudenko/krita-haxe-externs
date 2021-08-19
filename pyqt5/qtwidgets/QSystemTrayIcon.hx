package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QIcon;
import pyqt5.qtwidgets.QMenu;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;

@:pythonImport("PyQt5.QtWidgets", "QSystemTrayIcon")
@:native("QSystemTrayIcon")
extern class QSystemTrayIcon extends QObject {
	static function isSystemTrayAvailable():Bool;
	static function supportsMessages():Bool;

	var activated:QSignal1<QSystemTrayIconActivationReason>;
	var messageClicked:QSignal0;

	@:overload(function(?parent:QObject):QSystemTrayIcon {})
	function new(icon:QIcon, ?parent:QObject);

	function setContextMenu(menu:QMenu):Void;
	function contextMenu():QMenu;
	function geometry():QRect;
	function icon():QIcon;
	function setIcon(icon:QIcon):Void;
	function toolTip():QString;
	function setToolTip(tip:QString):Void;
	@:overload(function(title:QString, msg:QString, icon:QIcon, ?msecs:Int):Void {})
	function showMessage(title:QString, msg:QString, ?icon:QSystemTrayIconMessageIcon, ?msecs:Int):Void;
	function isVisible():Bool;
	function hide():Void;
	function setVisible(visible:Bool):Void;
	function show():Void;
	function event(event:QEvent):Bool;
}

@:pythonImport("PyQt5.QtWidgets", "ActivationReason")
@:native("QSystemTrayIcon.ActivationReason")
extern enum abstract QSystemTrayIconActivationReason(Int) from Int to Int {
	var Unknown;
	var Context;
	var DoubleClick;
	var Trigger;
	var MiddleClick;
}

@:pythonImport("PyQt5.QtWidgets", "MessageIcon")
@:native("QSystemTrayIcon.MessageIcon")
extern enum abstract QSystemTrayIconMessageIcon(Int) from Int to Int {
	var NoIcon;
	var Information;
	var Warning;
	var Critical;
}

