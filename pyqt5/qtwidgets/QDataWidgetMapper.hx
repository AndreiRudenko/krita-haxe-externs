package pyqt5.qtwidgets;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QAbstractItemModel;
import pyqt5.qtwidgets.QAbstractItemDelegate;
import pyqt5.qtcore.Qt;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtWidgets", "QDataWidgetMapper")
@:native("QDataWidgetMapper")
extern class QDataWidgetMapper extends QObject {
	var currentIndexChanged:QSignal1<Int>;

	function new(?parent:QObject);

	function setModel(model:QAbstractItemModel):Void;
	function model():QAbstractItemModel;
	function setItemDelegate(delegate:QAbstractItemDelegate):Void;
	function itemDelegate():QAbstractItemDelegate;
	function setRootIndex(index:QModelIndex):Void;
	function rootIndex():QModelIndex;
	function setOrientation(aOrientation:QtOrientation):Void;
	function orientation():QtOrientation;
	function setSubmitPolicy(policy:QDataWidgetMapperSubmitPolicy):Void;
	function submitPolicy():QDataWidgetMapperSubmitPolicy;
	@:overload(function(widget:QWidget, section:Int, propertyName:QByteArray):Void {})
	function addMapping(widget:QWidget, section:Int):Void;
	function removeMapping(widget:QWidget):Void;
	function mappedPropertyName(widget:QWidget):QByteArray;
	function mappedSection(widget:QWidget):Int;
	function mappedWidgetAt(section:Int):QWidget;
	function clearMapping():Void;
	function currentIndex():Int;
	function revert():Void;
	function setCurrentIndex(index:Int):Void;
	function setCurrentModelIndex(index:QModelIndex):Void;
	function submit():Bool;
	function toFirst():Void;
	function toLast():Void;
	function toNext():Void;
	function toPrevious():Void;
}

@:pythonImport("PyQt5.QtWidgets", "SubmitPolicy")
@:native("QDataWidgetMapper.SubmitPolicy")
extern enum abstract QDataWidgetMapperSubmitPolicy(Int) from Int to Int {
	var AutoSubmit;
	var ManualSubmit;
}

