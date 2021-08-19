package pyqt5.qtgui;

import pyqt5.qtcore.QList;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QStringList;
import pyqt5.qtgui.QFont;
import pyqt5.qtgui.QFontInfo;
import pyqt5.qtcore.QByteArray;

@:pythonImport("PyQt5.QtGui", "QFontDatabase")
@:native("QFontDatabase")
extern class QFontDatabase {
	static function standardSizes():QList<Int>;
	static function writingSystemName(writingSystem:QFontDatabaseWritingSystem):QString;
	static function writingSystemSample(writingSystem:QFontDatabaseWritingSystem):QString;
	static function addApplicationFont(fileName:QString):Int;
	static function addApplicationFontFromData(fontData:QByteArray):Int;
	static function applicationFontFamilies(id:Int):QStringList;
	static function removeApplicationFont(id:Int):Bool;
	static function removeAllApplicationFonts():Bool;
	static function supportsThreadedFontRendering():Bool;
	static function systemFont(type:QFontDatabaseSystemFont):QFont;

	function new();

	@:overload(function(family:QString):QList<QFontDatabaseWritingSystem> {})
	function writingSystems():QList<QFontDatabaseWritingSystem>;
	function families(?writingSystem:QFontDatabaseWritingSystem):QStringList;
	function styles(family:QString):QStringList;
	function pointSizes(family:QString, ?style:QString):QList<Int>;
	function smoothSizes(family:QString, style:QString):QList<Int>;
	@:overload(function(fontInfo:QFontInfo):QString {})
	function styleString(font:QFont):QString;
	function font(family:QString, style:QString, pointSize:Int):QFont;
	function isBitmapScalable(family:QString, ?style:QString):Bool;
	function isSmoothlyScalable(family:QString, ?style:QString):Bool;
	function isScalable(family:QString, ?style:QString):Bool;
	function isFixedPitch(family:QString, ?style:QString):Bool;
	function italic(family:QString, style:QString):Bool;
	function bold(family:QString, style:QString):Bool;
	function weight(family:QString, style:QString):Int;
	function isPrivateFamily(family:QString):Bool;
}

@:pythonImport("PyQt5.QtGui", "WritingSystem")
@:native("QFontDatabase.WritingSystem")
extern enum abstract QFontDatabaseWritingSystem(Int) from Int to Int {
	var Any;
	var Latin;
	var Greek;
	var Cyrillic;
	var Armenian;
	var Hebrew;
	var Arabic;
	var Syriac;
	var Thaana;
	var Devanagari;
	var Bengali;
	var Gurmukhi;
	var Gujarati;
	var Oriya;
	var Tamil;
	var Telugu;
	var Kannada;
	var Malayalam;
	var Sinhala;
	var Thai;
	var Lao;
	var Tibetan;
	var Myanmar;
	var Georgian;
	var Khmer;
	var SimplifiedChinese;
	var TraditionalChinese;
	var Japanese;
	var Korean;
	var Vietnamese;
	var Other;
	var Symbol;
	var Ogham;
	var Runic;
	var Nko;
}

@:pythonImport("PyQt5.QtGui", "SystemFont")
@:native("QFontDatabase.SystemFont")
extern enum abstract QFontDatabaseSystemFont(Int) from Int to Int {
	var GeneralFont;
	var FixedFont;
	var TitleFont;
	var SmallestReadableFont;
}

