package pyqt5.qtgui;

import pyqt5.qtcore.QObject;
import pyqt5.qtgui.QGuiApplication;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QStringList;

@:pythonImport("PyQt5.QtGui", "QSessionManager")
@:native("QSessionManager")
extern class QSessionManager extends QObject {
	function new(app:QGuiApplication, id:QString, key:QString);

	function sessionId():QString;
	function sessionKey():QString;
	function allowsInteraction():Bool;
	function allowsErrorInteraction():Bool;
	function release():Void;
	function cancel():Void;
	function setRestartHint(?v:QSessionManagerRestartHint):Void;
	function restartHint():QSessionManagerRestartHint;
	function setRestartCommand(?v:QStringList):Void;
	function restartCommand():QStringList;
	function setDiscardCommand(?v:QStringList):Void;
	function discardCommand():QStringList;
	@:overload(function(name:QString, value:QStringList):Void {})
	function setManagerProperty(name:QString, value:QString):Void;
	function isPhase2():Bool;
	function requestPhase2():Void;
}

@:pythonImport("PyQt5.QtGui", "QSessionManager")
@:native("QSessionManager")
extern enum abstract QSessionManagerRestartHint(Int) from Int to Int {
	var RestartIfRunning;
	var RestartAnyway;
	var RestartImmediately;
	var RestartNever;
}

