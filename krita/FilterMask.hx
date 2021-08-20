package krita;

import pyqt5.qtcore.QString;

/**
 * @brief The FilterMask class
 * A filter mask, unlike a filter layer, will add a non-destructive filter
 * to the composited image of the node it is attached to.
 *
 * You can set grayscale pixeldata on the filter mask to adjust where the filter is applied.
 *
 * Filtermasks can be animated.
 */
@:pythonImport("krita", "FilterMask")
@:native("FilterMask")
extern class FilterMask extends Node {

	function setFilter(filter:Filter):Void;

	function filter():Filter;
}

