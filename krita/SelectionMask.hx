package krita;

/**
 * @brief The SelectionMask class
 * A selection mask is a mask type node that can be used
 * to store selections. In the gui, these are referred to
 * as local selections.
 *
 * A selection mask can hold both raster and vector selections, though
 * the API only supports raster selections.
 */
@:pythonImport("krita", "SelectionMask")
@:native("SelectionMask")
extern class SelectionMask extends Node {
	/**
	 * @brief type Krita has several types of nodes, split in layers and masks. Group
	 * layers can contain other layers, any layer can contain masks.
	 *
	 * @return selectionmask
	 *
	 * If the Node object isn't wrapping a valid Krita layer or mask object, and
	 * empty string is returned.
	 */
	function selection():Selection;

	function setSelection(selection:Selection):Void;
}

