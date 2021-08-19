package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtCore", "QFileSystemWatcher")
@:native("QFileSystemWatcher")
extern class QFileSystemWatcher extends QObject {
	var directoryChanged:QSignal1<QString>;
	var fileChanged:QSignal1<QString>;

	@:overload(function(?parent:QObject):QFileSystemWatcher {})
	function new(paths:QStringList, ?parent:QObject);

	function addPath(file:QString):Bool;
	function addPaths(files:QStringList):QStringList;
	function directories():QStringList;
	function files():QStringList;
	function removePath(file:QString):Bool;
	function removePaths(files:QStringList):QStringList;
}

