package pyqt5.qtgui;

import pyqt5.qtgui.QPaintDevice;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QPageLayout;
import pyqt5.qtgui.QPageSize;
import pyqt5.qtcore.QMargins;

@:pythonImport("PyQt5.QtGui", "QPagedPaintDevice")
@:native("QPagedPaintDevice")
extern class QPagedPaintDevice extends QPaintDevice {
	function new();

	function newPage():Bool;
	@:overload(function(pageSize:QPageSize):Bool {})
	function setPageSize(size:QPagedPaintDevicePageSize):Void;
	function pageSize():QPagedPaintDevicePageSize;
	function setPageSizeMM(size:QSizeF):Void;
	function pageSizeMM():QSizeF;
	function setMargins(margins:Margins):Void;
	function margins():Margins;
	function setPageLayout(pageLayout:QPageLayout):Bool;
	function setPageOrientation(orientation:QPageLayoutOrientation):Bool;
	@:overload(function(margins:QMarginsF, units:QPageLayoutUnit):Bool {})
	function setPageMargins(margins:QMarginsF):Bool;
	function pageLayout():QPageLayout;
}

@:pythonImport("PyQt5.QtGui", "QPagedPaintDevice")
@:native("QPagedPaintDevice")
extern enum abstract QPagedPaintDevicePageSize(Int) from Int to Int {
	var A4;
	var B5;
	var Letter;
	var Legal;
	var Executive;
	var A0;
	var A1;
	var A2;
	var A3;
	var A5;
	var A6;
	var A7;
	var A8;
	var A9;
	var B0;
	var B1;
	var B10;
	var B2;
	var B3;
	var B4;
	var B6;
	var B7;
	var B8;
	var B9;
	var C5E;
	var Comm10E;
	var DLE;
	var Folio;
	var Ledger;
	var Tabloid;
	var Custom;
	var A10;
	var A3Extra;
	var A4Extra;
	var A4Plus;
	var A4Small;
	var A5Extra;
	var B5Extra;
	var JisB0;
	var JisB1;
	var JisB2;
	var JisB3;
	var JisB4;
	var JisB5;
	var JisB6;
	var JisB7;
	var JisB8;
	var JisB9;
	var JisB10;
	var AnsiC;
	var AnsiD;
	var AnsiE;
	var LegalExtra;
	var LetterExtra;
	var LetterPlus;
	var LetterSmall;
	var TabloidExtra;
	var ArchA;
	var ArchB;
	var ArchC;
	var ArchD;
	var ArchE;
	var Imperial7x9;
	var Imperial8x10;
	var Imperial9x11;
	var Imperial9x12;
	var Imperial10x11;
	var Imperial10x13;
	var Imperial10x14;
	var Imperial12x11;
	var Imperial15x11;
	var ExecutiveStandard;
	var Note;
	var Quarto;
	var Statement;
	var SuperA;
	var SuperB;
	var Postcard;
	var DoublePostcard;
	var Prc16K;
	var Prc32K;
	var Prc32KBig;
	var FanFoldUS;
	var FanFoldGerman;
	var FanFoldGermanLegal;
	var EnvelopeB4;
	var EnvelopeB5;
	var EnvelopeB6;
	var EnvelopeC0;
	var EnvelopeC1;
	var EnvelopeC2;
	var EnvelopeC3;
	var EnvelopeC4;
	var EnvelopeC6;
	var EnvelopeC65;
	var EnvelopeC7;
	var Envelope9;
	var Envelope11;
	var Envelope12;
	var Envelope14;
	var EnvelopeMonarch;
	var EnvelopePersonal;
	var EnvelopeChou3;
	var EnvelopeChou4;
	var EnvelopeInvite;
	var EnvelopeItalian;
	var EnvelopeKaku2;
	var EnvelopeKaku3;
	var EnvelopePrc1;
	var EnvelopePrc2;
	var EnvelopePrc3;
	var EnvelopePrc4;
	var EnvelopePrc5;
	var EnvelopePrc6;
	var EnvelopePrc7;
	var EnvelopePrc8;
	var EnvelopePrc9;
	var EnvelopePrc10;
	var EnvelopeYou4;
	var NPaperSize;
	var AnsiA;
	var AnsiB;
	var EnvelopeC5;
	var EnvelopeDL;
	var Envelope10;
	var LastPageSize;
}

@:pythonImport("PyQt5.QtGui", "QPagedPaintDevice")
@:native("QPagedPaintDevice")
extern enum abstract QPagedPaintDevicePdfVersion(Int) from Int to Int {
	var PdfVersion_1_4;
	var PdfVersion_A1b;
	var PdfVersion_1_6;
}

@:pythonImport("PyQt5.QtGui", "Margins")
@:native("Margins")
extern class Margins {
}

