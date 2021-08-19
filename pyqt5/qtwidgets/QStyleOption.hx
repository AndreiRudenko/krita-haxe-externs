package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtgui.QTransform;

typedef QStyleOptionFrameFrameFeatures = QFlags<QStyleOptionFrameFrameFeature>;
typedef QStyleOptionButtonButtonFeatures = QFlags<QStyleOptionButtonButtonFeature>;
typedef QStyleOptionTabCornerWidgets = QFlags<QStyleOptionTabCornerWidget>;
typedef QStyleOptionTabTabFeatures = QFlags<QStyleOptionTabTabFeature>;
typedef QStyleOptionViewItemViewItemFeatures = QFlags<QStyleOptionViewItemViewItemFeature>;
typedef QStyleOptionToolButtonToolButtonFeatures = QFlags<QStyleOptionToolButtonToolButtonFeature>;
typedef QStyleOptionToolBarToolBarFeatures = QFlags<QStyleOptionToolBarToolBarFeature>;

@:pythonImport("PyQt5.QtWidgets", "QStyleOption")
@:native("QStyleOption")
extern class QStyleOption {
	@:overload(function(?version:Int, ?type:Int):QStyleOption {})
	function new(other:QStyleOption);

	function initFrom(w:QWidget):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOption")
@:native("QStyleOption")
extern enum abstract QStyleOptionOptionType(Int) from Int to Int {
	var SO_Default;
	var SO_FocusRect;
	var SO_Button;
	var SO_Tab;
	var SO_MenuItem;
	var SO_Frame;
	var SO_ProgressBar;
	var SO_ToolBox;
	var SO_Header;
	var SO_DockWidget;
	var SO_ViewItem;
	var SO_TabWidgetFrame;
	var SO_TabBarBase;
	var SO_RubberBand;
	var SO_ToolBar;
	var SO_Complex;
	var SO_Slider;
	var SO_SpinBox;
	var SO_ToolButton;
	var SO_ComboBox;
	var SO_TitleBar;
	var SO_GroupBox;
	var SO_ComplexCustomBase;
	var SO_GraphicsItem;
	var SO_SizeGrip;
	var SO_CustomBase;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOption")
@:native("QStyleOption")
extern enum abstract QStyleOptionStyleOptionType(Int) from Int to Int {
	var Type;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOption")
@:native("QStyleOption")
extern enum abstract QStyleOptionStyleOptionVersion(Int) from Int to Int {
	var Version;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionFocusRect")
@:native("QStyleOptionFocusRect")
extern class QStyleOptionFocusRect extends QStyleOption {
	@:overload(function():QStyleOptionFocusRect {})
	function new(other:QStyleOptionFocusRect);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionFrame")
@:native("QStyleOptionFrame")
extern class QStyleOptionFrame extends QStyleOption {
	@:overload(function():QStyleOptionFrame {})
	function new(other:QStyleOptionFrame);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionFrame")
@:native("QStyleOptionFrame")
extern enum abstract QStyleOptionFrameFrameFeature(Int) from Int to Int {
	var None;
	var Flat;
	var Rounded;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionTabWidgetFrame")
@:native("QStyleOptionTabWidgetFrame")
extern class QStyleOptionTabWidgetFrame extends QStyleOption {
	@:overload(function():QStyleOptionTabWidgetFrame {})
	function new(other:QStyleOptionTabWidgetFrame);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionTabBarBase")
@:native("QStyleOptionTabBarBase")
extern class QStyleOptionTabBarBase extends QStyleOption {
	@:overload(function():QStyleOptionTabBarBase {})
	function new(other:QStyleOptionTabBarBase);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionHeader")
@:native("QStyleOptionHeader")
extern class QStyleOptionHeader extends QStyleOption {
	@:overload(function():QStyleOptionHeader {})
	function new(other:QStyleOptionHeader);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionHeader")
@:native("QStyleOptionHeader")
extern enum abstract QStyleOptionHeaderSectionPosition(Int) from Int to Int {
	var Beginning;
	var Middle;
	var End;
	var OnlyOneSection;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionHeader")
@:native("QStyleOptionHeader")
extern enum abstract QStyleOptionHeaderSelectedPosition(Int) from Int to Int {
	var NotAdjacent;
	var NextIsSelected;
	var PreviousIsSelected;
	var NextAndPreviousAreSelected;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionHeader")
@:native("QStyleOptionHeader")
extern enum abstract QStyleOptionHeaderSortIndicator(Int) from Int to Int {
	var None;
	var SortUp;
	var SortDown;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionButton")
@:native("QStyleOptionButton")
extern class QStyleOptionButton extends QStyleOption {
	@:overload(function():QStyleOptionButton {})
	function new(other:QStyleOptionButton);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionButton")
@:native("QStyleOptionButton")
extern enum abstract QStyleOptionButtonButtonFeature(Int) from Int to Int {
	var None;
	var Flat;
	var HasMenu;
	var DefaultButton;
	var AutoDefaultButton;
	var CommandLinkButton;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionTab")
@:native("QStyleOptionTab")
extern class QStyleOptionTab extends QStyleOption {
	@:overload(function():QStyleOptionTab {})
	function new(other:QStyleOptionTab);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionTab")
@:native("QStyleOptionTab")
extern enum abstract QStyleOptionTabTabPosition(Int) from Int to Int {
	var Beginning;
	var Middle;
	var End;
	var OnlyOneTab;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionTab")
@:native("QStyleOptionTab")
extern enum abstract QStyleOptionTabCornerWidget(Int) from Int to Int {
	var NoCornerWidgets;
	var LeftCornerWidget;
	var RightCornerWidget;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionTab")
@:native("QStyleOptionTab")
extern enum abstract QStyleOptionTabTabFeature(Int) from Int to Int {
	var None;
	var HasFrame;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionTabV4")
@:native("QStyleOptionTabV4")
extern class QStyleOptionTabV4 extends QStyleOptionTab {
	function new();
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionProgressBar")
@:native("QStyleOptionProgressBar")
extern class QStyleOptionProgressBar extends QStyleOption {
	@:overload(function():QStyleOptionProgressBar {})
	function new(other:QStyleOptionProgressBar);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionMenuItem")
@:native("QStyleOptionMenuItem")
extern class QStyleOptionMenuItem extends QStyleOption {
	@:overload(function():QStyleOptionMenuItem {})
	function new(other:QStyleOptionMenuItem);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionMenuItem")
@:native("QStyleOptionMenuItem")
extern enum abstract QStyleOptionMenuItemMenuItemType(Int) from Int to Int {
	var Normal;
	var DefaultItem;
	var Separator;
	var SubMenu;
	var Scroller;
	var TearOff;
	var Margin;
	var EmptyArea;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionMenuItem")
@:native("QStyleOptionMenuItem")
extern enum abstract QStyleOptionMenuItemCheckType(Int) from Int to Int {
	var NotCheckable;
	var Exclusive;
	var NonExclusive;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionDockWidget")
@:native("QStyleOptionDockWidget")
extern class QStyleOptionDockWidget extends QStyleOption {
	@:overload(function():QStyleOptionDockWidget {})
	function new(other:QStyleOptionDockWidget);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionViewItem")
@:native("QStyleOptionViewItem")
extern class QStyleOptionViewItem extends QStyleOption {
	@:overload(function():QStyleOptionViewItem {})
	function new(other:QStyleOptionViewItem);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionViewItem")
@:native("QStyleOptionViewItem")
extern enum abstract QStyleOptionViewItemPosition(Int) from Int to Int {
	var Left;
	var Right;
	var Top;
	var Bottom;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionViewItem")
@:native("QStyleOptionViewItem")
extern enum abstract QStyleOptionViewItemViewItemFeature(Int) from Int to Int {
	var None;
	var WrapText;
	var Alternate;
	var HasCheckIndicator;
	var HasDisplay;
	var HasDecoration;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionViewItem")
@:native("QStyleOptionViewItem")
extern enum abstract QStyleOptionViewItemViewItemPosition(Int) from Int to Int {
	var Invalid;
	var Beginning;
	var Middle;
	var End;
	var OnlyOne;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionToolBox")
@:native("QStyleOptionToolBox")
extern class QStyleOptionToolBox extends QStyleOption {
	@:overload(function():QStyleOptionToolBox {})
	function new(other:QStyleOptionToolBox);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionRubberBand")
@:native("QStyleOptionRubberBand")
extern class QStyleOptionRubberBand extends QStyleOption {
	@:overload(function():QStyleOptionRubberBand {})
	function new(other:QStyleOptionRubberBand);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionComplex")
@:native("QStyleOptionComplex")
extern class QStyleOptionComplex extends QStyleOption {
	@:overload(function(?version:Int, ?type:Int):QStyleOptionComplex {})
	function new(other:QStyleOptionComplex);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionSlider")
@:native("QStyleOptionSlider")
extern class QStyleOptionSlider extends QStyleOptionComplex {
	@:overload(function():QStyleOptionSlider {})
	function new(other:QStyleOptionSlider);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionSpinBox")
@:native("QStyleOptionSpinBox")
extern class QStyleOptionSpinBox extends QStyleOptionComplex {
	@:overload(function():QStyleOptionSpinBox {})
	function new(other:QStyleOptionSpinBox);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionToolButton")
@:native("QStyleOptionToolButton")
extern class QStyleOptionToolButton extends QStyleOptionComplex {
	@:overload(function():QStyleOptionToolButton {})
	function new(other:QStyleOptionToolButton);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionToolButton")
@:native("QStyleOptionToolButton")
extern enum abstract QStyleOptionToolButtonToolButtonFeature(Int) from Int to Int {
	var None;
	var Arrow;
	var Menu;
	var PopupDelay;
	var MenuButtonPopup;
	var HasMenu;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionComboBox")
@:native("QStyleOptionComboBox")
extern class QStyleOptionComboBox extends QStyleOptionComplex {
	@:overload(function():QStyleOptionComboBox {})
	function new(other:QStyleOptionComboBox);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionTitleBar")
@:native("QStyleOptionTitleBar")
extern class QStyleOptionTitleBar extends QStyleOptionComplex {
	@:overload(function():QStyleOptionTitleBar {})
	function new(other:QStyleOptionTitleBar);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleHintReturn")
@:native("QStyleHintReturn")
extern class QStyleHintReturn {
	function new(?version:Int, ?type:Int);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleHintReturn")
@:native("QStyleHintReturn")
extern enum abstract QStyleHintReturnHintReturnType(Int) from Int to Int {
	var SH_Default;
	var SH_Mask;
	var SH_Variant;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleHintReturnMask")
@:native("QStyleHintReturnMask")
extern class QStyleHintReturnMask extends QStyleHintReturn {
	function new();
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionToolBar")
@:native("QStyleOptionToolBar")
extern class QStyleOptionToolBar extends QStyleOption {
	@:overload(function():QStyleOptionToolBar {})
	function new(other:QStyleOptionToolBar);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionToolBar")
@:native("QStyleOptionToolBar")
extern enum abstract QStyleOptionToolBarToolBarPosition(Int) from Int to Int {
	var Beginning;
	var Middle;
	var End;
	var OnlyOne;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionToolBar")
@:native("QStyleOptionToolBar")
extern enum abstract QStyleOptionToolBarToolBarFeature(Int) from Int to Int {
	var None;
	var Movable;
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionGroupBox")
@:native("QStyleOptionGroupBox")
extern class QStyleOptionGroupBox extends QStyleOptionComplex {
	@:overload(function():QStyleOptionGroupBox {})
	function new(other:QStyleOptionGroupBox);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionSizeGrip")
@:native("QStyleOptionSizeGrip")
extern class QStyleOptionSizeGrip extends QStyleOptionComplex {
	@:overload(function():QStyleOptionSizeGrip {})
	function new(other:QStyleOptionSizeGrip);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleOptionGraphicsItem")
@:native("QStyleOptionGraphicsItem")
extern class QStyleOptionGraphicsItem extends QStyleOption {
	static function levelOfDetailFromTransform(worldTransform:QTransform):Float;

	@:overload(function():QStyleOptionGraphicsItem {})
	function new(other:QStyleOptionGraphicsItem);
}

@:pythonImport("PyQt5.QtWidgets", "QStyleHintReturnVariant")
@:native("QStyleHintReturnVariant")
extern class QStyleHintReturnVariant extends QStyleHintReturn {
	function new();
}

