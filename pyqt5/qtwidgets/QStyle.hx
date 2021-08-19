package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtwidgets.QApplication;
import pyqt5.qtgui.QPalette;
import pyqt5.qtgui.QFontMetrics;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QStyleOption;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QSizePolicy;

typedef QStyleState = QFlags<QStyleStateFlag>;
typedef QStyleSubControls = QFlags<QStyleSubControl>;

@:pythonImport("PyQt5.QtWidgets", "QStyle")
@:native("QStyle")
extern class QStyle extends QObject {
	static function visualRect(direction:QtLayoutDirection, boundingRect:QRect, logicalRect:QRect):QRect;
	static function visualPos(direction:QtLayoutDirection, boundingRect:QRect, logicalPos:QPoint):QPoint;
	static function sliderPositionFromValue(min:Int, max:Int, logicalValue:Int, span:Int, ?upsideDown:Bool):Int;
	static function sliderValueFromPosition(min:Int, max:Int, position:Int, span:Int, ?upsideDown:Bool):Int;
	static function visualAlignment(direction:QtLayoutDirection, alignment:QtAlignment):QtAlignment;
	static function alignedRect(direction:QtLayoutDirection, alignment:QtAlignment, size:QSize, rectangle:QRect):QRect;

	function new();

	@:overload(function(?v:QApplication):Void {})
	@:overload(function(?v:QPalette):Void {})
	function polish(?v:QWidget):Void;
	@:overload(function(?v:QApplication):Void {})
	function unpolish(?v:QWidget):Void;
	function itemTextRect(fm:QFontMetrics, r:QRect, flags:Int, enabled:Bool, text:QString):QRect;
	function itemPixmapRect(r:QRect, flags:Int, pixmap:QPixmap):QRect;
	function drawItemText(painter:QPainter, rectangle:QRect, alignment:Int, palette:QPalette, enabled:Bool, text:QString, ?textRole:QPaletteColorRole):Void;
	function drawItemPixmap(painter:QPainter, rect:QRect, alignment:Int, pixmap:QPixmap):Void;
	function standardPalette():QPalette;
	function drawPrimitive(pe:QStylePrimitiveElement, opt:QStyleOption, p:QPainter, ?widget:QWidget):Void;
	function drawControl(element:QStyleControlElement, opt:QStyleOption, p:QPainter, ?widget:QWidget):Void;
	function subElementRect(subElement:QStyleSubElement, option:QStyleOption, ?widget:QWidget):QRect;
	function drawComplexControl(cc:QStyleComplexControl, opt:QStyleOptionComplex, p:QPainter, ?widget:QWidget):Void;
	function hitTestComplexControl(cc:QStyleComplexControl, opt:QStyleOptionComplex, pt:QPoint, ?widget:QWidget):QStyleSubControl;
	function subControlRect(cc:QStyleComplexControl, opt:QStyleOptionComplex, sc:QStyleSubControl, ?widget:QWidget):QRect;
	function pixelMetric(metric:QStylePixelMetric, ?option:QStyleOption, ?widget:QWidget):Int;
	function sizeFromContents(ct:QStyleContentsType, opt:QStyleOption, contentsSize:QSize, ?widget:QWidget):QSize;
	function styleHint(stylehint:QStyleStyleHint, ?option:QStyleOption, ?widget:QWidget, ?returnData:QStyleHintReturn):Int;
	function standardPixmap(standardPixmap:QStyleStandardPixmap, ?option:QStyleOption, ?widget:QWidget):QPixmap;
	function standardIcon(standardIcon:QStyleStandardPixmap, ?option:QStyleOption, ?widget:QWidget):QIcon;
	function generatedIconPixmap(iconMode:QIconMode, pixmap:QPixmap, opt:QStyleOption):QPixmap;
	function layoutSpacing(control1:QSizePolicyControlType, control2:QSizePolicyControlType, orientation:QtOrientation, ?option:QStyleOption, ?widget:QWidget):Int;
	function combinedLayoutSpacing(controls1:QSizePolicyControlTypes, controls2:QSizePolicyControlTypes, orientation:QtOrientation, ?option:QStyleOption, ?widget:QWidget):Int;
	function proxy():QStyle;
}

