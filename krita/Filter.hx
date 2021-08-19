package krita;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;

/**
 * Filter: represents a filter and its configuration. A filter is identified by
 * an internal name. The configuration for each filter is defined as an InfoObject:
 * a map of name and value pairs.
 *
 * Currently available filters are:
 *
 * 'autocontrast', 'blur', 'bottom edge detections', 'brightnesscontrast', 'burn', 'colorbalance', 'colortoalpha', 'colortransfer',
 * 'desaturate', 'dodge', 'emboss', 'emboss all directions', 'emboss horizontal and vertical', 'emboss horizontal only',
 * 'emboss laplascian', 'emboss vertical only', 'gaussian blur', 'gaussiannoisereducer', 'gradientmap', 'halftone', 'hsvadjustment',
 * 'indexcolors', 'invert', 'left edge detections', 'lens blur', 'levels', 'maximize', 'mean removal', 'minimize', 'motion blur',
 * 'noise', 'normalize', 'oilpaint', 'perchannel', 'phongbumpmap', 'pixelize', 'posterize', 'raindrops', 'randompick',
 * 'right edge detections', 'roundcorners', 'sharpen', 'smalltiles', 'sobel', 'threshold', 'top edge detections', 'unsharp',
 * 'wave', 'waveletnoisereducer']
 */
@:pythonImport("krita", "Filter")
@:native("Filter")
extern class Filter extends QObject {
    /**
     * @brief Filter: create an empty filter object. Until a name is set, the filter cannot
     * be applied.
     */
	function new();

    /**
     * @brief name the internal name of this filter.
     * @return the name.
     */
	function name():QString;

    /**
     * @brief setName set the filter's name to the given name.
     */
	function setName(name:QString):Void;

    /**
     * @return the configuration object for the filter
     */
	function configuration():InfoObject;

    /**
     * @brief setConfiguration set the configuration object for the filter
     */
	function setConfiguration(value:InfoObject):Void;

    /**
     * @brief Apply the filter to the given node.
     * @param node the node to apply the filter to
     * @param x
     * @param y
     * @param w
     * @param h describe the rectangle the filter should be apply.
     * This is always in image pixel coordinates and not relative to the x, y
     * of the node.
     * @return @c true if the filter was applied successfully, or
     * @c false if the filter could not be applied because the node is locked or
     * does not have an editable paint device.
     */
	function apply(node:Node, x:Int, y:Int, w:Int, h:Int):Bool;

    /**
     * @brief startFilter starts the given filter on the given node.
     *
     * @param node the node to apply the filter to
     * @param x
     * @param y
     * @param w
     * @param h describe the rectangle the filter should be apply.
     * This is always in image pixel coordinates and not relative to the x, y
     * of the node.
     */
	function startFilter(node:Node, x:Int, y:Int, w:Int, h:Int):Bool;
}

