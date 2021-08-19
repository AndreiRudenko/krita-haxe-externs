package pyqt5.qtgui;

import pyqt5.qtcore.QString;
import pyqt5.qtgui.QPaintDevice;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QStringList;

@:pythonImport("PyQt5.QtGui", "QFont")
@:native("QFont")
extern class QFont {
	static function substitute(?v:QString):QString;
	static function substitutes(?v:QString):QStringList;
	static function substitutions():QStringList;
	static function insertSubstitution(?v:QString, ?v:QString):Void;
	static function insertSubstitutions(?v:QString, ?v:QStringList):Void;
	static function removeSubstitutions(?v:QString):Void;
	static function initialize():Void;
	static function cleanup():Void;
	static function cacheStatistics():Void;

	@:overload(function():QFont {})
	@:overload(function(family:QString, ?pointSize:Int, ?weight:Int, ?italic:Bool):QFont {})
	@:overload(function(?v:QFont, pd:QPaintDevice):QFont {})
	@:overload(function(?v:QFont):QFont {})
	function new(variant:QVariant);

	function family():QString;
	function setFamily(?v:QString):Void;
	function pointSize():Int;
	function setPointSize(?v:Int):Void;
	function pointSizeF():Float;
	function setPointSizeF(?v:Float):Void;
	function pixelSize():Int;
	function setPixelSize(?v:Int):Void;
	function weight():Int;
	function setWeight(?v:Int):Void;
	function setStyle(style:QFontStyle):Void;
	function style():QFontStyle;
	function underline():Bool;
	function setUnderline(?v:Bool):Void;
	function overline():Bool;
	function setOverline(?v:Bool):Void;
	function strikeOut():Bool;
	function setStrikeOut(?v:Bool):Void;
	function fixedPitch():Bool;
	function setFixedPitch(?v:Bool):Void;
	function kerning():Bool;
	function setKerning(?v:Bool):Void;
	function styleHint():QFontStyleHint;
	function styleStrategy():QFontStyleStrategy;
	function setStyleHint(hint:QFontStyleHint, ?strategy:QFontStyleStrategy):Void;
	function setStyleStrategy(s:QFontStyleStrategy):Void;
	function stretch():Int;
	function setStretch(?v:Int):Void;
	function rawMode():Bool;
	function setRawMode(?v:Bool):Void;
	function exactMatch():Bool;
	function isCopyOf(?v:QFont):Bool;
	function setRawName(?v:QString):Void;
	function rawName():QString;
	function key():QString;
	function toString():QString;
	function fromString(?v:QString):Bool;
	function defaultFamily():QString;
	function lastResortFamily():QString;
	function lastResortFont():QString;
	function resolve(?v:QFont):QFont;
	function bold():Bool;
	function setBold(enable:Bool):Void;
	function italic():Bool;
	function setItalic(b:Bool):Void;
	function letterSpacing():Float;
	function letterSpacingType():QFontSpacingType;
	function setLetterSpacing(type:QFontSpacingType, spacing:Float):Void;
	function wordSpacing():Float;
	function setWordSpacing(spacing:Float):Void;
	function setCapitalization(?v:QFontCapitalization):Void;
	function capitalization():QFontCapitalization;
	function styleName():QString;
	function setStyleName(styleName:QString):Void;
	function setHintingPreference(hintingPreference:QFontHintingPreference):Void;
	function hintingPreference():QFontHintingPreference;
	function swap(other:QFont):Void;
	function families():QStringList;
	function setFamilies(?v:QStringList):Void;
}

@:pythonImport("PyQt5.QtGui", "StyleHint")
@:native("QFont.StyleHint")
extern enum abstract QFontStyleHint(Int) from Int to Int {
	var Helvetica;
	var SansSerif;
	var Times;
	var Serif;
	var Courier;
	var TypeWriter;
	var OldEnglish;
	var Decorative;
	var System;
	var AnyStyle;
	var Cursive;
	var Monospace;
	var Fantasy;
}

@:pythonImport("PyQt5.QtGui", "StyleStrategy")
@:native("QFont.StyleStrategy")
extern enum abstract QFontStyleStrategy(Int) from Int to Int {
	var PreferDefault;
	var PreferBitmap;
	var PreferDevice;
	var PreferOutline;
	var ForceOutline;
	var PreferMatch;
	var PreferQuality;
	var PreferAntialias;
	var NoAntialias;
	var NoSubpixelAntialias;
	var OpenGLCompatible;
	var NoFontMerging;
	var ForceIntegerMetrics;
	var PreferNoShaping;
}

@:pythonImport("PyQt5.QtGui", "Weight")
@:native("QFont.Weight")
extern enum abstract QFontWeight(Int) from Int to Int {
	var Thin;
	var ExtraLight;
	var Light;
	var Normal;
	var Medium;
	var DemiBold;
	var Bold;
	var ExtraBold;
	var Black;
}

@:pythonImport("PyQt5.QtGui", "Style")
@:native("QFont.Style")
extern enum abstract QFontStyle(Int) from Int to Int {
	var StyleNormal;
	var StyleItalic;
	var StyleOblique;
}

@:pythonImport("PyQt5.QtGui", "Stretch")
@:native("QFont.Stretch")
extern enum abstract QFontStretch(Int) from Int to Int {
	var AnyStretch;
	var UltraCondensed;
	var ExtraCondensed;
	var Condensed;
	var SemiCondensed;
	var Unstretched;
	var SemiExpanded;
	var Expanded;
	var ExtraExpanded;
	var UltraExpanded;
}

@:pythonImport("PyQt5.QtGui", "Capitalization")
@:native("QFont.Capitalization")
extern enum abstract QFontCapitalization(Int) from Int to Int {
	var MixedCase;
	var AllUppercase;
	var AllLowercase;
	var SmallCaps;
	var Capitalize;
}

@:pythonImport("PyQt5.QtGui", "SpacingType")
@:native("QFont.SpacingType")
extern enum abstract QFontSpacingType(Int) from Int to Int {
	var PercentageSpacing;
	var AbsoluteSpacing;
}

@:pythonImport("PyQt5.QtGui", "HintingPreference")
@:native("QFont.HintingPreference")
extern enum abstract QFontHintingPreference(Int) from Int to Int {
	var PreferDefaultHinting;
	var PreferNoHinting;
	var PreferVerticalHinting;
	var PreferFullHinting;
}

