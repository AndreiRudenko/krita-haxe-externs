package krita;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QSignal;

/**
 * The Notifier can be used to be informed of state changes in the Krita application.
 */
@:pythonImport("krita", "Notifier")
@:native("Notifier")
extern class Notifier extends QObject {
    /**
     * @return true if the Notifier is active.
     */
	function active():Bool;

    /**
     * Enable or disable the Notifier
     */
	function setActive(value:Bool):Void;

    /**
     * @brief applicationClosing is emitted when the application is about to close. This
     * happens after any documents and windows are closed.
     */
	var applicationClosing:QSignal0;

    /**
     * @brief imageCreated is emitted whenever a new image is created and registered with
     * the application.
     */
	var imageCreated:QSignal1<Document>;

    /**
     * @brief imageSaved is emitted whenever a document is saved.
     * @param filename the filename of the document that has been saved.
     */
	var imageSaved:QSignal1<QString>;

    /**
     * @brief imageClosed is emitted whenever the last view on an image is closed. The image
     * does not exist anymore in Krita
     * @param filename the filename of the image.
     */
	var imageClosed:QSignal1<QString>;

    /**
     * @brief viewCreated is emitted whenever a new view is created.
     * @param view the view
     */
	var viewCreated:QSignal1<View>;

    /**
     * @brief viewClosed is emitted whenever a view is closed
     * @param view the view
     */
	var viewClosed:QSignal1<View>;

    /**
     * @brief windowCreated is emitted whenever a window is being created
     * @param window the window; this is called from the constructor of the window, before the xmlgui file is loaded
     */
	var windowIsBeingCreated:QSignal1<Window>;

    /**
     * @brief windowIsCreated is emitted after main window is completely created
     */
	var windowCreated:QSignal0;

    /**
     * @brief configurationChanged is emitted every time Krita's configuration
     * has changed.
     */
	var configurationChanged:QSignal0;
}

