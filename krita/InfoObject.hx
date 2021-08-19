package krita;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QMap;
import pyqt5.qtcore.QVariant;

/**
 * InfoObject wrap a properties map. These maps can be used to set the
 * configuration for filters.
 */
@:pythonImport("krita", "InfoObject")
@:native("InfoObject")
extern class InfoObject extends QObject {
    /**
     * Create a new, empty InfoObject.
     */
	function new(?parent:QObject);

    /**
     * Return all properties this InfoObject manages.
     */
	function properties():QMap<QString, QVariant>;

    /**
     * Add all properties in the @p propertyMap to this InfoObject
     */
	function setProperties(propertyMap:QMap<QString, QVariant>):Void;

    /**
     * set the property identified by @p key to @p value
     *
     * If you want create a property that represents a color, you can use a QColor
     * or hex string, as defined in https://doc.qt.io/qt-5/qcolor.html#setNamedColor.
     *
     */
	function setProperty(key:QString, value:QVariant):Void;

    /**
     * return the value for the property identified by key, or None if there is no such key.
     */
	function property(key:QString):QVariant;
}

