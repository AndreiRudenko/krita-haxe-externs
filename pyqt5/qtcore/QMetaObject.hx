package pyqt5.qtcore;

import pyqt5.qtcore.QMetaMethod;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.Qt;

@:pythonImport("PyQt5.QtCore", "QMetaObject")
@:native("QMetaObject")
extern class QMetaObject {
	@:overload(function(signal:QMetaMethod, method:QMetaMethod):Bool {})
	static function checkConnectArgs(signal:Int, method:Int):Bool;
	static function connectSlotsByName(o:QObject):Void;
	static function normalizedSignature(method:Int):QByteArray;
	static function normalizedType(type:Int):QByteArray;
	@:overload(function(obj:QObject, member:Int, ret:QGenericReturnArgument, ?value0:QGenericArgument, ?value1:QGenericArgument, ?value2:QGenericArgument, ?value3:QGenericArgument, ?value4:QGenericArgument, ?value5:QGenericArgument, ?value6:QGenericArgument, ?value7:QGenericArgument, ?value8:QGenericArgument, ?value9:QGenericArgument):Dynamic {})
	@:overload(function(obj:QObject, member:Int, type:QtConnectionType, ?value0:QGenericArgument, ?value1:QGenericArgument, ?value2:QGenericArgument, ?value3:QGenericArgument, ?value4:QGenericArgument, ?value5:QGenericArgument, ?value6:QGenericArgument, ?value7:QGenericArgument, ?value8:QGenericArgument, ?value9:QGenericArgument):Dynamic {})
	@:overload(function(obj:QObject, member:Int, ?value0:QGenericArgument, ?value1:QGenericArgument, ?value2:QGenericArgument, ?value3:QGenericArgument, ?value4:QGenericArgument, ?value5:QGenericArgument, ?value6:QGenericArgument, ?value7:QGenericArgument, ?value8:QGenericArgument, ?value9:QGenericArgument):Dynamic {})
	static function invokeMethod(obj:QObject, member:Int, type:QtConnectionType, ret:QGenericReturnArgument, ?value0:QGenericArgument, ?value1:QGenericArgument, ?value2:QGenericArgument, ?value3:QGenericArgument, ?value4:QGenericArgument, ?value5:QGenericArgument, ?value6:QGenericArgument, ?value7:QGenericArgument, ?value8:QGenericArgument, ?value9:QGenericArgument):Dynamic;

	function className():Int;
	function superClass():QMetaObject;
	function userProperty():QMetaProperty;
	function methodOffset():Int;
	function enumeratorOffset():Int;
	function propertyOffset():Int;
	function classInfoOffset():Int;
	function methodCount():Int;
	function enumeratorCount():Int;
	function propertyCount():Int;
	function classInfoCount():Int;
	function indexOfMethod(method:Int):Int;
	function indexOfSignal(signal:Int):Int;
	function indexOfSlot(slot:Int):Int;
	function indexOfEnumerator(name:Int):Int;
	function indexOfProperty(name:Int):Int;
	function indexOfClassInfo(name:Int):Int;
	function method(index:Int):QMetaMethod;
	function enumerator(index:Int):QMetaEnum;
	function property(index:Int):QMetaProperty;
	function classInfo(index:Int):QMetaClassInfo;
	function constructorCount():Int;
	function indexOfConstructor(constructor:Int):Int;
	function constructor(index:Int):QMetaMethod;
	function inherits(metaObject:QMetaObject):Bool;
}

@:pythonImport("PyQt5.QtCore", "Connection")
@:native("Connection")
extern class Connection {
	@:overload(function():Connection {})
	function new(other:Connection);
}

@:pythonImport("PyQt5.QtCore", "QGenericArgument")
@:native("QGenericArgument")
extern class QGenericArgument {
}

@:pythonImport("PyQt5.QtCore", "QGenericReturnArgument")
@:native("QGenericReturnArgument")
extern class QGenericReturnArgument {
}

