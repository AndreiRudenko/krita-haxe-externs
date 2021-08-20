package krita;

import pyqt5.qtcore.QString;

/**
 * @brief The FilterLayer class
 * A filter layer will, when compositing, take the composited
 * image up to the point of the loction of the filter layer
 * in the stack, create a copy and apply a filter.
 *
 * This means you can use blending modes on the filter layers,
 * which will be used to blend the filtered image with the original.
 *
 * Similarly, you can activate things like alpha inheritance, or
 * you can set grayscale pixeldata on the filter layer to act as
 * a mask.
 *
 * Filter layers can be animated.
 */
@:pythonImport("krita", "FilterLayer")
@:native("FilterLayer")
extern class FilterLayer extends Node {

	function setFilter(filter:Filter):Void;

	function filter():Filter;
}

