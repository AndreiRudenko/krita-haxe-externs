package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QDialog;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QDir;
import pyqt5.qtcore.QStringList;
import pyqt5.qtwidgets.QAbstractItemDelegate;
import pyqt5.qtwidgets.QFileIconProvider;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QUrl;
import python.Tuple;
import pyqt5.qtcore.QEvent;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QAbstractProxyModel;

typedef QFileDialogOptions = QFlags<QFileDialogOption>;

@:pythonImport("PyQt5.QtWidgets", "QFileDialog")
@:native("QFileDialog")
extern class QFileDialog extends QDialog {
	static function getExistingDirectory(?parent:QWidget, ?caption:QString, ?directory:QString, ?options:QFileDialogOptions):QString;
	static function getExistingDirectoryUrl(?parent:QWidget, ?caption:QString, ?directory:QUrl, ?options:QFileDialogOptions, ?supportedSchemes:QStringList):QUrl;
	static function getOpenFileName(?parent:QWidget, ?caption:QString, ?directory:QString, ?filter:QString, ?initialFilter:QString, ?options:QFileDialogOptions):Tuple2<QString, QString>;
	static function getOpenFileNames(?parent:QWidget, ?caption:QString, ?directory:QString, ?filter:QString, ?initialFilter:QString, ?options:QFileDialogOptions):Tuple2<QStringList, QString>;
	static function getSaveFileName(?parent:QWidget, ?caption:QString, ?directory:QString, ?filter:QString, ?initialFilter:QString, ?options:QFileDialogOptions):Tuple2<QString, QString>;
	static function getOpenFileUrl(?parent:QWidget, ?caption:QString, ?directory:QUrl, ?filter:QString, ?initialFilter:QString, ?options:QFileDialogOptions, ?supportedSchemes:QStringList):Tuple2<QUrl, QString>;
	static function getOpenFileUrls(?parent:QWidget, ?caption:QString, ?directory:QUrl, ?filter:QString, ?initialFilter:QString, ?options:QFileDialogOptions, ?supportedSchemes:QStringList):Tuple2<Array<QUrl>, QString>;
	static function getSaveFileUrl(?parent:QWidget, ?caption:QString, ?directory:QUrl, ?filter:QString, ?initialFilter:QString, ?options:QFileDialogOptions, ?supportedSchemes:QStringList):Tuple2<QUrl, QString>;
	static function saveFileContent(fileContent:QByteArray, ?fileNameHint:QString):Void;

	var currentChanged:QSignal1<QString>;
	var directoryEntered:QSignal1<QString>;
	var filesSelected:QSignal1<QStringList>;
	var filterSelected:QSignal1<QString>;
	var fileSelected:QSignal1<QString>;
	var urlSelected:QSignal1<QUrl>;
	var urlsSelected:QSignal1<QList<QUrl>>;
	var currentUrlChanged:QSignal1<QUrl>;
	var directoryUrlEntered:QSignal1<QUrl>;

	@:overload(function(parent:QWidget, f:QtWindowFlags):QFileDialog {})
	function new(?parent:QWidget, ?caption:QString);

	@:overload(function(adirectory:QDir):Void {})
	function setDirectory(directory:QString):Void;
	function directory():QDir;
	function selectFile(filename:QString):Void;
	function selectedFiles():QStringList;
	function setViewMode(mode:QFileDialogViewMode):Void;
	function viewMode():QFileDialogViewMode;
	function setFileMode(mode:QFileDialogFileMode):Void;
	function fileMode():QFileDialogFileMode;
	function setAcceptMode(mode:QFileDialogAcceptMode):Void;
	function acceptMode():QFileDialogAcceptMode;
	function setDefaultSuffix(suffix:QString):Void;
	function defaultSuffix():QString;
	function setHistory(paths:QStringList):Void;
	function history():QStringList;
	function setItemDelegate(delegate:QAbstractItemDelegate):Void;
	function itemDelegate():QAbstractItemDelegate;
	function setIconProvider(provider:QFileIconProvider):Void;
	function iconProvider():QFileIconProvider;
	function setLabelText(label:QFileDialogDialogLabel, text:QString):Void;
	function labelText(label:QFileDialogDialogLabel):QString;
	function done(result:Int):Void;
	function accept():Void;
	function changeEvent(e:QEvent):Void;
	function setSidebarUrls(urls:QList<QUrl>):Void;
	function sidebarUrls():QList<QUrl>;
	function saveState():QByteArray;
	function restoreState(state:QByteArray):Bool;
	function setProxyModel(model:QAbstractProxyModel):Void;
	function proxyModel():QAbstractProxyModel;
	function setNameFilter(filter:QString):Void;
	function setNameFilters(filters:QStringList):Void;
	function nameFilters():QStringList;
	function selectNameFilter(filter:QString):Void;
	function selectedNameFilter():QString;
	function filter():QDirFilters;
	function setFilter(filters:QDirFilters):Void;
	function setOption(option:QFileDialogOption, ?on:Bool):Void;
	function testOption(option:QFileDialogOption):Bool;
	function setOptions(options:QFileDialogOptions):Void;
	function options():QFileDialogOptions;
	@:overload(function(slot:Dynamic):Void {})
	function open():Void;
	function setVisible(visible:Bool):Void;
	function setDirectoryUrl(directory:QUrl):Void;
	function directoryUrl():QUrl;
	function selectUrl(url:QUrl):Void;
	function selectedUrls():QList<QUrl>;
	function setMimeTypeFilters(filters:QStringList):Void;
	function mimeTypeFilters():QStringList;
	function selectMimeTypeFilter(filter:QString):Void;
	function setSupportedSchemes(schemes:QStringList):Void;
	function supportedSchemes():QStringList;
	function selectedMimeTypeFilter():QString;
}

@:pythonImport("PyQt5.QtWidgets", "ViewMode")
@:native("QFileDialog.ViewMode")
extern enum abstract QFileDialogViewMode(Int) from Int to Int {
	var Detail;
	var List;
}

@:pythonImport("PyQt5.QtWidgets", "FileMode")
@:native("QFileDialog.FileMode")
extern enum abstract QFileDialogFileMode(Int) from Int to Int {
	var AnyFile;
	var ExistingFile;
	var Directory;
	var ExistingFiles;
	var DirectoryOnly;
}

@:pythonImport("PyQt5.QtWidgets", "AcceptMode")
@:native("QFileDialog.AcceptMode")
extern enum abstract QFileDialogAcceptMode(Int) from Int to Int {
	var AcceptOpen;
	var AcceptSave;
}

@:pythonImport("PyQt5.QtWidgets", "DialogLabel")
@:native("QFileDialog.DialogLabel")
extern enum abstract QFileDialogDialogLabel(Int) from Int to Int {
	var LookIn;
	var FileName;
	var FileType;
	var Accept;
	var Reject;
}

@:pythonImport("PyQt5.QtWidgets", "Option")
@:native("QFileDialog.Option")
extern enum abstract QFileDialogOption(Int) from Int to Int {
	var ShowDirsOnly;
	var DontResolveSymlinks;
	var DontConfirmOverwrite;
	var DontUseSheet;
	var DontUseNativeDialog;
	var ReadOnly;
	var HideNameFilterDetails;
	var DontUseCustomDirectoryIcons;
}

