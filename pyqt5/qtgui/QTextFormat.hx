package pyqt5.qtgui;

import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QColor;
import pyqt5.qtgui.QPen;
import pyqt5.qtgui.QBrush;
import pyqt5.qtcore.QVector;
import pyqt5.qtcore.QMap;
import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QFont;
import pyqt5.qtcore.QStringList;
import pyqt5.qtgui.QTextOption;
import pyqt5.qtcore.QList;

typedef QTextFormatPageBreakFlags = QFlags<QTextFormatPageBreakFlag>;

@:pythonImport("PyQt5.QtGui", "QTextLength")
@:native("QTextLength")
extern class QTextLength {
	@:overload(function():QTextLength {})
	@:overload(function(atype:QTextLengthType, avalue:Float):QTextLength {})
	function new(variant:QVariant);

	function type():QTextLengthType;
	function value(maximumLength:Float):Float;
	function rawValue():Float;
}

@:pythonImport("PyQt5.QtGui", "Type")
@:native("QTextLength.Type")
extern enum abstract QTextLengthType(Int) from Int to Int {
	var VariableLength;
	var FixedLength;
	var PercentageLength;
}

@:pythonImport("PyQt5.QtGui", "QTextFormat")
@:native("QTextFormat")
extern class QTextFormat {
	@:overload(function():QTextFormat {})
	@:overload(function(type:Int):QTextFormat {})
	@:overload(function(rhs:QTextFormat):QTextFormat {})
	function new(variant:QVariant);

	function merge(other:QTextFormat):Void;
	function isValid():Bool;
	function type():Int;
	function objectIndex():Int;
	function setObjectIndex(object:Int):Void;
	function property(propertyId:Int):QVariant;
	@:overload(function(propertyId:Int, lengths:QVector<QTextLength>):Void {})
	function setProperty(propertyId:Int, value:QVariant):Void;
	function clearProperty(propertyId:Int):Void;
	function hasProperty(propertyId:Int):Bool;
	function boolProperty(propertyId:Int):Bool;
	function intProperty(propertyId:Int):Int;
	function doubleProperty(propertyId:Int):Float;
	function stringProperty(propertyId:Int):QString;
	function colorProperty(propertyId:Int):QColor;
	function penProperty(propertyId:Int):QPen;
	function brushProperty(propertyId:Int):QBrush;
	function lengthProperty(propertyId:Int):QTextLength;
	function lengthVectorProperty(propertyId:Int):QVector<QTextLength>;
	function properties():QMap<Int, QVariant>;
	function objectType():Int;
	function isCharFormat():Bool;
	function isBlockFormat():Bool;
	function isListFormat():Bool;
	function isFrameFormat():Bool;
	function isImageFormat():Bool;
	function isTableFormat():Bool;
	function toBlockFormat():QTextBlockFormat;
	function toCharFormat():QTextCharFormat;
	function toListFormat():QTextListFormat;
	function toTableFormat():QTextTableFormat;
	function toFrameFormat():QTextFrameFormat;
	function toImageFormat():QTextImageFormat;
	function setLayoutDirection(direction:QtLayoutDirection):Void;
	function layoutDirection():QtLayoutDirection;
	function setBackground(brush:QBrush):Void;
	function background():QBrush;
	function clearBackground():Void;
	function setForeground(brush:QBrush):Void;
	function foreground():QBrush;
	function clearForeground():Void;
	function setObjectType(atype:Int):Void;
	function propertyCount():Int;
	function isTableCellFormat():Bool;
	function toTableCellFormat():QTextTableCellFormat;
	function swap(other:QTextFormat):Void;
	function isEmpty():Bool;
}

@:pythonImport("PyQt5.QtGui", "FormatType")
@:native("QTextFormat.FormatType")
extern enum abstract QTextFormatFormatType(Int) from Int to Int {
	var InvalidFormat;
	var BlockFormat;
	var CharFormat;
	var ListFormat;
	var TableFormat;
	var FrameFormat;
	var UserFormat;
}

@:pythonImport("PyQt5.QtGui", "ObjectTypes")
@:native("QTextFormat.ObjectTypes")
extern enum abstract QTextFormatObjectTypes(Int) from Int to Int {
	var NoObject;
	var ImageObject;
	var TableObject;
	var TableCellObject;
	var UserObject;
}

