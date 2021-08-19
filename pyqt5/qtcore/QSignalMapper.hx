package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtCore", "QSignalMapper")
@:native("QSignalMapper")
extern class QSignalMapper extends QObject {
	var mapped:QSignal1<QObject>;
	var mappedInt:QSignal1<Int>;
	var mappedString:QSignal1<QString>;
	var mappedWidget:QSignal1<QWidget>;
	var mappedObject:QSignal1<QObject>;

	@:overload(function(?parent:QObject):QSignalMapper {})
	function new(?v:QSignalMapper);

	@:overload(function(sender:QObject, text:QString):Void {})
	@:overload(function(sender:QObject, widget:QWidget):Void {})
	@:overload(function(sender:QObject, object:QObject):Void {})
	function setMapping(sender:QObject, id:Int):Void;
	function removeMappings(sender:QObject):Void;
	@:overload(function(text:QString):QObject {})
	@:overload(function(widget:QWidget):QObject {})
	@:overload(function(object:QObject):QObject {})
	function mapping(id:Int):QObject;
	@:overload(function(sender:QObject):Void {})
	function map():Void;
}

