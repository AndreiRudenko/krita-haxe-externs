package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QValidator;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QInputEvent;
import pyqt5.qtwidgets.QLineEdit;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QVariant;

typedef QAbstractSpinBoxStepEnabled = QFlags<QAbstractSpinBoxStepEnabledFlag>;

@:pythonImport("PyQt5.QtWidgets", "QAbstractSpinBox")
@:native("QAbstractSpinBox")
extern class QAbstractSpinBox extends QWidget {
	var editingFinished:QSignal0;

	function new(?parent:QWidget);

	function buttonSymbols():QAbstractSpinBoxButtonSymbols;
	function setButtonSymbols(bs:QAbstractSpinBoxButtonSymbols):Void;
	function text():QString;
	function specialValueText():QString;
	function setSpecialValueText(s:QString):Void;
	function wrapping():Bool;
	function setWrapping(w:Bool):Void;
	function setReadOnly(r:Bool):Void;
	function isReadOnly():Bool;
	function setAlignment(flag:QtAlignment):Void;
	function alignment():QtAlignment;
	function setFrame(?v:Bool):Void;
	function hasFrame():Bool;
	function sizeHint():QSize;
	function minimumSizeHint():QSize;
	function interpretText():Void;
	function event(event:QEvent):Bool;
	function validate(input:QString, pos:Int):QValidatorState;
	function fixup(input:QString):Void;
	function stepBy(steps:Int):Void;
	function stepUp():Void;
	function stepDown():Void;
	function selectAll():Void;
	function clear():Void;
	function resizeEvent(e:QResizeEvent):Void;
	function keyPressEvent(e:QKeyEvent):Void;
	function keyReleaseEvent(e:QKeyEvent):Void;
	function wheelEvent(e:QWheelEvent):Void;
	function focusInEvent(e:QFocusEvent):Void;
	function focusOutEvent(e:QFocusEvent):Void;
	function contextMenuEvent(e:QContextMenuEvent):Void;
	function changeEvent(e:QEvent):Void;
	function closeEvent(e:QCloseEvent):Void;
	function hideEvent(e:QHideEvent):Void;
	function mousePressEvent(e:QMouseEvent):Void;
	function mouseReleaseEvent(e:QMouseEvent):Void;
	function mouseMoveEvent(e:QMouseEvent):Void;
	function timerEvent(e:QTimerEvent):Void;
	function paintEvent(e:QPaintEvent):Void;
	function showEvent(e:QShowEvent):Void;
	function lineEdit():QLineEdit;
	function setLineEdit(e:QLineEdit):Void;
	function stepEnabled():QAbstractSpinBoxStepEnabled;
	function initStyleOption(option:QStyleOptionSpinBox):Void;
	function setCorrectionMode(cm:QAbstractSpinBoxCorrectionMode):Void;
	function correctionMode():QAbstractSpinBoxCorrectionMode;
	function hasAcceptableInput():Bool;
	function setAccelerated(on:Bool):Void;
	function isAccelerated():Bool;
	function setKeyboardTracking(kt:Bool):Void;
	function keyboardTracking():Bool;
	function inputMethodQuery(?v:QtInputMethodQuery):QVariant;
	function setGroupSeparatorShown(shown:Bool):Void;
	function isGroupSeparatorShown():Bool;
}

@:pythonImport("PyQt5.QtWidgets", "StepEnabledFlag")
@:native("QAbstractSpinBox.StepEnabledFlag")
extern enum abstract QAbstractSpinBoxStepEnabledFlag(Int) from Int to Int {
	var StepNone;
	var StepUpEnabled;
	var StepDownEnabled;
}

@:pythonImport("PyQt5.QtWidgets", "ButtonSymbols")
@:native("QAbstractSpinBox.ButtonSymbols")
extern enum abstract QAbstractSpinBoxButtonSymbols(Int) from Int to Int {
	var UpDownArrows;
	var PlusMinus;
	var NoButtons;
}

@:pythonImport("PyQt5.QtWidgets", "CorrectionMode")
@:native("QAbstractSpinBox.CorrectionMode")
extern enum abstract QAbstractSpinBoxCorrectionMode(Int) from Int to Int {
	var CorrectToPreviousValue;
	var CorrectToNearestValue;
}

@:pythonImport("PyQt5.QtWidgets", "StepType")
@:native("QAbstractSpinBox.StepType")
extern enum abstract QAbstractSpinBoxStepType(Int) from Int to Int {
	var DefaultStepType;
	var AdaptiveDecimalStepType;
}