@:pythonImport("PyQt5.QtGui", "PageBreakFlag")
@:native("QTextFormat.PageBreakFlag")
extern enum abstract QTextFormatPageBreakFlag(Int) from Int to Int {
	var PageBreak_Auto;
	var PageBreak_AlwaysBefore;
	var PageBreak_AlwaysAfter;
}

@:pythonImport("PyQt5.QtGui", "Property")
@:native("QTextFormat.Property")
extern enum abstract QTextFormatProperty(Int) from Int to Int {
	var ObjectIndex;
	var CssFloat;
	var LayoutDirection;
	var OutlinePen;
	var BackgroundBrush;
	var ForegroundBrush;
	var BlockAlignment;
	var BlockTopMargin;
	var BlockBottomMargin;
	var BlockLeftMargin;
	var BlockRightMargin;
	var TextIndent;
	var BlockIndent;
	var BlockNonBreakableLines;
	var BlockTrailingHorizontalRulerWidth;
	var FontFamily;
	var FontPointSize;
	var FontSizeAdjustment;
	var FontSizeIncrement;
	var FontWeight;
	var FontItalic;
	var FontUnderline;
	var FontOverline;
	var FontStrikeOut;
	var FontFixedPitch;
	var FontPixelSize;
	var TextUnderlineColor;
	var TextVerticalAlignment;
	var TextOutline;
	var IsAnchor;
	var AnchorHref;
	var AnchorName;
	var ObjectType;
	var ListStyle;
	var ListIndent;
	var FrameBorder;
	var FrameMargin;
	var FramePadding;
	var FrameWidth;
	var FrameHeight;
	var TableColumns;
	var TableColumnWidthConstraints;
	var TableCellSpacing;
	var TableCellPadding;
	var TableCellRowSpan;
	var TableCellColumnSpan;
	var ImageName;
	var ImageWidth;
	var ImageHeight;
	var TextUnderlineStyle;
	var TableHeaderRowCount;
	var FullWidthSelection;
	var PageBreakPolicy;
	var TextToolTip;
	var FrameTopMargin;
	var FrameBottomMargin;
	var FrameLeftMargin;
	var FrameRightMargin;
	var FrameBorderBrush;
	var FrameBorderStyle;
	var BackgroundImageUrl;
	var TabPositions;
	var FirstFontProperty;
	var FontCapitalization;
	var FontLetterSpacing;
	var FontWordSpacing;
	var LastFontProperty;
	var TableCellTopPadding;
	var TableCellBottomPadding;
	var TableCellLeftPadding;
	var TableCellRightPadding;
	var FontStyleHint;
	var FontStyleStrategy;
	var FontKerning;
	var LineHeight;
	var LineHeightType;
	var FontHintingPreference;
	var ListNumberPrefix;
	var ListNumberSuffix;
	var FontStretch;
	var FontLetterSpacingType;
	var HeadingLevel;
	var ImageQuality;
	var FontFamilies;
	var FontStyleName;
	var BlockQuoteLevel;
	var BlockCodeLanguage;
	var BlockCodeFence;
	var BlockMarker;
	var TableBorderCollapse;
	var TableCellTopBorder;
	var TableCellBottomBorder;
	var TableCellLeftBorder;
	var TableCellRightBorder;
	var TableCellTopBorderStyle;
	var TableCellBottomBorderStyle;
	var TableCellLeftBorderStyle;
	var TableCellRightBorderStyle;
	var TableCellTopBorderBrush;
	var TableCellBottomBorderBrush;
	var TableCellLeftBorderBrush;
	var TableCellRightBorderBrush;
	var ImageTitle;
	var ImageAltText;
	var UserProperty;
}

