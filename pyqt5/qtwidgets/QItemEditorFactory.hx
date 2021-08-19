package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QByteArray;

@:pythonImport("PyQt5.QtWidgets", "QItemEditorCreatorBase")
@:native("QItemEditorCreatorBase")
extern class QItemEditorCreatorBase {
	function createWidget(parent:QWidget):QWidget;
	function valuePropertyName():QByteArray;
}

@:pythonImport("PyQt5.QtWidgets", "QItemEditorFactory")
@:native("QItemEditorFactory")
extern class QItemEditorFactory {
	static function setDefaultFactory(factory:QItemEditorFactory):Void;

	function new();

	function createEditor(userType:Int, parent:QWidget):QWidget;
	function valuePropertyName(userType:Int):QByteArray;
	function registerEditor(userType:Int, creator:QItemEditorCreatorBase):Void;
}

