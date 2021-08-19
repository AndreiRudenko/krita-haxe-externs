package pyqt5.qtcore;


@:pythonImport("PyQt5.QtCore", "QRunnable")
@:native("QRunnable")
extern class QRunnable {
	static function create(functionToRun:Dynamic->Void):QRunnable;

	function new();

	function run():Void;
	function autoDelete():Bool;
	function setAutoDelete(_autoDelete:Bool):Void;
}

