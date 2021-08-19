package pyqt5.qtgui;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QIODevice;
import pyqt5.qtgui.QPagedPaintDevice;
import pyqt5.qtcore.QSize;
import pyqt5.qtgui.QPaintEngine;
import pyqt5.qtgui.QPaintDevice;
import pyqt5.qtcore.QByteArray;

@:pythonImport("PyQt5.QtGui", "QPdfWriter")
@:native("QPdfWriter")
extern class QPdfWriter extends QObject {
	@:overload(function(filename:QString):QPdfWriter {})
	@:overload(function(device:QIODevice):QPdfWriter {})
	function new(?v:QPdfWriter);

	function title():QString;
	function setTitle(title:QString):Void;
	function creator():QString;
	function setCreator(creator:QString):Void;
	function newPage():Bool;
	function setPageSize(size:QPagedPaintDevicePageSize):Void;
	function setPageSizeMM(size:QSizeF):Void;
	function setMargins(m:Margins):Void;
	function paintEngine():QPaintEngine;
	function metric(id:QPaintDevicePaintDeviceMetric):Int;
	function setResolution(resolution:Int):Void;
	function resolution():Int;
	function setPdfVersion(version:QPagedPaintDevicePdfVersion):Void;
	function pdfVersion():QPagedPaintDevicePdfVersion;
	function setDocumentXmpMetadata(xmpMetadata:QByteArray):Void;
	function documentXmpMetadata():QByteArray;
	function addFileAttachment(fileName:QString, data:QByteArray, ?mimeType:QString):Void;
}

