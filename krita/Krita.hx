package krita;

import pyqt5.qtwidgets.QAction;
import pyqt5.qtwidgets.QDockWidget;
import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QMap;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QStringList;
import krita.Resource;

/**
 * Krita is a singleton class that offers the root access to the Krita object hierarchy.
 *
 * The Krita.instance() is aliased as two builtins: Scripter and Application.
 */
@:pythonImport("krita", "Krita")
@:native("Krita")
extern class Krita extends QObject {
	static function instance():Krita;

	/**
	 * @return the currently active document, if there is one.
	 */
	function activeDocument():Document;

	/**
	 * @brief setActiveDocument activates the first view that shows the given document
	 * @param value the document we want to activate
	 */
	function setActiveDocument(value:Document):Void;

	/**
	 * @brief batchmode determines whether the script is run in batch mode. If batchmode
	 * is true, scripts should now show messageboxes or dialog boxes.
	 *
	 * Note that this separate from Document.setBatchmode(), which determines whether
	 * export/save option dialogs are shown.
	 *
	 * @return true if the script is run in batchmode
	 */
	function batchmode():Bool;

	/**
	 * @brief setBatchmode sets the batchmode to @param value; if true, scripts should
	 * not show dialogs or messageboxes.
	 */
	function setBatchmode(value:Bool):Void;

	/**
	 * @return return a list of all actions for the currently active mainWindow.
	 */
	function actions():QList<QAction>;

	/**
	 * @return the action that has been registered under the given name, or 0 if no such action exists.
	 */
	function action(name:QString):QAction;

	/**
	 * @return a list of all open Documents
	 */
	function documents():QList<Document>;

	/**
	 * @return a list of all the dockers
	 */
	function dockers():QList<QDockWidget>;

	/**
	 * @brief Filters are identified by an internal name. This function returns a list
	 * of all existing registered filters.
	 * @return a list of all registered filters
	 */
	function filters():QStringList;

	/**
	 * @brief filter construct a Filter object with a default configuration.
	 * @param name the name of the filter. Use Krita.instance().filters() to get
	 * a list of all possible filters.
	 * @return the filter or None if there is no such filter.
	 */
	function filter(name:QString):Filter;

	/**
	 * @brief colorModels creates a list with all color models id's registered.
	 * @return a list of all color models or a empty list if there is no such color models.
	 */
	function colorModels():QStringList;

	/**
	 * @brief colorDepths creates a list with the names of all color depths
	 * compatible with the given color model.
	 * @param colorModel the id of a color model.
	 * @return a list of all color depths or a empty list if there is no such
	 * color depths.
	 */
	function colorDepths(colorModel:QString):QStringList;

	/**
	 * @brief filterStrategies Retrieves all installed filter strategies. A filter
	 * strategy is used when transforming (scaling, shearing, rotating) an image to
	 * calculate the value of the new pixels. You can use th
	 * @return the id's of all available filters.
	 */
	function filterStrategies():QStringList;

	/**
	 * @brief profiles creates a list with the names of all color profiles compatible
	 * with the given color model and color depth.
	 * @param colorModel A string describing the color model of the image:
	 * <ul>
	 * <li>A: Alpha mask</li>
	 * <li>RGBA: RGB with alpha channel (The actual order of channels is most often BGR!)</li>
	 * <li>XYZA: XYZ with alpha channel</li>
	 * <li>LABA: LAB with alpha channel</li>
	 * <li>CMYKA: CMYK with alpha channel</li>
	 * <li>GRAYA: Gray with alpha channel</li>
	 * <li>YCbCrA: YCbCr with alpha channel</li>
	 * </ul>
	 * @param colorDepth A string describing the color depth of the image:
	 * <ul>
	 * <li>U8: unsigned 8 bits integer, the most common type</li>
	 * <li>U16: unsigned 16 bits integer</li>
	 * <li>F16: half, 16 bits floating point. Only available if Krita was built with OpenEXR</li>
	 * <li>F32: 32 bits floating point</li>
	 * </ul>
	 * @return a list with valid names
	 */
	function profiles(colorModel:QString, colorDepth:QString):QStringList;

	/**
	 * @brief addProfile load the given profile into the profile registry.
	 * @param profilePath the path to the profile.
	 * @return true if adding the profile succeeded.
	 */
	function addProfile(profilePath:QString):Bool;

	/**
	 * @brief notifier the Notifier singleton emits signals when documents are opened and
	 * closed, the configuration changes, views are opened and closed or windows are opened.
	 * @return the notifier object
	 */
	function notifier():Notifier;

	/**
	 * @brief version Determine the version of Krita
	 *
	 * Usage: print(Application.version ())
	 *
	 * @return the version string including git sha1 if Krita was built from git
	 */
	function version():QString;

	/**
	 * @return a list of all views. A Document can be shown in more than one view.
	 */
	function views():QList<View>;

	/**
	 * @return the currently active window or None if there is no window
	 */
	function activeWindow():Window;

	/**
	 * @return a list of all windows
	 */
	function windows():QList<Window>;

	/**
	 * @brief resources returns a list of Resource objects of the given type
	 * @param type Valid types are:
	 *
	 * <ul>
	 * <li>pattern</li>
	 * <li>gradient</li>
	 * <li>brush</li>
	 * <li>preset</li>
	 * <li>palette</li>
	 * <li>workspace</li>
	 * </ul>
	 */
	function resources(type:ResourceType):QMap<QString, Resource>;

	/**
	 * @brief return all recent documents registered in the RecentFiles group of the kritarc
	 */
	function recentDocuments():QStringList;

	/**
	 * @brief createDocument creates a new document and image and registers
	 * the document with the Krita application.
	 *
	 * Unless you explicitly call Document::close() the document will remain
	 * known to the Krita document registry. The document and its image will
	 * only be deleted when Krita exits.
	 *
	 * The document will have one transparent layer.
	 *
	 * To create a new document and show it, do something like:
@code
from Krita import *

def add_document_to_window():
	d = Application.createDocument(100, 100, "Test", "RGBA", "U8", "", 120.0)
	Application.activeWindow().addView(d)

add_document_to_window()
@endcode
	 *
	 * @param width the width in pixels
	 * @param height the height in pixels
	 * @param name the name of the image (not the filename of the document)
	 * @param colorModel A string describing the color model of the image:
	 * <ul>
	 * <li>A: Alpha mask</li>
	 * <li>RGBA: RGB with alpha channel (The actual order of channels is most often BGR!)</li>
	 * <li>XYZA: XYZ with alpha channel</li>
	 * <li>LABA: LAB with alpha channel</li>
	 * <li>CMYKA: CMYK with alpha channel</li>
	 * <li>GRAYA: Gray with alpha channel</li>
	 * <li>YCbCrA: YCbCr with alpha channel</li>
	 * </ul>
	 * @param colorDepth A string describing the color depth of the image:
	 * <ul>
	 * <li>U8: unsigned 8 bits integer, the most common type</li>
	 * <li>U16: unsigned 16 bits integer</li>
	 * <li>F16: half, 16 bits floating point. Only available if Krita was built with OpenEXR</li>
	 * <li>F32: 32 bits floating point</li>
	 * </ul>
	 * @param profile The name of an icc profile that is known to Krita. If an empty string is passed, the default is
	 * taken.
	 * @param resolution the resolution in points per inch.
	 * @return the created document.
	 */
	function createDocument(width:Int, height:Int, name:QString, colorModel:QString, colorDepth:QString, profile:QString, resolution:Float):Document;

	/**
	 * @brief openDocument creates a new Document, registers it with the Krita application and loads the given file.
	 * @param filename the file to open in the document
	 * @return the document
	 */
	function openDocument(filename:QString):Document;

	/**
	 * @brief openWindow create a new main window. The window is not shown by default.
	 */
	function openWindow():Window;

	/**
	 * @brief addExtension add the given plugin to Krita. There will be a single instance of each Extension in the Krita process.
	 * @param extension the extension to add.
	 */
	function addExtension(extension:Extension):Void;

	/**
	 * return a list with all registered extension objects.
	 */
	function extensions():QList<Extension>;

	/**
	 * @brief addDockWidgetFactory Add the given docker factory to the application. For scripts
	 * loaded on startup, this means that every window will have one of the dockers created by the
	 * factory.
	 * @param factory The factory object.
	 */
	function addDockWidgetFactory(factory:DockWidgetFactoryBase):Void;

	/**
	 * @brief writeSetting write the given setting under the given name to the kritarc file in
	 * the given settings group.
	 * @param group The group the setting belongs to. If empty, then the setting is written in the
	 * general section
	 * @param name The name of the setting
	 * @param value The value of the setting. Script settings are always written as strings.
	 */
	function writeSetting(group:QString, name:QString, value:QString):Void;

	/**
	 * @brief readSetting read the given setting value from the kritarc file.
	 * @param group The group the setting is part of. If empty, then the setting is read from
	 * the general group.
	 * @param name The name of the setting
	 * @param defaultValue The default value of the setting
	 * @return a string representing the setting.
	 */
	function readSetting(group:QString, name:QString, defaultValue:QString):QString;

	/**
	 * @brief icon
	 * This allows you to get icons from Krita's internal icons.
	 * @param iconName name of the icon.
	 * @return the icon related to this name.
	 */
	function icon(iconName:QString):QIcon;
}