@:pythonImport("PyQt5.QtWidgets", "QStyle")
@:native("QStyle")
extern enum abstract QStyleStateFlag(Int) from Int to Int {
	var State_None;
	var State_Enabled;
	var State_Raised;
	var State_Sunken;
	var State_Off;
	var State_NoChange;
	var State_On;
	var State_DownArrow;
	var State_Horizontal;
	var State_HasFocus;
	var State_Top;
	var State_Bottom;
	var State_FocusAtBorder;
	var State_AutoRaise;
	var State_MouseOver;
	var State_UpArrow;
	var State_Selected;
	var State_Active;
	var State_Open;
	var State_Children;
	var State_Item;
	var State_Sibling;
	var State_Editing;
	var State_KeyboardFocusChange;
	var State_ReadOnly;
	var State_Window;
	var State_Small;
	var State_Mini;
}

@:pythonImport("PyQt5.QtWidgets", "QStyle")
@:native("QStyle")
extern enum abstract QStylePrimitiveElement(Int) from Int to Int {
	var PE_Frame;
	var PE_FrameDefaultButton;
	var PE_FrameDockWidget;
	var PE_FrameFocusRect;
	var PE_FrameGroupBox;
	var PE_FrameLineEdit;
	var PE_FrameMenu;
	var PE_FrameStatusBar;
	var PE_FrameTabWidget;
	var PE_FrameWindow;
	var PE_FrameButtonBevel;
	var PE_FrameButtonTool;
	var PE_FrameTabBarBase;
	var PE_PanelButtonCommand;
	var PE_PanelButtonBevel;
	var PE_PanelButtonTool;
	var PE_PanelMenuBar;
	var PE_PanelToolBar;
	var PE_PanelLineEdit;
	var PE_IndicatorArrowDown;
	var PE_IndicatorArrowLeft;
	var PE_IndicatorArrowRight;
	var PE_IndicatorArrowUp;
	var PE_IndicatorBranch;
	var PE_IndicatorButtonDropDown;
	var PE_IndicatorViewItemCheck;
	var PE_IndicatorCheckBox;
	var PE_IndicatorDockWidgetResizeHandle;
	var PE_IndicatorHeaderArrow;
	var PE_IndicatorMenuCheckMark;
	var PE_IndicatorProgressChunk;
	var PE_IndicatorRadioButton;
	var PE_IndicatorSpinDown;
	var PE_IndicatorSpinMinus;
	var PE_IndicatorSpinPlus;
	var PE_IndicatorSpinUp;
	var PE_IndicatorToolBarHandle;
	var PE_IndicatorToolBarSeparator;
	var PE_PanelTipLabel;
	var PE_IndicatorTabTear;
	var PE_PanelScrollAreaCorner;
	var PE_Widget;
	var PE_IndicatorColumnViewArrow;
	var PE_FrameStatusBarItem;
	var PE_IndicatorItemViewItemCheck;
	var PE_IndicatorItemViewItemDrop;
	var PE_PanelItemViewItem;
	var PE_PanelItemViewRow;
	var PE_PanelStatusBar;
	var PE_IndicatorTabClose;
	var PE_PanelMenu;
	var PE_IndicatorTabTearLeft;
	var PE_IndicatorTabTearRight;
	var PE_CustomBase;
}

@:pythonImport("PyQt5.QtWidgets", "QStyle")
@:native("QStyle")
extern enum abstract QStyleControlElement(Int) from Int to Int {
	var CE_PushButton;
	var CE_PushButtonBevel;
	var CE_PushButtonLabel;
	var CE_CheckBox;
	var CE_CheckBoxLabel;
	var CE_RadioButton;
	var CE_RadioButtonLabel;
	var CE_TabBarTab;
	var CE_TabBarTabShape;
	var CE_TabBarTabLabel;
	var CE_ProgressBar;
	var CE_ProgressBarGroove;
	var CE_ProgressBarContents;
	var CE_ProgressBarLabel;
	var CE_MenuItem;
	var CE_MenuScroller;
	var CE_MenuVMargin;
	var CE_MenuHMargin;
	var CE_MenuTearoff;
	var CE_MenuEmptyArea;
	var CE_MenuBarItem;
	var CE_MenuBarEmptyArea;
	var CE_ToolButtonLabel;
	var CE_Header;
	var CE_HeaderSection;
	var CE_HeaderLabel;
	var CE_ToolBoxTab;
	var CE_SizeGrip;
	var CE_Splitter;
	var CE_RubberBand;
	var CE_DockWidgetTitle;
	var CE_ScrollBarAddLine;
	var CE_ScrollBarSubLine;
	var CE_ScrollBarAddPage;
	var CE_ScrollBarSubPage;
	var CE_ScrollBarSlider;
	var CE_ScrollBarFirst;
	var CE_ScrollBarLast;
	var CE_FocusFrame;
	var CE_ComboBoxLabel;
	var CE_ToolBar;
	var CE_ToolBoxTabShape;
	var CE_ToolBoxTabLabel;
	var CE_HeaderEmptyArea;
	var CE_ColumnViewGrip;
	var CE_ItemViewItem;
	var CE_ShapedFrame;
	var CE_CustomBase;
}