@:pythonImport("PyQt5.QtGui", "QTextCharFormat")
@:native("QTextCharFormat")
extern class QTextCharFormat extends QTextFormat {
	function new();

	function isValid():Bool;
	@:overload(function(font:QFont, behavior:QTextCharFormatFontPropertiesInheritanceBehavior):Void {})
	function setFont(font:QFont):Void;
	function font():QFont;
	function setFontFamily(family:QString):Void;
	function fontFamily():QString;
	function setFontPointSize(size:Float):Void;
	function fontPointSize():Float;
	function setFontWeight(weight:Int):Void;
	function fontWeight():Int;
	function setFontItalic(italic:Bool):Void;
	function fontItalic():Bool;
	function setFontUnderline(underline:Bool):Void;
	function fontUnderline():Bool;
	function setFontOverline(overline:Bool):Void;
	function fontOverline():Bool;
	function setFontStrikeOut(strikeOut:Bool):Void;
	function fontStrikeOut():Bool;
	function setUnderlineColor(color:QColor):Void;
	function underlineColor():QColor;
	function setFontFixedPitch(fixedPitch:Bool):Void;
	function fontFixedPitch():Bool;
	function setVerticalAlignment(alignment:QTextCharFormatVerticalAlignment):Void;
	function verticalAlignment():QTextCharFormatVerticalAlignment;
	function setAnchor(anchor:Bool):Void;
	function isAnchor():Bool;
	function setAnchorHref(value:QString):Void;
	function anchorHref():QString;
	function tableCellRowSpan():Int;
	function tableCellColumnSpan():Int;
	function setTableCellRowSpan(atableCellRowSpan:Int):Void;
	function setTableCellColumnSpan(atableCellColumnSpan:Int):Void;
	function setTextOutline(pen:QPen):Void;
	function textOutline():QPen;
	function setUnderlineStyle(style:QTextCharFormatUnderlineStyle):Void;
	function underlineStyle():QTextCharFormatUnderlineStyle;
	function setToolTip(tip:QString):Void;
	function toolTip():QString;
	function setAnchorNames(names:QStringList):Void;
	function anchorNames():QStringList;
	function setFontCapitalization(capitalization:QFontCapitalization):Void;
	function fontCapitalization():QFontCapitalization;
	function setFontLetterSpacing(spacing:Float):Void;
	function fontLetterSpacing():Float;
	function setFontWordSpacing(spacing:Float):Void;
	function fontWordSpacing():Float;
	function setFontStyleHint(hint:QFontStyleHint, ?strategy:QFontStyleStrategy):Void;
	function setFontStyleStrategy(strategy:QFontStyleStrategy):Void;
	function fontStyleHint():QFontStyleHint;
	function fontStyleStrategy():QFontStyleStrategy;
	function setFontKerning(enable:Bool):Void;
	function fontKerning():Bool;
	function setFontHintingPreference(hintingPreference:QFontHintingPreference):Void;
	function fontHintingPreference():QFontHintingPreference;
	function fontStretch():Int;
	function setFontStretch(factor:Int):Void;
	function setFontLetterSpacingType(letterSpacingType:QFontSpacingType):Void;
	function fontLetterSpacingType():QFontSpacingType;
	function setFontFamilies(families:QStringList):Void;
	function fontFamilies():QVariant;
	function setFontStyleName(styleName:QString):Void;
	function fontStyleName():QVariant;
}

@:pythonImport("PyQt5.QtGui", "VerticalAlignment")
@:native("QTextCharFormat.VerticalAlignment")
extern enum abstract QTextCharFormatVerticalAlignment(Int) from Int to Int {
	var AlignNormal;
	var AlignSuperScript;
	var AlignSubScript;
	var AlignMiddle;
	var AlignTop;
	var AlignBottom;
	var AlignBaseline;
}

@:pythonImport("PyQt5.QtGui", "UnderlineStyle")
@:native("QTextCharFormat.UnderlineStyle")
extern enum abstract QTextCharFormatUnderlineStyle(Int) from Int to Int {
	var NoUnderline;
	var SingleUnderline;
	var DashUnderline;
	var DotLine;
	var DashDotLine;
	var DashDotDotLine;
	var WaveUnderline;
	var SpellCheckUnderline;
}

@:pythonImport("PyQt5.QtGui", "FontPropertiesInheritanceBehavior")
@:native("QTextCharFormat.FontPropertiesInheritanceBehavior")
extern enum abstract QTextCharFormatFontPropertiesInheritanceBehavior(Int) from Int to Int {
	var FontPropertiesSpecifiedOnly;
	var FontPropertiesAll;
}

