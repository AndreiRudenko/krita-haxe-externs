package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QAction;
import pyqt5.qtcore.QObject;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QList;

@:pythonImport("PyQt5.QtWidgets", "QWidgetAction")
@:native("QWidgetAction")
extern class QWidgetAction extends QAction {
	function new(parent:QObject);

	function setDefaultWidget(w:QWidget):Void;
	function defaultWidget():QWidget;
	function requestWidget(parent:QWidget):QWidget;
	function releaseWidget(widget:QWidget):Void;
	function event(?v:QEvent):Bool;
	function eventFilter(?v:QObject, ?v:QEvent):Bool;
	function createWidget(parent:QWidget):QWidget;
	function deleteWidget(widget:QWidget):Void;
	function createdWidgets():QList<QWidget>;
}