@:pythonImport("PyQt5.QtWidgets", "QStyle")
@:native("QStyle")
extern enum abstract QStyleSubElement(Int) from Int to Int {
	var SE_PushButtonContents;
	var SE_PushButtonFocusRect;
	var SE_CheckBoxIndicator;
	var SE_CheckBoxContents;
	var SE_CheckBoxFocusRect;
	var SE_CheckBoxClickRect;
	var SE_RadioButtonIndicator;
	var SE_RadioButtonContents;
	var SE_RadioButtonFocusRect;
	var SE_RadioButtonClickRect;
	var SE_ComboBoxFocusRect;
	var SE_SliderFocusRect;
	var SE_ProgressBarGroove;
	var SE_ProgressBarContents;
	var SE_ProgressBarLabel;
	var SE_ToolBoxTabContents;
	var SE_HeaderLabel;
	var SE_HeaderArrow;
	var SE_TabWidgetTabBar;
	var SE_TabWidgetTabPane;
	var SE_TabWidgetTabContents;
	var SE_TabWidgetLeftCorner;
	var SE_TabWidgetRightCorner;
	var SE_ViewItemCheckIndicator;
	var SE_TabBarTearIndicator;
	var SE_TreeViewDisclosureItem;
	var SE_LineEditContents;
	var SE_FrameContents;
	var SE_DockWidgetCloseButton;
	var SE_DockWidgetFloatButton;
	var SE_DockWidgetTitleBarText;
	var SE_DockWidgetIcon;
	var SE_CheckBoxLayoutItem;
	var SE_ComboBoxLayoutItem;
	var SE_DateTimeEditLayoutItem;
	var SE_DialogButtonBoxLayoutItem;
	var SE_LabelLayoutItem;
	var SE_ProgressBarLayoutItem;
	var SE_PushButtonLayoutItem;
	var SE_RadioButtonLayoutItem;
	var SE_SliderLayoutItem;
	var SE_SpinBoxLayoutItem;
	var SE_ToolButtonLayoutItem;
	var SE_FrameLayoutItem;
	var SE_GroupBoxLayoutItem;
	var SE_TabWidgetLayoutItem;
	var SE_ItemViewItemCheckIndicator;
	var SE_ItemViewItemDecoration;
	var SE_ItemViewItemText;
	var SE_ItemViewItemFocusRect;
	var SE_TabBarTabLeftButton;
	var SE_TabBarTabRightButton;
	var SE_TabBarTabText;
	var SE_ShapedFrameContents;
	var SE_ToolBarHandle;
	var SE_TabBarTearIndicatorLeft;
	var SE_TabBarScrollLeftButton;
	var SE_TabBarScrollRightButton;
	var SE_TabBarTearIndicatorRight;
	var SE_PushButtonBevel;
	var SE_CustomBase;
}

@:pythonImport("PyQt5.QtWidgets", "QStyle")
@:native("QStyle")
extern enum abstract QStyleComplexControl(Int) from Int to Int {
	var CC_SpinBox;
	var CC_ComboBox;
	var CC_ScrollBar;
	var CC_Slider;
	var CC_ToolButton;
	var CC_TitleBar;
	var CC_Dial;
	var CC_GroupBox;
	var CC_MdiControls;
	var CC_CustomBase;
}