@:pythonImport("PyQt5.QtGui", "QTextBlockFormat")
@:native("QTextBlockFormat")
extern class QTextBlockFormat extends QTextFormat {
	function new();

	function isValid():Bool;
	function alignment():QtAlignment;
	function setTopMargin(margin:Float):Void;
	function topMargin():Float;
	function setBottomMargin(margin:Float):Void;
	function bottomMargin():Float;
	function setLeftMargin(margin:Float):Void;
	function leftMargin():Float;
	function setRightMargin(margin:Float):Void;
	function rightMargin():Float;
	function setTextIndent(margin:Float):Void;
	function textIndent():Float;
	function indent():Int;
	function setNonBreakableLines(b:Bool):Void;
	function nonBreakableLines():Bool;
	function setAlignment(aalignment:QtAlignment):Void;
	function setIndent(aindent:Int):Void;
	function setPageBreakPolicy(flags:QTextFormatPageBreakFlags):Void;
	function pageBreakPolicy():QTextFormatPageBreakFlags;
	function setTabPositions(tabs:QList<Tab>):Void;
	function tabPositions():QList<Tab>;
	function setLineHeight(height:Float, heightType:Int):Void;
	@:overload(function(scriptLineHeight:Float, ?scaling:Float):Float {})
	function lineHeight():Float;
	function lineHeightType():Int;
	function setHeadingLevel(alevel:Int):Void;
	function headingLevel():Int;
	function setMarker(marker:QTextBlockFormatMarkerType):Void;
	function marker():QTextBlockFormatMarkerType;
}

@:pythonImport("PyQt5.QtGui", "LineHeightTypes")
@:native("QTextBlockFormat.LineHeightTypes")
extern enum abstract QTextBlockFormatLineHeightTypes(Int) from Int to Int {
	var SingleHeight;
	var ProportionalHeight;
	var FixedHeight;
	var MinimumHeight;
	var LineDistanceHeight;
}

@:pythonImport("PyQt5.QtGui", "MarkerType")
@:native("QTextBlockFormat.MarkerType")
extern enum abstract QTextBlockFormatMarkerType(Int) from Int to Int {
	var NoMarker;
	var Unchecked;
	var Checked;
}

@:pythonImport("PyQt5.QtGui", "QTextListFormat")
@:native("QTextListFormat")
extern class QTextListFormat extends QTextFormat {
	function new();

	function isValid():Bool;
	function style():QTextListFormatStyle;
	function indent():Int;
	function setStyle(astyle:QTextListFormatStyle):Void;
	function setIndent(aindent:Int):Void;
	function numberPrefix():QString;
	function numberSuffix():QString;
	function setNumberPrefix(np:QString):Void;
	function setNumberSuffix(ns:QString):Void;
}

@:pythonImport("PyQt5.QtGui", "Style")
@:native("QTextListFormat.Style")
extern enum abstract QTextListFormatStyle(Int) from Int to Int {
	var ListDisc;
	var ListCircle;
	var ListSquare;
	var ListDecimal;
	var ListLowerAlpha;
	var ListUpperAlpha;
	var ListLowerRoman;
	var ListUpperRoman;
}

@:pythonImport("PyQt5.QtGui", "QTextImageFormat")
@:native("QTextImageFormat")
extern class QTextImageFormat extends QTextCharFormat {
	function new();

	function isValid():Bool;
	function name():QString;
	function width():Float;
	function height():Float;
	function quality():Int;
	function setName(aname:QString):Void;
	function setWidth(awidth:Float):Void;
	function setHeight(aheight:Float):Void;
	function setQuality(?quality:Int):Void;
}

@:pythonImport("PyQt5.QtGui", "QTextFrameFormat")
@:native("QTextFrameFormat")
extern class QTextFrameFormat extends QTextFormat {
	function new();

	function isValid():Bool;
	function setPosition(f:QTextFrameFormatPosition):Void;
	function position():QTextFrameFormatPosition;
	function border():Float;
	function margin():Float;
	function padding():Float;
	@:overload(function(awidth:Float):Void {})
	function setWidth(length:QTextLength):Void;
	function width():QTextLength;
	function height():QTextLength;
	function setBorder(aborder:Float):Void;
	function setMargin(amargin:Float):Void;
	function setPadding(apadding:Float):Void;
	@:overload(function(aheight:QTextLength):Void {})
	function setHeight(aheight:Float):Void;
	function setPageBreakPolicy(flags:QTextFormatPageBreakFlags):Void;
	function pageBreakPolicy():QTextFormatPageBreakFlags;
	function setBorderBrush(brush:QBrush):Void;
	function borderBrush():QBrush;
	function setBorderStyle(style:QTextFrameFormatBorderStyle):Void;
	function borderStyle():QTextFrameFormatBorderStyle;
	function topMargin():Float;
	function bottomMargin():Float;
	function leftMargin():Float;
	function rightMargin():Float;
	function setTopMargin(amargin:Float):Void;
	function setBottomMargin(amargin:Float):Void;
	function setLeftMargin(amargin:Float):Void;
	function setRightMargin(amargin:Float):Void;
}

