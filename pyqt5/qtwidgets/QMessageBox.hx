package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QDialog;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtwidgets.QAbstractButton;
import pyqt5.qtwidgets.QPushButton;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QSignal;
import pyqt5.qtwidgets.QCheckBox;

typedef QMessageBoxStandardButtons = QFlags<QMessageBoxStandardButton>;
typedef QMessageBoxButton = QMessageBoxStandardButton;

@:pythonImport("PyQt5.QtWidgets", "QMessageBox")
@:native("QMessageBox")
extern class QMessageBox extends QDialog {
	static function information(parent:QWidget, title:QString, text:QString, ?buttons:QMessageBoxStandardButtons, ?defaultButton:QMessageBoxStandardButton):QMessageBoxStandardButton;
	static function question(parent:QWidget, title:QString, text:QString, ?buttons:QMessageBoxStandardButtons, ?defaultButton:QMessageBoxStandardButton):QMessageBoxStandardButton;
	static function warning(parent:QWidget, title:QString, text:QString, ?buttons:QMessageBoxStandardButtons, ?defaultButton:QMessageBoxStandardButton):QMessageBoxStandardButton;
	static function critical(parent:QWidget, title:QString, text:QString, ?buttons:QMessageBoxStandardButtons, ?defaultButton:QMessageBoxStandardButton):QMessageBoxStandardButton;
	static function about(parent:QWidget, caption:QString, text:QString):Void;
	static function aboutQt(parent:QWidget, ?title:QString):Void;
	static function standardIcon(icon:QMessageBoxIcon):QPixmap;

	var buttonClicked:QSignal1<QAbstractButton>;

	@:overload(function(?parent:QWidget):QMessageBox {})
	function new(icon:QMessageBoxIcon, title:QString, text:QString, ?buttons:QMessageBoxStandardButtons, ?parent:QWidget, ?flags:QtWindowFlags);

	function text():QString;
	function setText(?v:QString):Void;
	function icon():QMessageBoxIcon;
	function setIcon(?v:QMessageBoxIcon):Void;
	function iconPixmap():QPixmap;
	function setIconPixmap(?v:QPixmap):Void;
	function textFormat():QtTextFormat;
	function setTextFormat(?v:QtTextFormat):Void;
	function event(e:QEvent):Bool;
	function resizeEvent(?v:QResizeEvent):Void;
	function showEvent(?v:QShowEvent):Void;
	function closeEvent(?v:QCloseEvent):Void;
	function keyPressEvent(?v:QKeyEvent):Void;
	function changeEvent(?v:QEvent):Void;
	@:overload(function(text:QString, role:QMessageBoxButtonRole):QPushButton {})
	@:overload(function(button:QMessageBoxStandardButton):QPushButton {})
	function addButton(button:QAbstractButton, role:QMessageBoxButtonRole):Void;
	function removeButton(button:QAbstractButton):Void;
	function setStandardButtons(buttons:QMessageBoxStandardButtons):Void;
	function standardButtons():QMessageBoxStandardButtons;
	function standardButton(button:QAbstractButton):QMessageBoxStandardButton;
	function button(which:QMessageBoxStandardButton):QAbstractButton;
	function defaultButton():QPushButton;
	@:overload(function(button:QMessageBoxStandardButton):Void {})
	function setDefaultButton(button:QPushButton):Void;
	function escapeButton():QAbstractButton;
	@:overload(function(button:QMessageBoxStandardButton):Void {})
	function setEscapeButton(button:QAbstractButton):Void;
	function clickedButton():QAbstractButton;
	function informativeText():QString;
	function setInformativeText(text:QString):Void;
	function detailedText():QString;
	function setDetailedText(text:QString):Void;
	function setWindowTitle(title:QString):Void;
	function setWindowModality(windowModality:QtWindowModality):Void;
	@:overload(function(slot:Dynamic):Void {})
	function open():Void;
	function buttons():QList<QAbstractButton>;
	function buttonRole(button:QAbstractButton):QMessageBoxButtonRole;
	function setTextInteractionFlags(flags:QtTextInteractionFlags):Void;
	function textInteractionFlags():QtTextInteractionFlags;
	function setCheckBox(cb:QCheckBox):Void;
	function checkBox():QCheckBox;
}

@:pythonImport("PyQt5.QtWidgets", "QMessageBox")
@:native("QMessageBox")
extern enum abstract QMessageBoxButtonRole(Int) from Int to Int {
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

@:pythonImport("PyQt5.QtWidgets", "QMessageBox")
@:native("QMessageBox")
extern enum abstract QMessageBoxIcon(Int) from Int to Int {
	var NoIcon;
	var Information;
	var Warning;
	var Critical;
	var Question;
}

@:pythonImport("PyQt5.QtWidgets", "QMessageBox")
@:native("QMessageBox")
extern enum abstract QMessageBoxStandardButton(Int) from Int to Int {
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
	var FirstButton;
	var LastButton;
	var YesAll;
	var NoAll;
	var Default;
	var Escape;
	var FlagMask;
	var ButtonMask;
}

