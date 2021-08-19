package pyqt5.qtgui;

import pyqt5.qtcore.QUrl;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QObject;

@:pythonImport("PyQt5.QtGui", "QDesktopServices")
@:native("QDesktopServices")
extern class QDesktopServices {
	static function openUrl(url:QUrl):Bool;
	@:overload(function(scheme:QString, method:Array<QUrl>->Void):Void {})
	static function setUrlHandler(scheme:QString, receiver:QObject, method:Int):Void;
	static function unsetUrlHandler(scheme:QString):Void;
}