@:pythonImport("PyQt5.QtGui", "Position")
@:native("QTextFrameFormat.Position")
extern enum abstract QTextFrameFormatPosition(Int) from Int to Int {
	var InFlow;
	var FloatLeft;
	var FloatRight;
}

@:pythonImport("PyQt5.QtGui", "BorderStyle")
@:native("QTextFrameFormat.BorderStyle")
extern enum abstract QTextFrameFormatBorderStyle(Int) from Int to Int {
	var BorderStyle_None;
	var BorderStyle_Dotted;
	var BorderStyle_Dashed;
	var BorderStyle_Solid;
	var BorderStyle_Double;
	var BorderStyle_DotDash;
	var BorderStyle_DotDotDash;
	var BorderStyle_Groove;
	var BorderStyle_Ridge;
	var BorderStyle_Inset;
	var BorderStyle_Outset;
}

@:pythonImport("PyQt5.QtGui", "QTextTableFormat")
@:native("QTextTableFormat")
extern class QTextTableFormat extends QTextFrameFormat {
	function new();

	function isValid():Bool;
	function columns():Int;
	function setColumnWidthConstraints(constraints:QVector<QTextLength>):Void;
	function columnWidthConstraints():QVector<QTextLength>;
	function clearColumnWidthConstraints():Void;
	function cellSpacing():Float;
	function setCellSpacing(spacing:Float):Void;
	function cellPadding():Float;
	function alignment():QtAlignment;
	function setColumns(acolumns:Int):Void;
	function setCellPadding(apadding:Float):Void;
	function setAlignment(aalignment:QtAlignment):Void;
	function setHeaderRowCount(count:Int):Void;
	function headerRowCount():Int;
	function setBorderCollapse(borderCollapse:Bool):Void;
	function borderCollapse():Bool;
}

@:pythonImport("PyQt5.QtGui", "QTextTableCellFormat")
@:native("QTextTableCellFormat")
extern class QTextTableCellFormat extends QTextCharFormat {
	function new();

	function isValid():Bool;
	function setTopPadding(padding:Float):Void;
	function topPadding():Float;
	function setBottomPadding(padding:Float):Void;
	function bottomPadding():Float;
	function setLeftPadding(padding:Float):Void;
	function leftPadding():Float;
	function setRightPadding(padding:Float):Void;
	function rightPadding():Float;
	function setPadding(padding:Float):Void;
	function setTopBorder(width:Float):Void;
	function topBorder():Float;
	function setBottomBorder(width:Float):Void;
	function bottomBorder():Float;
	function setLeftBorder(width:Float):Void;
	function leftBorder():Float;
	function setRightBorder(width:Float):Void;
	function rightBorder():Float;
	function setBorder(width:Float):Void;
	function setTopBorderStyle(style:QTextFrameFormatBorderStyle):Void;
	function topBorderStyle():QTextFrameFormatBorderStyle;
	function setBottomBorderStyle(style:QTextFrameFormatBorderStyle):Void;
	function bottomBorderStyle():QTextFrameFormatBorderStyle;
	function setLeftBorderStyle(style:QTextFrameFormatBorderStyle):Void;
	function leftBorderStyle():QTextFrameFormatBorderStyle;
	function setRightBorderStyle(style:QTextFrameFormatBorderStyle):Void;
	function rightBorderStyle():QTextFrameFormatBorderStyle;
	function setBorderStyle(style:QTextFrameFormatBorderStyle):Void;
	function setTopBorderBrush(brush:QBrush):Void;
	function topBorderBrush():QBrush;
	function setBottomBorderBrush(brush:QBrush):Void;
	function bottomBorderBrush():QBrush;
	function setLeftBorderBrush(brush:QBrush):Void;
	function leftBorderBrush():QBrush;
	function setRightBorderBrush(brush:QBrush):Void;
	function rightBorderBrush():QBrush;
	function setBorderBrush(brush:QBrush):Void;
}

