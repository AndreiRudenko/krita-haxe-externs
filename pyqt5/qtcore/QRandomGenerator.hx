package pyqt5.qtcore;


typedef QRandomGeneratorresult_type = UInt;

@:pythonImport("PyQt5.QtCore", "QRandomGenerator")
@:native("QRandomGenerator")
extern class QRandomGenerator {
	static function min():QRandomGeneratorresult_type;
	static function max():QRandomGeneratorresult_type;
	static function system():QRandomGenerator;
	static function global():QRandomGenerator;
	static function securelySeeded():QRandomGenerator;

	@:overload(function(?seed:UInt):QRandomGenerator {})
	function new(other:QRandomGenerator);

	function generate():UInt;
	function generate64():UInt;
	function generateDouble():Float;
	@:overload(function(highest:UInt):UInt {})
	@:overload(function(lowest:Int, highest:Int):Int {})
	function bounded(highest:Float):Float;
	function seed(?seed:UInt):Void;
	function discard(long:UInt):Void;
}

