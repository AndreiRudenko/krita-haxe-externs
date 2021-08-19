package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QComboBox;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtgui.QFontDatabase;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtgui.QFont;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;

typedef QFontComboBoxFontFilters = QFlags<QFontComboBoxFontFilter>;

@:pythonImport("PyQt5.QtWidgets", "QFontComboBox")
@:native("QFontComboBox")
extern class QFontComboBox extends QComboBox {
	var currentFontChanged:QSignal1<QFont>;

	function new(?parent:QWidget);

	function fontFilters():QFontComboBoxFontFilters;
	function setWritingSystem(?v:QFontDatabaseWritingSystem):Void;
	function writingSystem():QFontDatabaseWritingSystem;
	function setFontFilters(filters:QFontComboBoxFontFilters):Void;
	function currentFont():QFont;
	function sizeHint():QSize;
	function setCurrentFont(f:QFont):Void;
	function event(e:QEvent):Bool;
}

@:pythonImport("PyQt5.QtWidgets", "FontFilter")
@:native("QFontComboBox.FontFilter")
extern enum abstract QFontComboBoxFontFilter(Int) from Int to Int {
	var AllFonts;
	var ScalableFonts;
	var NonScalableFonts;
	var MonospacedFonts;
	var ProportionalFonts;
}

