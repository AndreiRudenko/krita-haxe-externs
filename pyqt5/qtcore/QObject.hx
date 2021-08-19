package pyqt5.qtcore;

import pyqt5.qtcore.QList;
import pyqt5.qtcore.QMetaObject;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.Qt;
import python.Tuple;
import pyqt5.qtcore.QRegExp;
import pyqt5.qtcore.QRegularExpression;
import pyqt5.qtcore.QThread;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QMetaMethod;

typedef QObjectList = QList<QObject>;

@:pythonImport("PyQt5.QtCore", "QObject")
@:native("QObject")
extern class QObject {
	var destroyed:QSignal1<QObject>;
	var objectNameChanged:QSignal1<QString>;

	@:overload(function(?parent:QObject):QObject {})
	function new(?v:QObject);

	function metaObject():QMetaObject;
	function pyqtConfigure(?v:Dynamic):Void;
	function event(?v:QEvent):Bool;
	function eventFilter(?v:QObject, ?v:QEvent):Bool;
	function tr(sourceText:Int, ?disambiguation:Int, ?n:Int):QString;
	@:overload(function(types:Tuple2<Class<QObject>, QString>, ?name:QString, ?options:QtFindChildOptions):QObject {})
	function findChild(type:Class<QObject>, ?name:QString, ?options:QtFindChildOptions):QObject;
	@:overload(function(types:Tuple2<Class<QObject>, QString>, ?name:QString, ?options:QtFindChildOptions):QList<QObject> {})
	@:overload(function(type:Class<QObject>, regExp:QRegExp, ?options:QtFindChildOptions):QList<QObject> {})
	@:overload(function(types:Tuple2<Class<QObject>, QString>, regExp:QRegExp, ?options:QtFindChildOptions):QList<QObject> {})
	@:overload(function(type:Class<QObject>, re:QRegularExpression, ?options:QtFindChildOptions):QList<QObject> {})
	@:overload(function(types:Tuple2<Class<QObject>, QString>, re:QRegularExpression, ?options:QtFindChildOptions):QList<QObject> {})
	function findChildren(type:Class<QObject>, ?name:QString, ?options:QtFindChildOptions):QList<QObject>;
	function objectName():QString;
	function setObjectName(name:QString):Void;
	function isWidgetType():Bool;
	function isWindowType():Bool;
	function signalsBlocked():Bool;
	function blockSignals(b:Bool):Bool;
	function thread():QThread;
	function moveToThread(thread:QThread):Void;
	function startTimer(interval:Int, ?timerType:QtTimerType):Int;
	function killTimer(id:Int):Void;
	function children():QObjectList;
	function setParent(?v:QObject):Void;
	function installEventFilter(?v:QObject):Void;
	function removeEventFilter(?v:QObject):Void;
	function dumpObjectInfo():Void;
	function dumpObjectTree():Void;
	function dynamicPropertyNames():QList<QByteArray>;
	function setProperty(name:Int, value:QVariant):Bool;
	function property(name:Int):QVariant;
	function parent():QObject;
	function inherits(classname:Int):Bool;
	function deleteLater():Void;
	function sender():QObject;
	function receivers(signal:Int):Int;
	function timerEvent(?v:QTimerEvent):Void;
	function childEvent(?v:QChildEvent):Void;
	function customEvent(?v:QEvent):Void;
	function connectNotify(signal:QMetaMethod):Void;
	function disconnectNotify(signal:QMetaMethod):Void;
	function senderSignalIndex():Int;
	function isSignalConnected(signal:QMetaMethod):Bool;
	function disconnect():Bool;
}

@:pythonImport("PyQt5.QtCore", "QSignalBlocker")
@:native("QSignalBlocker")
extern class QSignalBlocker {
	@:overload(function(o:QObject):QSignalBlocker {})
	function new(?v:QSignalBlocker);

	function reblock():Void;
	function unblock():Void;
}

