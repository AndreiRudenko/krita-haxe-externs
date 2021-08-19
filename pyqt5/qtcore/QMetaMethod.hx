package pyqt5.qtcore;

import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QMetaObject;
import pyqt5.qtcore.QVariant;

@:pythonImport("PyQt5.QtCore", "QMetaMethod")
@:native("QMetaMethod")
extern class QMetaMethod {
	function new();

	function typeName():Int;
	function parameterTypes():QList<QByteArray>;
	function parameterNames():QList<QByteArray>;
	function tag():Int;
	function access():QMetaMethodAccess;
	function methodType():QMetaMethodMethodType;
	@:overload(function(object:QObject, returnValue:QGenericReturnArgument, ?value0:QGenericArgument, ?value1:QGenericArgument, ?value2:QGenericArgument, ?value3:QGenericArgument, ?value4:QGenericArgument, ?value5:QGenericArgument, ?value6:QGenericArgument, ?value7:QGenericArgument, ?value8:QGenericArgument, ?value9:QGenericArgument):Dynamic {})
	@:overload(function(object:QObject, connectionType:QtConnectionType, ?value0:QGenericArgument, ?value1:QGenericArgument, ?value2:QGenericArgument, ?value3:QGenericArgument, ?value4:QGenericArgument, ?value5:QGenericArgument, ?value6:QGenericArgument, ?value7:QGenericArgument, ?value8:QGenericArgument, ?value9:QGenericArgument):Dynamic {})
	@:overload(function(object:QObject, ?value0:QGenericArgument, ?value1:QGenericArgument, ?value2:QGenericArgument, ?value3:QGenericArgument, ?value4:QGenericArgument, ?value5:QGenericArgument, ?value6:QGenericArgument, ?value7:QGenericArgument, ?value8:QGenericArgument, ?value9:QGenericArgument):Dynamic {})
	function invoke(object:QObject, connectionType:QtConnectionType, returnValue:QGenericReturnArgument, ?value0:QGenericArgument, ?value1:QGenericArgument, ?value2:QGenericArgument, ?value3:QGenericArgument, ?value4:QGenericArgument, ?value5:QGenericArgument, ?value6:QGenericArgument, ?value7:QGenericArgument, ?value8:QGenericArgument, ?value9:QGenericArgument):Dynamic;
	function methodIndex():Int;
	function isValid():Bool;
	function methodSignature():QByteArray;
	function name():QByteArray;
	function returnType():Int;
	function parameterCount():Int;
	function parameterType(index:Int):Int;
}

@:pythonImport("PyQt5.QtCore", "Access")
@:native("QMetaMethod.Access")
extern enum abstract QMetaMethodAccess(Int) from Int to Int {
	var Private;
	var Protected;
	var Public;
}

@:pythonImport("PyQt5.QtCore", "MethodType")
@:native("QMetaMethod.MethodType")
extern enum abstract QMetaMethodMethodType(Int) from Int to Int {
	var Method;
	var Signal;
	var Slot;
	var Constructor;
}

@:pythonImport("PyQt5.QtCore", "QMetaEnum")
@:native("QMetaEnum")
extern class QMetaEnum {
	function new();

	function name():Int;
	function isFlag():Bool;
	function keyCount():Int;
	function key(index:Int):Int;
	function value(index:Int):Int;
	function scope():Int;
	function keyToValue(key:Int, ?ok:Bool):Int;
	function valueToKey(value:Int):Int;
	function keysToValue(keys:Int, ?ok:Bool):Int;
	function valueToKeys(value:Int):QByteArray;
	function isValid():Bool;
	function isScoped():Bool;
	function enumName():Int;
}

@:pythonImport("PyQt5.QtCore", "QMetaProperty")
@:native("QMetaProperty")
extern class QMetaProperty {
	function new();

	function name():Int;
	function typeName():Int;
	function type():QVariantType;
	function isReadable():Bool;
	function isWritable():Bool;
	function isDesignable(?object:QObject):Bool;
	function isScriptable(?object:QObject):Bool;
	function isStored(?object:QObject):Bool;
	function isFlagType():Bool;
	function isEnumType():Bool;
	function enumerator():QMetaEnum;
	function read(obj:QObject):QVariant;
	function write(obj:QObject, value:QVariant):Bool;
	function reset(obj:QObject):Bool;
	function hasStdCppSet():Bool;
	function isValid():Bool;
	function isResettable():Bool;
	function isUser(?object:QObject):Bool;
	function userType():Int;
	function hasNotifySignal():Bool;
	function notifySignal():QMetaMethod;
	function notifySignalIndex():Int;
	function propertyIndex():Int;
	function isConstant():Bool;
	function isFinal():Bool;
	function relativePropertyIndex():Int;
	function isRequired():Bool;
}

@:pythonImport("PyQt5.QtCore", "QMetaClassInfo")
@:native("QMetaClassInfo")
extern class QMetaClassInfo {
	function new();

	function name():Int;
	function value():Int;
}

