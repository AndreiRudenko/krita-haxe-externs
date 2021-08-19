package pyqt5.qtwidgets;

import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QFileInfo;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QGlobal;

typedef QFileIconProviderOptions = QFlags<QFileIconProviderOption>;

@:pythonImport("PyQt5.QtWidgets", "QFileIconProvider")
@:native("QFileIconProvider")
extern class QFileIconProvider {
	@:overload(function():QFileIconProvider {})
	function new(?v:QFileIconProvider);

	@:overload(function(info:QFileInfo):QIcon {})
	function icon(type:QFileIconProviderIconType):QIcon;
	function type(info:QFileInfo):QString;
	function setOptions(options:QFileIconProviderOptions):Void;
	function options():QFileIconProviderOptions;
}

@:pythonImport("PyQt5.QtWidgets", "QFileIconProvider")
@:native("QFileIconProvider")
extern enum abstract QFileIconProviderIconType(Int) from Int to Int {
	var Computer;
	var Desktop;
	var Trashcan;
	var Network;
	var Drive;
	var Folder;
	var File;
}

@:pythonImport("PyQt5.QtWidgets", "QFileIconProvider")
@:native("QFileIconProvider")
extern enum abstract QFileIconProviderOption(Int) from Int to Int {
	var DontUseCustomDirectoryIcons;
}

