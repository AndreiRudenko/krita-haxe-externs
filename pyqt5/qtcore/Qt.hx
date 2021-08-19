package pyqt5.qtcore;

import pyqt5.qtcore.QGlobal;

typedef QtKeyboardModifiers = QFlags<QtKeyboardModifier>;
typedef QtMouseButtons = QFlags<QtMouseButton>;
typedef QtOrientations = QFlags<QtOrientation>;
typedef QtAlignment = QFlags<QtAlignmentFlag>;
typedef QtWindowFlags = QFlags<QtWindowType>;
typedef QtWindowStates = QFlags<QtWindowState>;
typedef QtImageConversionFlags = QFlags<QtImageConversionFlag>;
typedef QtDockWidgetAreas = QFlags<QtDockWidgetArea>;
typedef QtToolBarAreas = QFlags<QtToolBarArea>;
typedef QtInputMethodQueries = QFlags<QtInputMethodQuery>;
typedef QtDropActions = QFlags<QtDropAction>;
typedef QtItemFlags = QFlags<QtItemFlag>;
typedef QtMatchFlags = QFlags<QtMatchFlag>;
typedef QtTextInteractionFlags = QFlags<QtTextInteractionFlag>;
typedef QtInputMethodHints = QFlags<QtInputMethodHint>;
typedef QtTouchPointStates = QFlags<QtTouchPointState>;
typedef QtGestureFlags = QFlags<QtGestureFlag>;
typedef QtScreenOrientations = QFlags<QtScreenOrientation>;
typedef QtFindChildOptions = QFlags<QtFindChildOption>;
typedef QtApplicationStates = QFlags<QtApplicationState>;
typedef QtEdges = QFlags<QtEdge>;
typedef QtMouseEventFlags = QFlags<QtMouseEventFlag>;

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern class Qt {
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtGlobalColor(Int) from Int to Int {
	var color0;
	var color1;
	var black;
	var white;
	var darkGray;
	var gray;
	var lightGray;
	var red;
	var green;
	var blue;
	var cyan;
	var magenta;
	var yellow;
	var darkRed;
	var darkGreen;
	var darkBlue;
	var darkCyan;
	var darkMagenta;
	var darkYellow;
	var transparent;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtKeyboardModifier(Int) from Int to Int {
	var NoModifier;
	var ShiftModifier;
	var ControlModifier;
	var AltModifier;
	var MetaModifier;
	var KeypadModifier;
	var GroupSwitchModifier;
	var KeyboardModifierMask;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtModifier(Int) from Int to Int {
	var META;
	var SHIFT;
	var CTRL;
	var ALT;
	var MODIFIER_MASK;
	var UNICODE_ACCEL;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtMouseButton(Int) from Int to Int {
	var NoButton;
	var AllButtons;
	var LeftButton;
	var RightButton;
	var MidButton;
	var MiddleButton;
	var XButton1;
	var XButton2;
	var BackButton;
	var ExtraButton1;
	var ForwardButton;
	var ExtraButton2;
	var TaskButton;
	var ExtraButton3;
	var ExtraButton4;
	var ExtraButton5;
	var ExtraButton6;
	var ExtraButton7;
	var ExtraButton8;
	var ExtraButton9;
	var ExtraButton10;
	var ExtraButton11;
	var ExtraButton12;
	var ExtraButton13;
	var ExtraButton14;
	var ExtraButton15;
	var ExtraButton16;
	var ExtraButton17;
	var ExtraButton18;
	var ExtraButton19;
	var ExtraButton20;
	var ExtraButton21;
	var ExtraButton22;
	var ExtraButton23;
	var ExtraButton24;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtOrientation(Int) from Int to Int {
	var Horizontal;
	var Vertical;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtFocusPolicy(Int) from Int to Int {
	var NoFocus;
	var TabFocus;
	var ClickFocus;
	var StrongFocus;
	var WheelFocus;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtSortOrder(Int) from Int to Int {
	var AscendingOrder;
	var DescendingOrder;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtAlignmentFlag(Int) from Int to Int {
	var AlignLeft;
	var AlignLeading;
	var AlignRight;
	var AlignTrailing;
	var AlignHCenter;
	var AlignJustify;
	var AlignAbsolute;
	var AlignHorizontal_Mask;
	var AlignTop;
	var AlignBottom;
	var AlignVCenter;
	var AlignVertical_Mask;
	var AlignCenter;
	var AlignBaseline;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtTextFlag(Int) from Int to Int {
	var TextSingleLine;
	var TextDontClip;
	var TextExpandTabs;
	var TextShowMnemonic;
	var TextWordWrap;
	var TextWrapAnywhere;
	var TextDontPrint;
	var TextIncludeTrailingSpaces;
	var TextHideMnemonic;
	var TextJustificationForced;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtTextElideMode(Int) from Int to Int {
	var ElideLeft;
	var ElideRight;
	var ElideMiddle;
	var ElideNone;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtWindowType(Int) from Int to Int {
	var Widget;
	var Window;
	var Dialog;
	var Sheet;
	var Drawer;
	var Popup;
	var Tool;
	var ToolTip;
	var SplashScreen;
	var Desktop;
	var SubWindow;
	var WindowType_Mask;
	var MSWindowsFixedSizeDialogHint;
	var MSWindowsOwnDC;
	var X11BypassWindowManagerHint;
	var FramelessWindowHint;
	var CustomizeWindowHint;
	var WindowTitleHint;
	var WindowSystemMenuHint;
	var WindowMinimizeButtonHint;
	var WindowMaximizeButtonHint;
	var WindowMinMaxButtonsHint;
	var WindowContextHelpButtonHint;
	var WindowShadeButtonHint;
	var WindowStaysOnTopHint;
	var WindowStaysOnBottomHint;
	var WindowCloseButtonHint;
	var MacWindowToolBarButtonHint;
	var BypassGraphicsProxyWidget;
	var WindowTransparentForInput;
	var WindowOverridesSystemGestures;
	var WindowDoesNotAcceptFocus;
	var NoDropShadowWindowHint;
	var WindowFullscreenButtonHint;
	var ForeignWindow;
	var BypassWindowManagerHint;
	var CoverWindow;
	var MaximizeUsingFullscreenGeometryHint;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtWindowState(Int) from Int to Int {
	var WindowNoState;
	var WindowMinimized;
	var WindowMaximized;
	var WindowFullScreen;
	var WindowActive;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtWidgetAttribute(Int) from Int to Int {
	var WA_Disabled;
	var WA_UnderMouse;
	var WA_MouseTracking;
	var WA_OpaquePaintEvent;
	var WA_StaticContents;
	var WA_LaidOut;
	var WA_PaintOnScreen;
	var WA_NoSystemBackground;
	var WA_UpdatesDisabled;
	var WA_Mapped;
	var WA_MacNoClickThrough;
	var WA_InputMethodEnabled;
	var WA_WState_Visible;
	var WA_WState_Hidden;
	var WA_ForceDisabled;
	var WA_KeyCompression;
	var WA_PendingMoveEvent;
	var WA_PendingResizeEvent;
	var WA_SetPalette;
	var WA_SetFont;
	var WA_SetCursor;
	var WA_NoChildEventsFromChildren;
	var WA_WindowModified;
	var WA_Resized;
	var WA_Moved;
	var WA_PendingUpdate;
	var WA_InvalidSize;
	var WA_MacMetalStyle;
	var WA_CustomWhatsThis;
	var WA_LayoutOnEntireRect;
	var WA_OutsideWSRange;
	var WA_GrabbedShortcut;
	var WA_TransparentForMouseEvents;
	var WA_PaintUnclipped;
	var WA_SetWindowIcon;
	var WA_NoMouseReplay;
	var WA_DeleteOnClose;
	var WA_RightToLeft;
	var WA_SetLayoutDirection;
	var WA_NoChildEventsForParent;
	var WA_ForceUpdatesDisabled;
	var WA_WState_Created;
	var WA_WState_CompressKeys;
	var WA_WState_InPaintEvent;
	var WA_WState_Reparented;
	var WA_WState_ConfigPending;
	var WA_WState_Polished;
	var WA_WState_OwnSizePolicy;
	var WA_WState_ExplicitShowHide;
	var WA_MouseNoMask;
	var WA_GroupLeader;
	var WA_NoMousePropagation;
	var WA_Hover;
	var WA_InputMethodTransparent;
	var WA_QuitOnClose;
	var WA_KeyboardFocusChange;
	var WA_AcceptDrops;
	var WA_WindowPropagation;
	var WA_NoX11EventCompression;
	var WA_TintedBackground;
	var WA_X11OpenGLOverlay;
	var WA_AttributeCount;
	var WA_AlwaysShowToolTips;
	var WA_MacOpaqueSizeGrip;
	var WA_SetStyle;
	var WA_MacBrushedMetal;
	var WA_SetLocale;
	var WA_MacShowFocusRect;
	var WA_MacNormalSize;
	var WA_MacSmallSize;
	var WA_MacMiniSize;
	var WA_LayoutUsesWidgetRect;
	var WA_StyledBackground;
	var WA_MSWindowsUseDirect3D;
	var WA_MacAlwaysShowToolWindow;
	var WA_StyleSheet;
	var WA_ShowWithoutActivating;
	var WA_NativeWindow;
	var WA_DontCreateNativeAncestors;
	var WA_MacVariableSize;
	var WA_DontShowOnScreen;
	var WA_X11NetWmWindowTypeDesktop;
	var WA_X11NetWmWindowTypeDock;
	var WA_X11NetWmWindowTypeToolBar;
	var WA_X11NetWmWindowTypeMenu;
	var WA_X11NetWmWindowTypeUtility;
	var WA_X11NetWmWindowTypeSplash;
	var WA_X11NetWmWindowTypeDialog;
	var WA_X11NetWmWindowTypeDropDownMenu;
	var WA_X11NetWmWindowTypePopupMenu;
	var WA_X11NetWmWindowTypeToolTip;
	var WA_X11NetWmWindowTypeNotification;
	var WA_X11NetWmWindowTypeCombo;
	var WA_X11NetWmWindowTypeDND;
	var WA_MacFrameworkScaled;
	var WA_TranslucentBackground;
	var WA_AcceptTouchEvents;
	var WA_TouchPadAcceptSingleTouchEvents;
	var WA_X11DoNotAcceptFocus;
	var WA_MacNoShadow;
	var WA_AlwaysStackOnTop;
	var WA_TabletTracking;
	var WA_ContentsMarginsRespectsSafeArea;
	var WA_StyleSheetTarget;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtImageConversionFlag(Int) from Int to Int {
	var AutoColor;
	var ColorOnly;
	var MonoOnly;
	var ThresholdAlphaDither;
	var OrderedAlphaDither;
	var DiffuseAlphaDither;
	var DiffuseDither;
	var OrderedDither;
	var ThresholdDither;
	var AutoDither;
	var PreferDither;
	var AvoidDither;
	var NoOpaqueDetection;
	var NoFormatConversion;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtBGMode(Int) from Int to Int {
	var TransparentMode;
	var OpaqueMode;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtKey(Int) from Int to Int {
	var Key_Escape;
	var Key_Tab;
	var Key_Backtab;
	var Key_Backspace;
	var Key_Return;
	var Key_Enter;
	var Key_Insert;
	var Key_Delete;
	var Key_Pause;
	var Key_Print;
	var Key_SysReq;
	var Key_Clear;
	var Key_Home;
	var Key_End;
	var Key_Left;
	var Key_Up;
	var Key_Right;
	var Key_Down;
	var Key_PageUp;
	var Key_PageDown;
	var Key_Shift;
	var Key_Control;
	var Key_Meta;
	var Key_Alt;
	var Key_CapsLock;
	var Key_NumLock;
	var Key_ScrollLock;
	var Key_F1;
	var Key_F2;
	var Key_F3;
	var Key_F4;
	var Key_F5;
	var Key_F6;
	var Key_F7;
	var Key_F8;
	var Key_F9;
	var Key_F10;
	var Key_F11;
	var Key_F12;
	var Key_F13;
	var Key_F14;
	var Key_F15;
	var Key_F16;
	var Key_F17;
	var Key_F18;
	var Key_F19;
	var Key_F20;
	var Key_F21;
	var Key_F22;
	var Key_F23;
	var Key_F24;
	var Key_F25;
	var Key_F26;
	var Key_F27;
	var Key_F28;
	var Key_F29;
	var Key_F30;
	var Key_F31;
	var Key_F32;
	var Key_F33;
	var Key_F34;
	var Key_F35;
	var Key_Super_L;
	var Key_Super_R;
	var Key_Menu;
	var Key_Hyper_L;
	var Key_Hyper_R;
	var Key_Help;
	var Key_Direction_L;
	var Key_Direction_R;
	var Key_Space;
	var Key_Any;
	var Key_Exclam;
	var Key_QuoteDbl;
	var Key_NumberSign;
	var Key_Dollar;
	var Key_Percent;
	var Key_Ampersand;
	var Key_Apostrophe;
	var Key_ParenLeft;
	var Key_ParenRight;
	var Key_Asterisk;
	var Key_Plus;
	var Key_Comma;
	var Key_Minus;
	var Key_Period;
	var Key_Slash;
	var Key_0;
	var Key_1;
	var Key_2;
	var Key_3;
	var Key_4;
	var Key_5;
	var Key_6;
	var Key_7;
	var Key_8;
	var Key_9;
	var Key_Colon;
	var Key_Semicolon;
	var Key_Less;
	var Key_Equal;
	var Key_Greater;
	var Key_Question;
	var Key_At;
	var Key_A;
	var Key_B;
	var Key_C;
	var Key_D;
	var Key_E;
	var Key_F;
	var Key_G;
	var Key_H;
	var Key_I;
	var Key_J;
	var Key_K;
	var Key_L;
	var Key_M;
	var Key_N;
	var Key_O;
	var Key_P;
	var Key_Q;
	var Key_R;
	var Key_S;
	var Key_T;
	var Key_U;
	var Key_V;
	var Key_W;
	var Key_X;
	var Key_Y;
	var Key_Z;
	var Key_BracketLeft;
	var Key_Backslash;
	var Key_BracketRight;
	var Key_AsciiCircum;
	var Key_Underscore;
	var Key_QuoteLeft;
	var Key_BraceLeft;
	var Key_Bar;
	var Key_BraceRight;
	var Key_AsciiTilde;
	var Key_nobreakspace;
	var Key_exclamdown;
	var Key_cent;
	var Key_sterling;
	var Key_currency;
	var Key_yen;
	var Key_brokenbar;
	var Key_section;
	var Key_diaeresis;
	var Key_copyright;
	var Key_ordfeminine;
	var Key_guillemotleft;
	var Key_notsign;
	var Key_hyphen;
	var Key_registered;
	var Key_macron;
	var Key_degree;
	var Key_plusminus;
	var Key_twosuperior;
	var Key_threesuperior;
	var Key_acute;
	var Key_mu;
	var Key_paragraph;
	var Key_periodcentered;
	var Key_cedilla;
	var Key_onesuperior;
	var Key_masculine;
	var Key_guillemotright;
	var Key_onequarter;
	var Key_onehalf;
	var Key_threequarters;
	var Key_questiondown;
	var Key_Agrave;
	var Key_Aacute;
	var Key_Acircumflex;
	var Key_Atilde;
	var Key_Adiaeresis;
	var Key_Aring;
	var Key_AE;
	var Key_Ccedilla;
	var Key_Egrave;
	var Key_Eacute;
	var Key_Ecircumflex;
	var Key_Ediaeresis;
	var Key_Igrave;
	var Key_Iacute;
	var Key_Icircumflex;
	var Key_Idiaeresis;
	var Key_ETH;
	var Key_Ntilde;
	var Key_Ograve;
	var Key_Oacute;
	var Key_Ocircumflex;
	var Key_Otilde;
	var Key_Odiaeresis;
	var Key_multiply;
	var Key_Ooblique;
	var Key_Ugrave;
	var Key_Uacute;
	var Key_Ucircumflex;
	var Key_Udiaeresis;
	var Key_Yacute;
	var Key_THORN;
	var Key_ssharp;
	var Key_division;
	var Key_ydiaeresis;
	var Key_AltGr;
	var Key_Multi_key;
	var Key_Codeinput;
	var Key_SingleCandidate;
	var Key_MultipleCandidate;
	var Key_PreviousCandidate;
	var Key_Mode_switch;
	var Key_Kanji;
	var Key_Muhenkan;
	var Key_Henkan;
	var Key_Romaji;
	var Key_Hiragana;
	var Key_Katakana;
	var Key_Hiragana_Katakana;
	var Key_Zenkaku;
	var Key_Hankaku;
	var Key_Zenkaku_Hankaku;
	var Key_Touroku;
	var Key_Massyo;
	var Key_Kana_Lock;
	var Key_Kana_Shift;
	var Key_Eisu_Shift;
	var Key_Eisu_toggle;
	var Key_Hangul;
	var Key_Hangul_Start;
	var Key_Hangul_End;
	var Key_Hangul_Hanja;
	var Key_Hangul_Jamo;
	var Key_Hangul_Romaja;
	var Key_Hangul_Jeonja;
	var Key_Hangul_Banja;
	var Key_Hangul_PreHanja;
	var Key_Hangul_PostHanja;
	var Key_Hangul_Special;
	var Key_Dead_Grave;
	var Key_Dead_Acute;
	var Key_Dead_Circumflex;
	var Key_Dead_Tilde;
	var Key_Dead_Macron;
	var Key_Dead_Breve;
	var Key_Dead_Abovedot;
	var Key_Dead_Diaeresis;
	var Key_Dead_Abovering;
	var Key_Dead_Doubleacute;
	var Key_Dead_Caron;
	var Key_Dead_Cedilla;
	var Key_Dead_Ogonek;
	var Key_Dead_Iota;
	var Key_Dead_Voiced_Sound;
	var Key_Dead_Semivoiced_Sound;
	var Key_Dead_Belowdot;
	var Key_Dead_Hook;
	var Key_Dead_Horn;
	var Key_Back;
	var Key_Forward;
	var Key_Stop;
	var Key_Refresh;
	var Key_VolumeDown;
	var Key_VolumeMute;
	var Key_VolumeUp;
	var Key_BassBoost;
	var Key_BassUp;
	var Key_BassDown;
	var Key_TrebleUp;
	var Key_TrebleDown;
	var Key_MediaPlay;
	var Key_MediaStop;
	var Key_MediaPrevious;
	var Key_MediaNext;
	var Key_MediaRecord;
	var Key_HomePage;
	var Key_Favorites;
	var Key_Search;
	var Key_Standby;
	var Key_OpenUrl;
	var Key_LaunchMail;
	var Key_LaunchMedia;
	var Key_Launch0;
	var Key_Launch1;
	var Key_Launch2;
	var Key_Launch3;
	var Key_Launch4;
	var Key_Launch5;
	var Key_Launch6;
	var Key_Launch7;
	var Key_Launch8;
	var Key_Launch9;
	var Key_LaunchA;
	var Key_LaunchB;
	var Key_LaunchC;
	var Key_LaunchD;
	var Key_LaunchE;
	var Key_LaunchF;
	var Key_MediaLast;
	var Key_Select;
	var Key_Yes;
	var Key_No;
	var Key_Context1;
	var Key_Context2;
	var Key_Context3;
	var Key_Context4;
	var Key_Call;
	var Key_Hangup;
	var Key_Flip;
	var Key_unknown;
	var Key_Execute;
	var Key_Printer;
	var Key_Play;
	var Key_Sleep;
	var Key_Zoom;
	var Key_Cancel;
	var Key_MonBrightnessUp;
	var Key_MonBrightnessDown;
	var Key_KeyboardLightOnOff;
	var Key_KeyboardBrightnessUp;
	var Key_KeyboardBrightnessDown;
	var Key_PowerOff;
	var Key_WakeUp;
	var Key_Eject;
	var Key_ScreenSaver;
	var Key_WWW;
	var Key_Memo;
	var Key_LightBulb;
	var Key_Shop;
	var Key_History;
	var Key_AddFavorite;
	var Key_HotLinks;
	var Key_BrightnessAdjust;
	var Key_Finance;
	var Key_Community;
	var Key_AudioRewind;
	var Key_BackForward;
	var Key_ApplicationLeft;
	var Key_ApplicationRight;
	var Key_Book;
	var Key_CD;
	var Key_Calculator;
	var Key_ToDoList;
	var Key_ClearGrab;
	var Key_Close;
	var Key_Copy;
	var Key_Cut;
	var Key_Display;
	var Key_DOS;
	var Key_Documents;
	var Key_Excel;
	var Key_Explorer;
	var Key_Game;
	var Key_Go;
	var Key_iTouch;
	var Key_LogOff;
	var Key_Market;
	var Key_Meeting;
	var Key_MenuKB;
	var Key_MenuPB;
	var Key_MySites;
	var Key_News;
	var Key_OfficeHome;
	var Key_Option;
	var Key_Paste;
	var Key_Phone;
	var Key_Calendar;
	var Key_Reply;
	var Key_Reload;
	var Key_RotateWindows;
	var Key_RotationPB;
	var Key_RotationKB;
	var Key_Save;
	var Key_Send;
	var Key_Spell;
	var Key_SplitScreen;
	var Key_Support;
	var Key_TaskPane;
	var Key_Terminal;
	var Key_Tools;
	var Key_Travel;
	var Key_Video;
	var Key_Word;
	var Key_Xfer;
	var Key_ZoomIn;
	var Key_ZoomOut;
	var Key_Away;
	var Key_Messenger;
	var Key_WebCam;
	var Key_MailForward;
	var Key_Pictures;
	var Key_Music;
	var Key_Battery;
	var Key_Bluetooth;
	var Key_WLAN;
	var Key_UWB;
	var Key_AudioForward;
	var Key_AudioRepeat;
	var Key_AudioRandomPlay;
	var Key_Subtitle;
	var Key_AudioCycleTrack;
	var Key_Time;
	var Key_Hibernate;
	var Key_View;
	var Key_TopMenu;
	var Key_PowerDown;
	var Key_Suspend;
	var Key_ContrastAdjust;
	var Key_MediaPause;
	var Key_MediaTogglePlayPause;
	var Key_LaunchG;
	var Key_LaunchH;
	var Key_ToggleCallHangup;
	var Key_VoiceDial;
	var Key_LastNumberRedial;
	var Key_Camera;
	var Key_CameraFocus;
	var Key_TouchpadToggle;
	var Key_TouchpadOn;
	var Key_TouchpadOff;
	var Key_MicMute;
	var Key_Red;
	var Key_Green;
	var Key_Yellow;
	var Key_Blue;
	var Key_ChannelUp;
	var Key_ChannelDown;
	var Key_Guide;
	var Key_Info;
	var Key_Settings;
	var Key_Exit;
	var Key_MicVolumeUp;
	var Key_MicVolumeDown;
	var Key_New;
	var Key_Open;
	var Key_Find;
	var Key_Undo;
	var Key_Redo;
	var Key_Dead_Stroke;
	var Key_Dead_Abovecomma;
	var Key_Dead_Abovereversedcomma;
	var Key_Dead_Doublegrave;
	var Key_Dead_Belowring;
	var Key_Dead_Belowmacron;
	var Key_Dead_Belowcircumflex;
	var Key_Dead_Belowtilde;
	var Key_Dead_Belowbreve;
	var Key_Dead_Belowdiaeresis;
	var Key_Dead_Invertedbreve;
	var Key_Dead_Belowcomma;
	var Key_Dead_Currency;
	var Key_Dead_a;
	var Key_Dead_A;
	var Key_Dead_e;
	var Key_Dead_E;
	var Key_Dead_i;
	var Key_Dead_I;
	var Key_Dead_o;
	var Key_Dead_O;
	var Key_Dead_u;
	var Key_Dead_U;
	var Key_Dead_Small_Schwa;
	var Key_Dead_Capital_Schwa;
	var Key_Dead_Greek;
	var Key_Dead_Lowline;
	var Key_Dead_Aboveverticalline;
	var Key_Dead_Belowverticalline;
	var Key_Dead_Longsolidusoverlay;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtArrowType(Int) from Int to Int {
	var NoArrow;
	var UpArrow;
	var DownArrow;
	var LeftArrow;
	var RightArrow;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtPenStyle(Int) from Int to Int {
	var NoPen;
	var SolidLine;
	var DashLine;
	var DotLine;
	var DashDotLine;
	var DashDotDotLine;
	var CustomDashLine;
	var MPenStyle;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtPenCapStyle(Int) from Int to Int {
	var FlatCap;
	var SquareCap;
	var RoundCap;
	var MPenCapStyle;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtPenJoinStyle(Int) from Int to Int {
	var MiterJoin;
	var BevelJoin;
	var RoundJoin;
	var MPenJoinStyle;
	var SvgMiterJoin;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtBrushStyle(Int) from Int to Int {
	var NoBrush;
	var SolidPattern;
	var Dense1Pattern;
	var Dense2Pattern;
	var Dense3Pattern;
	var Dense4Pattern;
	var Dense5Pattern;
	var Dense6Pattern;
	var Dense7Pattern;
	var HorPattern;
	var VerPattern;
	var CrossPattern;
	var BDiagPattern;
	var FDiagPattern;
	var DiagCrossPattern;
	var LinearGradientPattern;
	var RadialGradientPattern;
	var ConicalGradientPattern;
	var TexturePattern;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtUIEffect(Int) from Int to Int {
	var UI_General;
	var UI_AnimateMenu;
	var UI_FadeMenu;
	var UI_AnimateCombo;
	var UI_AnimateTooltip;
	var UI_FadeTooltip;
	var UI_AnimateToolBox;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtCursorShape(Int) from Int to Int {
	var ArrowCursor;
	var UpArrowCursor;
	var CrossCursor;
	var WaitCursor;
	var IBeamCursor;
	var SizeVerCursor;
	var SizeHorCursor;
	var SizeBDiagCursor;
	var SizeFDiagCursor;
	var SizeAllCursor;
	var BlankCursor;
	var SplitVCursor;
	var SplitHCursor;
	var PointingHandCursor;
	var ForbiddenCursor;
	var OpenHandCursor;
	var ClosedHandCursor;
	var WhatsThisCursor;
	var BusyCursor;
	var LastCursor;
	var BitmapCursor;
	var CustomCursor;
	var DragCopyCursor;
	var DragMoveCursor;
	var DragLinkCursor;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtTextFormat(Int) from Int to Int {
	var PlainText;
	var RichText;
	var AutoText;
	var MarkdownText;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtAspectRatioMode(Int) from Int to Int {
	var IgnoreAspectRatio;
	var KeepAspectRatio;
	var KeepAspectRatioByExpanding;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtDockWidgetArea(Int) from Int to Int {
	var LeftDockWidgetArea;
	var RightDockWidgetArea;
	var TopDockWidgetArea;
	var BottomDockWidgetArea;
	var DockWidgetArea_Mask;
	var AllDockWidgetAreas;
	var NoDockWidgetArea;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtTimerType(Int) from Int to Int {
	var PreciseTimer;
	var CoarseTimer;
	var VeryCoarseTimer;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtToolBarArea(Int) from Int to Int {
	var LeftToolBarArea;
	var RightToolBarArea;
	var TopToolBarArea;
	var BottomToolBarArea;
	var ToolBarArea_Mask;
	var AllToolBarAreas;
	var NoToolBarArea;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtDateFormat(Int) from Int to Int {
	var TextDate;
	var ISODate;
	var ISODateWithMs;
	var LocalDate;
	var SystemLocaleDate;
	var LocaleDate;
	var SystemLocaleShortDate;
	var SystemLocaleLongDate;
	var DefaultLocaleShortDate;
	var DefaultLocaleLongDate;
	var RFC2822Date;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtTimeSpec(Int) from Int to Int {
	var LocalTime;
	var UTC;
	var OffsetFromUTC;
	var TimeZone;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtDayOfWeek(Int) from Int to Int {
	var Monday;
	var Tuesday;
	var Wednesday;
	var Thursday;
	var Friday;
	var Saturday;
	var Sunday;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtScrollBarPolicy(Int) from Int to Int {
	var ScrollBarAsNeeded;
	var ScrollBarAlwaysOff;
	var ScrollBarAlwaysOn;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtCaseSensitivity(Int) from Int to Int {
	var CaseInsensitive;
	var CaseSensitive;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtCorner(Int) from Int to Int {
	var TopLeftCorner;
	var TopRightCorner;
	var BottomLeftCorner;
	var BottomRightCorner;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtConnectionType(Int) from Int to Int {
	var AutoConnection;
	var DirectConnection;
	var QueuedConnection;
	var BlockingQueuedConnection;
	var UniqueConnection;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtShortcutContext(Int) from Int to Int {
	var WidgetShortcut;
	var WindowShortcut;
	var ApplicationShortcut;
	var WidgetWithChildrenShortcut;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtFillRule(Int) from Int to Int {
	var OddEvenFill;
	var WindingFill;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtClipOperation(Int) from Int to Int {
	var NoClip;
	var ReplaceClip;
	var IntersectClip;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtTransformationMode(Int) from Int to Int {
	var FastTransformation;
	var SmoothTransformation;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtFocusReason(Int) from Int to Int {
	var MouseFocusReason;
	var TabFocusReason;
	var BacktabFocusReason;
	var ActiveWindowFocusReason;
	var PopupFocusReason;
	var ShortcutFocusReason;
	var MenuBarFocusReason;
	var OtherFocusReason;
	var NoFocusReason;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtContextMenuPolicy(Int) from Int to Int {
	var NoContextMenu;
	var PreventContextMenu;
	var DefaultContextMenu;
	var ActionsContextMenu;
	var CustomContextMenu;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtInputMethodQuery(Int) from Int to Int {
	var ImMicroFocus;
	var ImFont;
	var ImCursorPosition;
	var ImSurroundingText;
	var ImCurrentSelection;
	var ImMaximumTextLength;
	var ImAnchorPosition;
	var ImEnabled;
	var ImCursorRectangle;
	var ImHints;
	var ImPreferredLanguage;
	var ImPlatformData;
	var ImQueryInput;
	var ImQueryAll;
	var ImAbsolutePosition;
	var ImTextBeforeCursor;
	var ImTextAfterCursor;
	var ImEnterKeyType;
	var ImAnchorRectangle;
	var ImInputItemClipRectangle;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtToolButtonStyle(Int) from Int to Int {
	var ToolButtonIconOnly;
	var ToolButtonTextOnly;
	var ToolButtonTextBesideIcon;
	var ToolButtonTextUnderIcon;
	var ToolButtonFollowStyle;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtLayoutDirection(Int) from Int to Int {
	var LeftToRight;
	var RightToLeft;
	var LayoutDirectionAuto;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtDropAction(Int) from Int to Int {
	var CopyAction;
	var MoveAction;
	var LinkAction;
	var ActionMask;
	var TargetMoveAction;
	var IgnoreAction;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtCheckState(Int) from Int to Int {
	var Unchecked;
	var PartiallyChecked;
	var Checked;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtItemDataRole(Int) from Int to Int {
	var DisplayRole;
	var DecorationRole;
	var EditRole;
	var ToolTipRole;
	var StatusTipRole;
	var WhatsThisRole;
	var FontRole;
	var TextAlignmentRole;
	var BackgroundRole;
	var BackgroundColorRole;
	var ForegroundRole;
	var TextColorRole;
	var CheckStateRole;
	var AccessibleTextRole;
	var AccessibleDescriptionRole;
	var SizeHintRole;
	var InitialSortOrderRole;
	var UserRole;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtItemFlag(Int) from Int to Int {
	var NoItemFlags;
	var ItemIsSelectable;
	var ItemIsEditable;
	var ItemIsDragEnabled;
	var ItemIsDropEnabled;
	var ItemIsUserCheckable;
	var ItemIsEnabled;
	var ItemIsTristate;
	var ItemNeverHasChildren;
	var ItemIsUserTristate;
	var ItemIsAutoTristate;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtMatchFlag(Int) from Int to Int {
	var MatchExactly;
	var MatchFixedString;
	var MatchContains;
	var MatchStartsWith;
	var MatchEndsWith;
	var MatchRegExp;
	var MatchWildcard;
	var MatchCaseSensitive;
	var MatchWrap;
	var MatchRecursive;
	var MatchRegularExpression;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtWindowModality(Int) from Int to Int {
	var NonModal;
	var WindowModal;
	var ApplicationModal;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtApplicationAttribute(Int) from Int to Int {
	var AA_ImmediateWidgetCreation;
	var AA_MSWindowsUseDirect3DByDefault;
	var AA_DontShowIconsInMenus;
	var AA_NativeWindows;
	var AA_DontCreateNativeWidgetSiblings;
	var AA_MacPluginApplication;
	var AA_DontUseNativeMenuBar;
	var AA_MacDontSwapCtrlAndMeta;
	var AA_X11InitThreads;
	var AA_Use96Dpi;
	var AA_SynthesizeTouchForUnhandledMouseEvents;
	var AA_SynthesizeMouseForUnhandledTouchEvents;
	var AA_UseHighDpiPixmaps;
	var AA_ForceRasterWidgets;
	var AA_UseDesktopOpenGL;
	var AA_UseOpenGLES;
	var AA_UseSoftwareOpenGL;
	var AA_ShareOpenGLContexts;
	var AA_SetPalette;
	var AA_EnableHighDpiScaling;
	var AA_DisableHighDpiScaling;
	var AA_PluginApplication;
	var AA_UseStyleSheetPropagationInWidgetStyles;
	var AA_DontUseNativeDialogs;
	var AA_SynthesizeMouseForUnhandledTabletEvents;
	var AA_CompressHighFrequencyEvents;
	var AA_DontCheckOpenGLContextThreadAffinity;
	var AA_DisableShaderDiskCache;
	var AA_DontShowShortcutsInContextMenus;
	var AA_CompressTabletEvents;
	var AA_DisableWindowContextHelpButton;
	var AA_DisableSessionManager;
	var AA_DisableNativeVirtualKeyboard;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtItemSelectionMode(Int) from Int to Int {
	var ContainsItemShape;
	var IntersectsItemShape;
	var ContainsItemBoundingRect;
	var IntersectsItemBoundingRect;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtTextInteractionFlag(Int) from Int to Int {
	var NoTextInteraction;
	var TextSelectableByMouse;
	var TextSelectableByKeyboard;
	var LinksAccessibleByMouse;
	var LinksAccessibleByKeyboard;
	var TextEditable;
	var TextEditorInteraction;
	var TextBrowserInteraction;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtMaskMode(Int) from Int to Int {
	var MaskInColor;
	var MaskOutColor;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtAxis(Int) from Int to Int {
	var XAxis;
	var YAxis;
	var ZAxis;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtEventPriority(Int) from Int to Int {
	var HighEventPriority;
	var NormalEventPriority;
	var LowEventPriority;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtSizeMode(Int) from Int to Int {
	var AbsoluteSize;
	var RelativeSize;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtSizeHint(Int) from Int to Int {
	var MinimumSize;
	var PreferredSize;
	var MaximumSize;
	var MinimumDescent;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtWindowFrameSection(Int) from Int to Int {
	var NoSection;
	var LeftSection;
	var TopLeftSection;
	var TopSection;
	var TopRightSection;
	var RightSection;
	var BottomRightSection;
	var BottomSection;
	var BottomLeftSection;
	var TitleBarArea;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtTileRule(Int) from Int to Int {
	var StretchTile;
	var RepeatTile;
	var RoundTile;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtInputMethodHint(Int) from Int to Int {
	var ImhNone;
	var ImhHiddenText;
	var ImhNoAutoUppercase;
	var ImhPreferNumbers;
	var ImhPreferUppercase;
	var ImhPreferLowercase;
	var ImhNoPredictiveText;
	var ImhDigitsOnly;
	var ImhFormattedNumbersOnly;
	var ImhUppercaseOnly;
	var ImhLowercaseOnly;
	var ImhDialableCharactersOnly;
	var ImhEmailCharactersOnly;
	var ImhUrlCharactersOnly;
	var ImhExclusiveInputMask;
	var ImhSensitiveData;
	var ImhDate;
	var ImhTime;
	var ImhPreferLatin;
	var ImhLatinOnly;
	var ImhMultiLine;
	var ImhNoEditMenu;
	var ImhNoTextHandles;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtAnchorPoint(Int) from Int to Int {
	var AnchorLeft;
	var AnchorHorizontalCenter;
	var AnchorRight;
	var AnchorTop;
	var AnchorVerticalCenter;
	var AnchorBottom;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtCoordinateSystem(Int) from Int to Int {
	var DeviceCoordinates;
	var LogicalCoordinates;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtTouchPointState(Int) from Int to Int {
	var TouchPointPressed;
	var TouchPointMoved;
	var TouchPointStationary;
	var TouchPointReleased;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtGestureState(Int) from Int to Int {
	var GestureStarted;
	var GestureUpdated;
	var GestureFinished;
	var GestureCanceled;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtGestureType(Int) from Int to Int {
	var TapGesture;
	var TapAndHoldGesture;
	var PanGesture;
	var PinchGesture;
	var SwipeGesture;
	var CustomGesture;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtGestureFlag(Int) from Int to Int {
	var DontStartGestureOnChildren;
	var ReceivePartialGestures;
	var IgnoredGesturesPropagateToParent;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtNavigationMode(Int) from Int to Int {
	var NavigationModeNone;
	var NavigationModeKeypadTabOrder;
	var NavigationModeKeypadDirectional;
	var NavigationModeCursorAuto;
	var NavigationModeCursorForceVisible;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtCursorMoveStyle(Int) from Int to Int {
	var LogicalMoveStyle;
	var VisualMoveStyle;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtScreenOrientation(Int) from Int to Int {
	var PrimaryOrientation;
	var PortraitOrientation;
	var LandscapeOrientation;
	var InvertedPortraitOrientation;
	var InvertedLandscapeOrientation;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtFindChildOption(Int) from Int to Int {
	var FindDirectChildrenOnly;
	var FindChildrenRecursively;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtWhiteSpaceMode(Int) from Int to Int {
	var WhiteSpaceNormal;
	var WhiteSpacePre;
	var WhiteSpaceNoWrap;
	var WhiteSpaceModeUndefined;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtHitTestAccuracy(Int) from Int to Int {
	var ExactHit;
	var FuzzyHit;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtApplicationState(Int) from Int to Int {
	var ApplicationSuspended;
	var ApplicationHidden;
	var ApplicationInactive;
	var ApplicationActive;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtEdge(Int) from Int to Int {
	var TopEdge;
	var LeftEdge;
	var RightEdge;
	var BottomEdge;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtNativeGestureType(Int) from Int to Int {
	var BeginNativeGesture;
	var EndNativeGesture;
	var PanNativeGesture;
	var ZoomNativeGesture;
	var SmartZoomNativeGesture;
	var RotateNativeGesture;
	var SwipeNativeGesture;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtScrollPhase(Int) from Int to Int {
	var ScrollBegin;
	var ScrollUpdate;
	var ScrollEnd;
	var NoScrollPhase;
	var ScrollMomentum;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtMouseEventSource(Int) from Int to Int {
	var MouseEventNotSynthesized;
	var MouseEventSynthesizedBySystem;
	var MouseEventSynthesizedByQt;
	var MouseEventSynthesizedByApplication;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtMouseEventFlag(Int) from Int to Int {
	var MouseEventCreatedDoubleClick;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtTabFocusBehavior(Int) from Int to Int {
	var NoTabFocus;
	var TabFocusTextControls;
	var TabFocusListControls;
	var TabFocusAllControls;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtItemSelectionOperation(Int) from Int to Int {
	var ReplaceSelection;
	var AddToSelection;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtEnterKeyType(Int) from Int to Int {
	var EnterKeyDefault;
	var EnterKeyReturn;
	var EnterKeyDone;
	var EnterKeyGo;
	var EnterKeySend;
	var EnterKeySearch;
	var EnterKeyNext;
	var EnterKeyPrevious;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtChecksumType(Int) from Int to Int {
	var ChecksumIso3309;
	var ChecksumItuV41;
}

@:pythonImport("PyQt5.QtCore", "Qt")
@:native("Qt")
extern enum abstract QtHighDpiScaleFactorRoundingPolicy(Int) from Int to Int {
	var Round;
	var Ceil;
	var Floor;
	var RoundPreferFloor;
	var PassThrough;
}

