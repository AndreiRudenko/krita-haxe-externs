package krita;

import pyqt5.qtcore.QString;

/**
 * @brief The FillLayer class
 * A fill layer is much like a filter layer in that it takes a name
 * and filter. It however specializes in filters that fill the whole canvas,
 * such as a pattern or full color fill.
 */
@:pythonImport("krita", "FillLayer")
@:native("FillLayer")
extern class FillLayer extends Node {
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
    /**
     * @brief setGenerator set the given generator for this fill layer
     * @param generatorName "pattern" or "color"
     * @param filterConfig a configuration object appropriate to the given generator plugin
     * @return true if the generator was correctly created and set on the layer
     */
	function setGenerator(generatorName:QString, filterConfig:InfoObject):Bool;

	function generatorName():QString;

	function filterConfig():InfoObject;
}

