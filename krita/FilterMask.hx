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
	/**
	 * @brief type Krita has several types of nodes, split in layers and masks. Group
	 * layers can contain other layers, any layer can contain masks.
	 *
	 * @return The type of the node. Valid types are:
	 * <ul>
	 *  <li>paintlayer
	 *  <li>grouplayer
	 *  <li>filelayer
	 *  <li>filterlayer
	 *  <li>filllayer
	 *  <li>clonelayer
	 *  <li>vectorlayer
	 *  <li>transparencymask
	 *  <li>filtermask
	 *  <li>transformmask
	 *  <li>selectionmask
	 *  <li>colorizemask
	 * </ul>
	 *
	 * If the Node object isn't wrapping a valid Krita layer or mask object, and
	 * empty string is returned.
	 */
	function type():QString;

	function setFilter(filter:Filter):Void;

	function filter():Filter;
}