@:pythonImport("PyQt5.QtWidgets", "QStyle")
@:native("QStyle")
extern enum abstract QStyleSubControl(Int) from Int to Int {
	var SC_None;
	var SC_ScrollBarAddLine;
	var SC_ScrollBarSubLine;
	var SC_ScrollBarAddPage;
	var SC_ScrollBarSubPage;
	var SC_ScrollBarFirst;
	var SC_ScrollBarLast;
	var SC_ScrollBarSlider;
	var SC_ScrollBarGroove;
	var SC_SpinBoxUp;
	var SC_SpinBoxDown;
	var SC_SpinBoxFrame;
	var SC_SpinBoxEditField;
	var SC_ComboBoxFrame;
	var SC_ComboBoxEditField;
	var SC_ComboBoxArrow;
	var SC_ComboBoxListBoxPopup;
	var SC_SliderGroove;
	var SC_SliderHandle;
	var SC_SliderTickmarks;
	var SC_ToolButton;
	var SC_ToolButtonMenu;
	var SC_TitleBarSysMenu;
	var SC_TitleBarMinButton;
	var SC_TitleBarMaxButton;
	var SC_TitleBarCloseButton;
	var SC_TitleBarNormalButton;
	var SC_TitleBarShadeButton;
	var SC_TitleBarUnshadeButton;
	var SC_TitleBarContextHelpButton;
	var SC_TitleBarLabel;
	var SC_DialGroove;
	var SC_DialHandle;
	var SC_DialTickmarks;
	var SC_GroupBoxCheckBox;
	var SC_GroupBoxLabel;
	var SC_GroupBoxContents;
	var SC_GroupBoxFrame;
	var SC_MdiMinButton;
	var SC_MdiNormalButton;
	var SC_MdiCloseButton;
	var SC_CustomBase;
	var SC_All;
}

@:pythonImport("PyQt5.QtWidgets", "QStyle")
@:native("QStyle")
extern enum abstract QStylePixelMetric(Int) from Int to Int {
	var PM_ButtonMargin;
	var PM_ButtonDefaultIndicator;
	var PM_MenuButtonIndicator;
	var PM_ButtonShiftHorizontal;
	var PM_ButtonShiftVertical;
	var PM_DefaultFrameWidth;
	var PM_SpinBoxFrameWidth;
	var PM_ComboBoxFrameWidth;
	var PM_MaximumDragDistance;
	var PM_ScrollBarExtent;
	var PM_ScrollBarSliderMin;
	var PM_SliderThickness;
	var PM_SliderControlThickness;
	var PM_SliderLength;
	var PM_SliderTickmarkOffset;
	var PM_SliderSpaceAvailable;
	var PM_DockWidgetSeparatorExtent;
	var PM_DockWidgetHandleExtent;
	var PM_DockWidgetFrameWidth;
	var PM_TabBarTabOverlap;
	var PM_TabBarTabHSpace;
	var PM_TabBarTabVSpace;
	var PM_TabBarBaseHeight;
	var PM_TabBarBaseOverlap;
	var PM_ProgressBarChunkWidth;
	var PM_SplitterWidth;
	var PM_TitleBarHeight;
	var PM_MenuScrollerHeight;
	var PM_MenuHMargin;
	var PM_MenuVMargin;
	var PM_MenuPanelWidth;
	var PM_MenuTearoffHeight;
	var PM_MenuDesktopFrameWidth;
	var PM_MenuBarPanelWidth;
	var PM_MenuBarItemSpacing;
	var PM_MenuBarVMargin;
	var PM_MenuBarHMargin;
	var PM_IndicatorWidth;
	var PM_IndicatorHeight;
	var PM_ExclusiveIndicatorWidth;
	var PM_ExclusiveIndicatorHeight;
	var PM_DialogButtonsSeparator;
	var PM_DialogButtonsButtonWidth;
	var PM_DialogButtonsButtonHeight;
	var PM_MdiSubWindowFrameWidth;
	var PM_MDIFrameWidth;
	var PM_MdiSubWindowMinimizedWidth;
	var PM_MDIMinimizedWidth;
	var PM_HeaderMargin;
	var PM_HeaderMarkSize;
	var PM_HeaderGripMargin;
	var PM_TabBarTabShiftHorizontal;
	var PM_TabBarTabShiftVertical;
	var PM_TabBarScrollButtonWidth;
	var PM_ToolBarFrameWidth;
	var PM_ToolBarHandleExtent;
	var PM_ToolBarItemSpacing;
	var PM_ToolBarItemMargin;
	var PM_ToolBarSeparatorExtent;
	var PM_ToolBarExtensionExtent;
	var PM_SpinBoxSliderHeight;
	var PM_DefaultTopLevelMargin;
	var PM_DefaultChildMargin;
	var PM_DefaultLayoutSpacing;
	var PM_ToolBarIconSize;
	var PM_ListViewIconSize;
	var PM_IconViewIconSize;
	var PM_SmallIconSize;
	var PM_LargeIconSize;
	var PM_FocusFrameVMargin;
	var PM_FocusFrameHMargin;
	var PM_ToolTipLabelFrameWidth;
	var PM_CheckBoxLabelSpacing;
	var PM_TabBarIconSize;
	var PM_SizeGripSize;
	var PM_DockWidgetTitleMargin;
	var PM_MessageBoxIconSize;
	var PM_ButtonIconSize;
	var PM_DockWidgetTitleBarButtonMargin;
	var PM_RadioButtonLabelSpacing;
	var PM_LayoutLeftMargin;
	var PM_LayoutTopMargin;
	var PM_LayoutRightMargin;
	var PM_LayoutBottomMargin;
	var PM_LayoutHorizontalSpacing;
	var PM_LayoutVerticalSpacing;
	var PM_TabBar_ScrollButtonOverlap;
	var PM_TextCursorWidth;
	var PM_TabCloseIndicatorWidth;
	var PM_TabCloseIndicatorHeight;
	var PM_ScrollView_ScrollBarSpacing;
	var PM_SubMenuOverlap;
	var PM_ScrollView_ScrollBarOverlap;
	var PM_TreeViewIndentation;
	var PM_HeaderDefaultSectionSizeHorizontal;
	var PM_HeaderDefaultSectionSizeVertical;
	var PM_TitleBarButtonIconSize;
	var PM_TitleBarButtonSize;
	var PM_CustomBase;
}

