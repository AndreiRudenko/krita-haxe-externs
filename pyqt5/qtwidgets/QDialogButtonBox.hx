package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QAbstractButton;
import pyqt5.qtcore.QString;
import pyqt5.qtwidgets.QPushButton;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;

typedef QDialogButtonBoxStandardButtons = QFlags<QDialogButtonBoxStandardButton>;

@:pythonImport("PyQt5.QtWidgets", "QDialogButtonBox")
@:native("QDialogButtonBox")
extern class QDialogButtonBox extends QWidget {
	var accepted:QSignal0;
	var clicked:QSignal1<QAbstractButton>;
	var helpRequested:QSignal0;
	var rejected:QSignal0;

	@:overload(function(?parent:QWidget):QDialogButtonBox {})
	@:overload(function(orientation:QtOrientation, ?parent:QWidget):QDialogButtonBox {})
	@:overload(function(buttons:QDialogButtonBoxStandardButtons, ?parent:QWidget):QDialogButtonBox {})
	function new(buttons:QDialogButtonBoxStandardButtons, orientation:QtOrientation, ?parent:QWidget);

	function setOrientation(orientation:QtOrientation):Void;
	function orientation():QtOrientation;
	@:overload(function(text:QString, role:QDialogButtonBoxButtonRole):QPushButton {})
	@:overload(function(button:QDialogButtonBoxStandardButton):QPushButton {})
	function addButton(button:QAbstractButton, role:QDialogButtonBoxButtonRole):Void;
	function removeButton(button:QAbstractButton):Void;
	function clear():Void;
	function buttons():QList<QAbstractButton>;
	function buttonRole(button:QAbstractButton):QDialogButtonBoxButtonRole;
	function setStandardButtons(buttons:QDialogButtonBoxStandardButtons):Void;
	function standardButtons():QDialogButtonBoxStandardButtons;
	function standardButton(button:QAbstractButton):QDialogButtonBoxStandardButton;
	function button(which:QDialogButtonBoxStandardButton):QPushButton;
	function setCenterButtons(center:Bool):Void;
	function centerButtons():Bool;
	function changeEvent(event:QEvent):Void;
	function event(event:QEvent):Bool;
}

@:pythonImport("PyQt5.QtWidgets", "ButtonLayout")
@:native("QDialogButtonBox.ButtonLayout")
extern enum abstract QDialogButtonBoxButtonLayout(Int) from Int to Int {
	var WinLayout;
	var MacLayout;
	var KdeLayout;
	var GnomeLayout;
	var AndroidLayout;
}

@:pythonImport("PyQt5.QtWidgets", "ButtonRole")
@:native("QDialogButtonBox.ButtonRole")
extern enum abstract QDialogButtonBoxButtonRole(Int) from Int to Int {
	var InvalidRole;
	var AcceptRole;
	var RejectRole;
	var DestructiveRole;
	var ActionRole;
	var HelpRole;
	var YesRole;
	var NoRole;
	var ResetRole;
	var ApplyRole;
}

@:pythonImport("PyQt5.QtWidgets", "StandardButton")
@:native("QDialogButtonBox.StandardButton")
extern enum abstract QDialogButtonBoxStandardButton(Int) from Int to Int {
	var NoButton;
	var Ok;
	var Save;
	var SaveAll;
	var Open;
	var Yes;
	var YesToAll;
	var No;
	var NoToAll;
	var Abort;
	var Retry;
	var Ignore;
	var Close;
	var Cancel;
	var Discard;
	var Help;
	var Apply;
	var Reset;
	var RestoreDefaults;
}

