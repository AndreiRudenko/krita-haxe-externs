package pyqt5.qtcore;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QUrl;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QVariant;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QStringList;

@:pythonImport("PyQt5.QtCore", "QMimeData")
@:native("QMimeData")
extern class QMimeData extends QObject {
	@:overload(function():QMimeData {})
	function new(?v:QMimeData);

	function urls():QList<QUrl>;
	function setUrls(urls:QList<QUrl>):Void;
	function hasUrls():Bool;
	function text():QString;
	function setText(text:QString):Void;
	function hasText():Bool;
	function html():QString;
	function setHtml(html:QString):Void;
	function hasHtml():Bool;
	function imageData():QVariant;
	function setImageData(image:QVariant):Void;
	function hasImage():Bool;
	function colorData():QVariant;
	function setColorData(color:QVariant):Void;
	function hasColor():Bool;
	function data(mimetype:QString):QByteArray;
	function setData(mimetype:QString, data:QByteArray):Void;
	function hasFormat(mimetype:QString):Bool;
	function formats():QStringList;
	function clear():Void;
	function removeFormat(mimetype:QString):Void;
	function retrieveData(mimetype:QString, preferredType:QVariantType):QVariant;
}

