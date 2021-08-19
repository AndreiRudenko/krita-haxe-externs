package pyqt5.qtwidgets;

import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QString;
import pyqt5.qtwidgets.QStyle;

@:pythonImport("PyQt5.QtWidgets", "QStyleFactory")
@:native("QStyleFactory")
extern class QStyleFactory {
	static function keys():QStringList;
	static function create(?v:QString):QStyle;
}

