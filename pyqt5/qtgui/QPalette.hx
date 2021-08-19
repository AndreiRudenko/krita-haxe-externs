package pyqt5.qtgui;

import pyqt5.qtgui.QColor;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QBrush;
import pyqt5.qtcore.QVariant;

@:pythonImport("PyQt5.QtGui", "QPalette")
@:native("QPalette")
extern class QPalette {
	@:overload(function():QPalette {})
	@:overload(function(button:QColor):QPalette {})
	@:overload(function(button:QtGlobalColor):QPalette {})
	@:overload(function(button:QColor, background:QColor):QPalette {})
	@:overload(function(foreground:QBrush, button:QBrush, light:QBrush, dark:QBrush, mid:QBrush, text:QBrush, bright_text:QBrush, base:QBrush, background:QBrush):QPalette {})
	@:overload(function(palette:QPalette):QPalette {})
	function new(variant:QVariant);

	function currentColorGroup():QPaletteColorGroup;
	function setCurrentColorGroup(cg:QPaletteColorGroup):Void;
	@:overload(function(cr:QPaletteColorRole):QColor {})
	function color(cg:QPaletteColorGroup, cr:QPaletteColorRole):QColor;
	@:overload(function(cr:QPaletteColorRole):QBrush {})
	function brush(cg:QPaletteColorGroup, cr:QPaletteColorRole):QBrush;
	@:overload(function(acr:QPaletteColorRole, abrush:QBrush):Void {})
	function setBrush(cg:QPaletteColorGroup, cr:QPaletteColorRole, brush:QBrush):Void;
	function setColorGroup(cr:QPaletteColorGroup, foreground:QBrush, button:QBrush, light:QBrush, dark:QBrush, mid:QBrush, text:QBrush, bright_text:QBrush, base:QBrush, background:QBrush):Void;
	function isEqual(cr1:QPaletteColorGroup, cr2:QPaletteColorGroup):Bool;
	function windowText():QBrush;
	function button():QBrush;
	function light():QBrush;
	function dark():QBrush;
	function mid():QBrush;
	function text():QBrush;
	function base():QBrush;
	function alternateBase():QBrush;
	function window():QBrush;
	function midlight():QBrush;
	function brightText():QBrush;
	function buttonText():QBrush;
	function shadow():QBrush;
	function highlight():QBrush;
	function highlightedText():QBrush;
	function link():QBrush;
	function linkVisited():QBrush;
	function toolTipBase():QBrush;
	function toolTipText():QBrush;
	function placeholderText():QBrush;
	function isCopyOf(p:QPalette):Bool;
	@:overload(function():UInt {})
	@:overload(function(mask:UInt):Void {})
	function resolve(?v:QPalette):QPalette;
	@:overload(function(acr:QPaletteColorRole, acolor:QColor):Void {})
	function setColor(acg:QPaletteColorGroup, acr:QPaletteColorRole, acolor:QColor):Void;
	function isBrushSet(cg:QPaletteColorGroup, cr:QPaletteColorRole):Bool;
	function cacheKey():Int;
	function swap(other:QPalette):Void;
}

@:pythonImport("PyQt5.QtGui", "QPalette")
@:native("QPalette")
extern enum abstract QPaletteColorGroup(Int) from Int to Int {
	var Active;
	var Disabled;
	var Inactive;
	var NColorGroups;
	var Current;
	var All;
	var Normal;
}

@:pythonImport("PyQt5.QtGui", "QPalette")
@:native("QPalette")
extern enum abstract QPaletteColorRole(Int) from Int to Int {
	var WindowText;
	var Foreground;
	var Button;
	var Light;
	var Midlight;
	var Dark;
	var Mid;
	var Text;
	var BrightText;
	var ButtonText;
	var Base;
	var Window;
	var Background;
	var Shadow;
	var Highlight;
	var HighlightedText;
	var Link;
	var LinkVisited;
	var AlternateBase;
	var ToolTipBase;
	var ToolTipText;
	var PlaceholderText;
	var NoRole;
	var NColorRoles;
}

