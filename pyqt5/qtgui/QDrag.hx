package pyqt5.qtgui;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QMimeData;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtcore.QPoint;
import pyqt5.qtcore.QSignal;

@:pythonImport("PyQt5.QtGui", "QDrag")
@:native("QDrag")
extern class QDrag extends QObject {
	var actionChanged:QSignal1<QtDropAction>;
	var targetChanged:QSignal1<QObject>;

	function new(dragSource:QObject);

	@:overload(function(supportedActions:QtDropActions, defaultDropAction:QtDropAction):QtDropAction {})
	@:overload(function(supportedActions:QtDropActions, defaultDropAction:QtDropAction):QtDropAction {})
	function exec(?supportedActions:QtDropActions):QtDropAction;
	function setMimeData(data:QMimeData):Void;
	function mimeData():QMimeData;
	function setPixmap(?v:QPixmap):Void;
	function pixmap():QPixmap;
	function setHotSpot(hotspot:QPoint):Void;
	function hotSpot():QPoint;
	function source():QObject;
	function target():QObject;
	function setDragCursor(cursor:QPixmap, action:QtDropAction):Void;
	function dragCursor(action:QtDropAction):QPixmap;
	function supportedActions():QtDropActions;
	function defaultAction():QtDropAction;
}

