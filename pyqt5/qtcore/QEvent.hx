package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QByteArray;

@:pythonImport("PyQt5.QtCore", "QEvent")
@:native("QEvent")
extern class QEvent {
	static function registerEventType(?hint:Int):Int;

	@:overload(function(type:QEventType):QEvent {})
	function new(other:QEvent);

	function type():QEventType;
	function spontaneous():Bool;
	function setAccepted(accepted:Bool):Void;
	function isAccepted():Bool;
	function accept():Void;
	function ignore():Void;
}

@:pythonImport("PyQt5.QtCore", "Type")
@:native("QEvent.Type")
extern enum abstract QEventType(Int) from Int to Int {
	var None;
	var Timer;
	var MouseButtonPress;
	var MouseButtonRelease;
	var MouseButtonDblClick;
	var MouseMove;
	var KeyPress;
	var KeyRelease;
	var FocusIn;
	var FocusOut;
	var Enter;
	var Leave;
	var Paint;
	var Move;
	var Resize;
	var Show;
	var Hide;
	var Close;
	var ParentChange;
	var ParentAboutToChange;
	var ThreadChange;
	var WindowActivate;
	var WindowDeactivate;
	var ShowToParent;
	var HideToParent;
	var Wheel;
	var WindowTitleChange;
	var WindowIconChange;
	var ApplicationWindowIconChange;
	var ApplicationFontChange;
	var ApplicationLayoutDirectionChange;
	var ApplicationPaletteChange;
	var PaletteChange;
	var Clipboard;
	var MetaCall;
	var SockAct;
	var WinEventAct;
	var DeferredDelete;
	var DragEnter;
	var DragMove;
	var DragLeave;
	var Drop;
	var ChildAdded;
	var ChildPolished;
	var ChildRemoved;
	var PolishRequest;
	var Polish;
	var LayoutRequest;
	var UpdateRequest;
	var UpdateLater;
	var ContextMenu;
	var InputMethod;
	var TabletMove;
	var LocaleChange;
	var LanguageChange;
	var LayoutDirectionChange;
	var TabletPress;
	var TabletRelease;
	var OkRequest;
	var IconDrag;
	var FontChange;
	var EnabledChange;
	var ActivationChange;
	var StyleChange;
	var IconTextChange;
	var ModifiedChange;
	var MouseTrackingChange;
	var WindowBlocked;
	var WindowUnblocked;
	var WindowStateChange;
	var ToolTip;
	var WhatsThis;
	var StatusTip;
	var ActionChanged;
	var ActionAdded;
	var ActionRemoved;
	var FileOpen;
	var Shortcut;
	var ShortcutOverride;
	var WhatsThisClicked;
	var ToolBarChange;
	var ApplicationActivate;
	var ApplicationActivated;
	var ApplicationDeactivate;
	var ApplicationDeactivated;
	var QueryWhatsThis;
	var EnterWhatsThisMode;
	var LeaveWhatsThisMode;
	var ZOrderChange;
	var HoverEnter;
	var HoverLeave;
	var HoverMove;
	var GraphicsSceneMouseMove;
	var GraphicsSceneMousePress;
	var GraphicsSceneMouseRelease;
	var GraphicsSceneMouseDoubleClick;
	var GraphicsSceneContextMenu;
	var GraphicsSceneHoverEnter;
	var GraphicsSceneHoverMove;
	var GraphicsSceneHoverLeave;
	var GraphicsSceneHelp;
	var GraphicsSceneDragEnter;
	var GraphicsSceneDragMove;
	var GraphicsSceneDragLeave;
	var GraphicsSceneDrop;
	var GraphicsSceneWheel;
	var GraphicsSceneResize;
	var GraphicsSceneMove;
	var KeyboardLayoutChange;
	var DynamicPropertyChange;
	var TabletEnterProximity;
	var TabletLeaveProximity;
	var NonClientAreaMouseMove;
	var NonClientAreaMouseButtonPress;
	var NonClientAreaMouseButtonRelease;
	var NonClientAreaMouseButtonDblClick;
	var MacSizeChange;
	var ContentsRectChange;
	var CursorChange;
	var ToolTipChange;
	var GrabMouse;
	var UngrabMouse;
	var GrabKeyboard;
	var UngrabKeyboard;
	var StateMachineSignal;
	var StateMachineWrapped;
	var TouchBegin;
	var TouchUpdate;
	var TouchEnd;
	var RequestSoftwareInputPanel;
	var CloseSoftwareInputPanel;
	var WinIdChange;
	var Gesture;
	var GestureOverride;
	var FocusAboutToChange;
	var ScrollPrepare;
	var Scroll;
	var Expose;
	var InputMethodQuery;
	var OrientationChange;
	var TouchCancel;
	var PlatformPanel;
	var ApplicationStateChange;
	var ReadOnlyChange;
	var PlatformSurface;
	var TabletTrackingChange;
	var User;
	var MaxUser;
}

@:pythonImport("PyQt5.QtCore", "QTimerEvent")
@:native("QTimerEvent")
extern class QTimerEvent extends QEvent {
	function new(timerId:Int);

	function timerId():Int;
}

@:pythonImport("PyQt5.QtCore", "QChildEvent")
@:native("QChildEvent")
extern class QChildEvent extends QEvent {
	function new(type:QEventType, child:QObject);

	function child():QObject;
	function added():Bool;
	function polished():Bool;
	function removed():Bool;
}

@:pythonImport("PyQt5.QtCore", "QDynamicPropertyChangeEvent")
@:native("QDynamicPropertyChangeEvent")
extern class QDynamicPropertyChangeEvent extends QEvent {
	function new(name:QByteArray);

	function propertyName():QByteArray;
}