@:pythonImport("PyQt5.QtWidgets", "QStyle")
@:native("QStyle")
extern enum abstract QStyleContentsType(Int) from Int to Int {
	var CT_PushButton;
	var CT_CheckBox;
	var CT_RadioButton;
	var CT_ToolButton;
	var CT_ComboBox;
	var CT_Splitter;
	var CT_ProgressBar;
	var CT_MenuItem;
	var CT_MenuBarItem;
	var CT_MenuBar;
	var CT_Menu;
	var CT_TabBarTab;
	var CT_Slider;
	var CT_ScrollBar;
	var CT_LineEdit;
	var CT_SpinBox;
	var CT_SizeGrip;
	var CT_TabWidget;
	var CT_DialogButtons;
	var CT_HeaderSection;
	var CT_GroupBox;
	var CT_MdiControls;
	var CT_ItemViewItem;
	var CT_CustomBase;
}

@:pythonImport("PyQt5.QtWidgets", "QStyle")
@:native("QStyle")
extern enum abstract QStyleStyleHint(Int) from Int to Int {
	var SH_EtchDisabledText;
	var SH_DitherDisabledText;
	var SH_ScrollBar_MiddleClickAbsolutePosition;
	var SH_ScrollBar_ScrollWhenPointerLeavesControl;
	var SH_TabBar_SelectMouseType;
	var SH_TabBar_Alignment;
	var SH_Header_ArrowAlignment;
	var SH_Slider_SnapToValue;
	var SH_Slider_SloppyKeyEvents;
	var SH_ProgressDialog_CenterCancelButton;
	var SH_ProgressDialog_TextLabelAlignment;
	var SH_PrintDialog_RightAlignButtons;
	var SH_MainWindow_SpaceBelowMenuBar;
	var SH_FontDialog_SelectAssociatedText;
	var SH_Menu_AllowActiveAndDisabled;
	var SH_Menu_SpaceActivatesItem;
	var SH_Menu_SubMenuPopupDelay;
	var SH_ScrollView_FrameOnlyAroundContents;
	var SH_MenuBar_AltKeyNavigation;
	var SH_ComboBox_ListMouseTracking;
	var SH_Menu_MouseTracking;
	var SH_MenuBar_MouseTracking;
	var SH_ItemView_ChangeHighlightOnFocus;
	var SH_Widget_ShareActivation;
	var SH_Workspace_FillSpaceOnMaximize;
	var SH_ComboBox_Popup;
	var SH_TitleBar_NoBorder;
	var SH_ScrollBar_StopMouseOverSlider;
	var SH_BlinkCursorWhenTextSelected;
	var SH_RichText_FullWidthSelection;
	var SH_Menu_Scrollable;
	var SH_GroupBox_TextLabelVerticalAlignment;
	var SH_GroupBox_TextLabelColor;
	var SH_Menu_SloppySubMenus;
	var SH_Table_GridLineColor;
	var SH_LineEdit_PasswordCharacter;
	var SH_DialogButtons_DefaultButton;
	var SH_ToolBox_SelectedPageTitleBold;
	var SH_TabBar_PreferNoArrows;
	var SH_ScrollBar_LeftClickAbsolutePosition;
	var SH_UnderlineShortcut;
	var SH_SpinBox_AnimateButton;
	var SH_SpinBox_KeyPressAutoRepeatRate;
	var SH_SpinBox_ClickAutoRepeatRate;
	var SH_Menu_FillScreenWithScroll;
	var SH_ToolTipLabel_Opacity;
	var SH_DrawMenuBarSeparator;
	var SH_TitleBar_ModifyNotification;
	var SH_Button_FocusPolicy;
	var SH_MessageBox_UseBorderForButtonSpacing;
	var SH_TitleBar_AutoRaise;
	var SH_ToolButton_PopupDelay;
	var SH_FocusFrame_Mask;
	var SH_RubberBand_Mask;
	var SH_WindowFrame_Mask;
	var SH_SpinControls_DisableOnBounds;
	var SH_Dial_BackgroundRole;
	var SH_ComboBox_LayoutDirection;
	var SH_ItemView_EllipsisLocation;
	var SH_ItemView_ShowDecorationSelected;
	var SH_ItemView_ActivateItemOnSingleClick;
	var SH_ScrollBar_ContextMenu;
	var SH_ScrollBar_RollBetweenButtons;
	var SH_Slider_StopMouseOverSlider;
	var SH_Slider_AbsoluteSetButtons;
	var SH_Slider_PageSetButtons;
	var SH_Menu_KeyboardSearch;
	var SH_TabBar_ElideMode;
	var SH_DialogButtonLayout;
	var SH_ComboBox_PopupFrameStyle;
	var SH_MessageBox_TextInteractionFlags;
	var SH_DialogButtonBox_ButtonsHaveIcons;
	var SH_SpellCheckUnderlineStyle;
	var SH_MessageBox_CenterButtons;
	var SH_Menu_SelectionWrap;
	var SH_ItemView_MovementWithoutUpdatingSelection;
	var SH_ToolTip_Mask;
	var SH_FocusFrame_AboveWidget;
	var SH_TextControl_FocusIndicatorTextCharFormat;
	var SH_WizardStyle;
	var SH_ItemView_ArrowKeysNavigateIntoChildren;
	var SH_Menu_Mask;
	var SH_Menu_FlashTriggeredItem;
	var SH_Menu_FadeOutOnHide;
	var SH_SpinBox_ClickAutoRepeatThreshold;
	var SH_ItemView_PaintAlternatingRowColorsForEmptyArea;
	var SH_FormLayoutWrapPolicy;
	var SH_TabWidget_DefaultTabPosition;
	var SH_ToolBar_Movable;
	var SH_FormLayoutFieldGrowthPolicy;
	var SH_FormLayoutFormAlignment;
	var SH_FormLayoutLabelAlignment;
	var SH_ItemView_DrawDelegateFrame;
	var SH_TabBar_CloseButtonPosition;
	var SH_DockWidget_ButtonsHaveFrame;
	var SH_ToolButtonStyle;
	var SH_RequestSoftwareInputPanel;
	var SH_ListViewExpand_SelectMouseType;
	var SH_ScrollBar_Transient;
	var SH_Menu_SupportsSections;
	var SH_ToolTip_WakeUpDelay;
	var SH_ToolTip_FallAsleepDelay;
	var SH_Widget_Animate;
	var SH_Splitter_OpaqueResize;
	var SH_LineEdit_PasswordMaskDelay;
	var SH_TabBar_ChangeCurrentDelay;
	var SH_Menu_SubMenuUniDirection;
	var SH_Menu_SubMenuUniDirectionFailCount;
	var SH_Menu_SubMenuSloppySelectOtherActions;
	var SH_Menu_SubMenuSloppyCloseTimeout;
	var SH_Menu_SubMenuResetWhenReenteringParent;
	var SH_Menu_SubMenuDontStartSloppyOnLeave;
	var SH_ItemView_ScrollMode;
	var SH_TitleBar_ShowToolTipsOnButtons;
	var SH_Widget_Animation_Duration;
	var SH_ComboBox_AllowWheelScrolling;
	var SH_SpinBox_ButtonsInsideFrame;
	var SH_SpinBox_StepModifier;
	var SH_CustomBase;
}

