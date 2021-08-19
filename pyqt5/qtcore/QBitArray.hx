package pyqt5.qtcore;

import python.Bytes;

@:pythonImport("PyQt5.QtCore", "QBitArray")
@:native("QBitArray")
extern class QBitArray {
	static function fromBits(data:Int, len:Int):QBitArray;

	@:overload(function():QBitArray {})
	@:overload(function(size:Int, ?value:Bool):QBitArray {})
	function new(other:QBitArray);

	function size():Int;
	@:overload(function(on:Bool):Int {})
	function count():Int;
	function isEmpty():Bool;
	function isNull():Bool;
	function resize(size:Int):Void;
	function detach():Void;
	function isDetached():Bool;
	function clear():Void;
	@:overload(function(value:Bool, ?size:Int):Bool {})
	function fill(val:Bool, first:Int, last:Int):Void;
	function truncate(pos:Int):Void;
	function testBit(i:Int):Bool;
	@:overload(function(i:Int, val:Bool):Void {})
	function setBit(i:Int):Void;
	function clearBit(i:Int):Void;
	function toggleBit(i:Int):Bool;
	function at(i:Int):Bool;
	function swap(other:QBitArray):Void;
	function bits():Bytes;
}

