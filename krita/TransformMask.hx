package krita;

import pyqt5.qtgui.QTransform;

/**
 * @brief The TransformMask class
 * A transform mask is a mask type node that can be used
 * to store transformations.
 */
@:pythonImport("krita", "TransformMask")
@:native("TransformMask")
extern class TransformMask extends Node {
	/**
	 * @brief type Krita has several types of nodes, split in layers and masks. Group
	 * layers can contain other layers, any layer can contain masks.
	 *
	 * @return transformmask
	 *
	 * If the Node object isn't wrapping a valid Krita layer or mask object, and
	 * empty string is returned.
	 */
	function finalAffineTransform():QTransform;

}