@:pythonImport("PyQt5.QtWidgets", "QStyle")
@:native("QStyle")
extern enum abstract QStyleStandardPixmap(Int) from Int to Int {
	var SP_TitleBarMenuButton;
	var SP_TitleBarMinButton;
	var SP_TitleBarMaxButton;
	var SP_TitleBarCloseButton;
	var SP_TitleBarNormalButton;
	var SP_TitleBarShadeButton;
	var SP_TitleBarUnshadeButton;
	var SP_TitleBarContextHelpButton;
	var SP_DockWidgetCloseButton;
	var SP_MessageBoxInformation;
	var SP_MessageBoxWarning;
	var SP_MessageBoxCritical;
	var SP_MessageBoxQuestion;
	var SP_DesktopIcon;
	var SP_TrashIcon;
	var SP_ComputerIcon;
	var SP_DriveFDIcon;
	var SP_DriveHDIcon;
	var SP_DriveCDIcon;
	var SP_DriveDVDIcon;
	var SP_DriveNetIcon;
	var SP_DirOpenIcon;
	var SP_DirClosedIcon;
	var SP_DirLinkIcon;
	var SP_FileIcon;
	var SP_FileLinkIcon;
	var SP_ToolBarHorizontalExtensionButton;
	var SP_ToolBarVerticalExtensionButton;
	var SP_FileDialogStart;
	var SP_FileDialogEnd;
	var SP_FileDialogToParent;
	var SP_FileDialogNewFolder;
	var SP_FileDialogDetailedView;
	var SP_FileDialogInfoView;
	var SP_FileDialogContentsView;
	var SP_FileDialogListView;
	var SP_FileDialogBack;
	var SP_DirIcon;
	var SP_DialogOkButton;
	var SP_DialogCancelButton;
	var SP_DialogHelpButton;
	var SP_DialogOpenButton;
	var SP_DialogSaveButton;
	var SP_DialogCloseButton;
	var SP_DialogApplyButton;
	var SP_DialogResetButton;
	var SP_DialogDiscardButton;
	var SP_DialogYesButton;
	var SP_DialogNoButton;
	var SP_ArrowUp;
	var SP_ArrowDown;
	var SP_ArrowLeft;
	var SP_ArrowRight;
	var SP_ArrowBack;
	var SP_ArrowForward;
	var SP_DirHomeIcon;
	var SP_CommandLink;
	var SP_VistaShield;
	var SP_BrowserReload;
	var SP_BrowserStop;
	var SP_MediaPlay;
	var SP_MediaStop;
	var SP_MediaPause;
	var SP_MediaSkipForward;
	var SP_MediaSkipBackward;
	var SP_MediaSeekForward;
	var SP_MediaSeekBackward;
	var SP_MediaVolume;
	var SP_MediaVolumeMuted;
	var SP_DirLinkOpenIcon;
	var SP_LineEditClearButton;
	var SP_DialogYesToAllButton;
	var SP_DialogNoToAllButton;
	var SP_DialogSaveAllButton;
	var SP_DialogAbortButton;
	var SP_DialogRetryButton;
	var SP_DialogIgnoreButton;
	var SP_RestoreDefaultsButton;
	var SP_CustomBase;
}

@:pythonImport("PyQt5.QtWidgets", "QStyle")
@:native("QStyle")
extern enum abstract QStyleRequestSoftwareInputPanel(Int) from Int to Int {
	var RSIP_OnMouseClickAndAlreadyFocused;
	var RSIP_OnMouseClick;
}

