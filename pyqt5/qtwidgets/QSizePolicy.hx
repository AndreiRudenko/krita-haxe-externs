package pyqt5.qtwidgets;

import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QGlobal;

typedef QSizePolicyControlTypes = QFlags<QSizePolicyControlType>;

@:pythonImport("PyQt5.QtWidgets", "QSizePolicy")
@:native("QSizePolicy")
extern class QSizePolicy {
	@:overload(function():QSizePolicy {})
	@:overload(function(horizontal:QSizePolicyPolicy, vertical:QSizePolicyPolicy, ?type:QSizePolicyControlType):QSizePolicy {})
	function new(variant:QVariant);

	function horizontalPolicy():QSizePolicyPolicy;
	function verticalPolicy():QSizePolicyPolicy;
	function setHorizontalPolicy(d:QSizePolicyPolicy):Void;
	function setVerticalPolicy(d:QSizePolicyPolicy):Void;
	function expandingDirections():QtOrientations;
	function setHeightForWidth(b:Bool):Void;
	function hasHeightForWidth():Bool;
	function horizontalStretch():Int;
	function verticalStretch():Int;
	function setHorizontalStretch(stretchFactor:Int):Void;
	function setVerticalStretch(stretchFactor:Int):Void;
	function transpose():Void;
	function transposed():QSizePolicy;
	function controlType():QSizePolicyControlType;
	function setControlType(type:QSizePolicyControlType):Void;
	function setWidthForHeight(b:Bool):Void;
	function hasWidthForHeight():Bool;
	function retainSizeWhenHidden():Bool;
	function setRetainSizeWhenHidden(retainSize:Bool):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QSizePolicy")
@:native("QSizePolicy")
extern enum abstract QSizePolicyPolicyFlag(Int) from Int to Int {
	var GrowFlag;
	var ExpandFlag;
	var ShrinkFlag;
	var IgnoreFlag;
}

@:pythonImport("PyQt5.QtWidgets", "QSizePolicy")
@:native("QSizePolicy")
extern enum abstract QSizePolicyPolicy(Int) from Int to Int {
	var Fixed;
	var Minimum;
	var Maximum;
	var Preferred;
	var MinimumExpanding;
	var Expanding;
	var Ignored;
}

@:pythonImport("PyQt5.QtWidgets", "QSizePolicy")
@:native("QSizePolicy")
extern enum abstract QSizePolicyControlType(Int) from Int to Int {
	var DefaultType;
	var ButtonBox;
	var CheckBox;
	var ComboBox;
	var Frame;
	var GroupBox;
	var Label;
	var Line;
	var LineEdit;
	var PushButton;
	var RadioButton;
	var Slider;
	var SpinBox;
	var TabWidget;
	var ToolButton;
}

