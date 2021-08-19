package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtgui.QScreen;
import pyqt5.qtcore.QString;
import pyqt5.qtgui.QColor;
import pyqt5.qtcore.QSignal;
import pyqt5.qtgui.QPainter;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

@:pythonImport("PyQt5.QtWidgets", "QSplashScreen")
@:native("QSplashScreen")
extern class QSplashScreen extends QWidget {
	var messageChanged:QSignal1<QString>;

	@:overload(function(?pixmap:QPixmap):QSplashScreen {})
	@:overload(function(parent:QWidget, ?pixmap:QPixmap):QSplashScreen {})
	function new(screen:QScreen, ?pixmap:QPixmap);

	function setPixmap(pixmap:QPixmap):Void;
	function pixmap():QPixmap;
	function finish(w:QWidget):Void;
	function repaint():Void;
	function message():QString;
	function showMessage(message:QString, ?alignment:Int, ?color:QColor):Void;
	function clearMessage():Void;
	function drawContents(painter:QPainter):Void;
	function event(e:QEvent):Bool;
	function mousePressEvent(?v:QMouseEvent):Void;
}

