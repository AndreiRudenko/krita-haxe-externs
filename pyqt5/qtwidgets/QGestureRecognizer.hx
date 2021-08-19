package pyqt5.qtwidgets;

import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QObject;
import pyqt5.qtwidgets.QGesture;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.Qt;

typedef QGestureRecognizerResult = QFlags<QGestureRecognizerResultFlag>;

@:pythonImport("PyQt5.QtWidgets", "QGestureRecognizer")
@:native("QGestureRecognizer")
extern class QGestureRecognizer {
	static function registerRecognizer(recognizer:QGestureRecognizer):QtGestureType;
	static function unregisterRecognizer(type:QtGestureType):Void;

	function new();

	function create(target:QObject):QGesture;
	function recognize(state:QGesture, watched:QObject, event:QEvent):QFlags<QGestureRecognizerResultFlag>;
	function reset(state:QGesture):Void;
}

@:pythonImport("PyQt5.QtWidgets", "QGestureRecognizer")
@:native("QGestureRecognizer")
extern enum abstract QGestureRecognizerResultFlag(Int) from Int to Int {
	var Ignore;
	var MayBeGesture;
	var TriggerGesture;
	var FinishGesture;
	var CancelGesture;
	var ConsumeEventHint;
}

