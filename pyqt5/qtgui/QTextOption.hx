package pyqt5.qtgui;

import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QChar;

typedef QTextOptionFlags = QFlags<QTextOptionFlag>;

@:pythonImport("PyQt5.QtGui", "QTextOption")
@:native("QTextOption")
extern class QTextOption {
	@:overload(function():QTextOption {})
	@:overload(function(alignment:QtAlignment):QTextOption {})
	function new(o:QTextOption);

	function alignment():QtAlignment;
	function setTextDirection(aDirection:QtLayoutDirection):Void;
	function textDirection():QtLayoutDirection;
	function setWrapMode(wrap:QTextOptionWrapMode):Void;
	function wrapMode():QTextOptionWrapMode;
	function flags():QTextOptionFlags;
	function tabStop():Float;
	function setTabArray(tabStops:QList<Float>):Void;
	function tabArray():QList<Float>;
	function setUseDesignMetrics(b:Bool):Void;
	function useDesignMetrics():Bool;
	function setAlignment(aalignment:QtAlignment):Void;
	function setFlags(flags:QTextOptionFlags):Void;
	function setTabStop(atabStop:Float):Void;
	function setTabs(tabStops:QList<Tab>):Void;
	function tabs():QList<Tab>;
	function setTabStopDistance(tabStopDistance:Float):Void;
	function tabStopDistance():Float;
}

@:pythonImport("PyQt5.QtGui", "QTextOption")
@:native("QTextOption")
extern enum abstract QTextOptionWrapMode(Int) from Int to Int {
	var NoWrap;
	var WordWrap;
	var ManualWrap;
	var WrapAnywhere;
	var WrapAtWordBoundaryOrAnywhere;
}

@:pythonImport("PyQt5.QtGui", "QTextOption")
@:native("QTextOption")
extern enum abstract QTextOptionFlag(Int) from Int to Int {
	var IncludeTrailingSpaces;
	var ShowTabsAndSpaces;
	var ShowLineAndParagraphSeparators;
	var AddSpaceForLineAndParagraphSeparators;
	var SuppressColors;
	var ShowDocumentTerminator;
}

@:pythonImport("PyQt5.QtGui", "QTextOption")
@:native("QTextOption")
extern enum abstract QTextOptionTabType(Int) from Int to Int {
	var LeftTab;
	var RightTab;
	var CenterTab;
	var DelimiterTab;
}

@:pythonImport("PyQt5.QtGui", "Tab")
@:native("Tab")
extern class Tab {
	@:overload(function():Tab {})
	function new(pos:Float, tabType:QTextOptionTabType, ?delim:QChar);
}

