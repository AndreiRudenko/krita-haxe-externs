package krita;

import pyqt5.qtcore.QObject;
import pyqt5.qtwidgets.QMainWindow;
import pyqt5.qtwidgets.QAction;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSignal;

/**
 * Window represents one Krita mainwindow. A window can have any number
 * of views open on any number of documents.
 */
@:pythonImport("krita", "Window")
@:native("Window")
extern class Window extends QObject {
	/**
	 * Return a handle to the QMainWindow widget. This is useful
	 * to e.g. parent dialog boxes and message box.
	 */
	function qwindow():QMainWindow;

	/**
	 * @return a list of open views in this window
	 */
	function views():QList<View>;

	/**
	 * Open a new view on the given document in this window
	 */
	function addView(document:Document):View;

	/**
	 * Make the given view active in this window. If the view
	 * does not belong to this window, nothing happens.
	 */
	function showView(view:View):Void;

	/**
	 * @return the currently active view or 0 if no view is active
	 */
	function activeView():View;

	/**
	 * @brief activate activates this Window.
	 */
	function activate():Void;

	/**
	 * @brief close the active window and all its Views. If there
	 * are no Views left for a given Document, that Document will
	 * also be closed.
	 */
	function close():Void;

	/**
	 * @brief createAction creates a QAction object and adds it to the action
	 * manager for this Window.
	 * @param id The unique id for the action. This will be used to
	 *     propertize the action if any .action file is present
	 * @param text The user-visible text of the action. If empty, the text from the
	 *    .action file is used.
	 * @param menuLocation a /-separated string that describes which menu the action should
	 *     be places in. Default is "tools/scripts"
	 * @return the new action.
	 */
	function createAction(id:QString, ?text:QString, ?menuLocation:QString):QAction;

	/// Emitted when the window is closed.
	var windowClosed:QSignal0;

	///  Emitted when we change the color theme
	var themeChanged:QSignal0;

	/// Emitted when the active view changes
	var activeViewChanged:QSignal0;
}

