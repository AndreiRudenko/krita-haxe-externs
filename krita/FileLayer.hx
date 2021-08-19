package krita;

import pyqt5.qtcore.QString;

/**
 * @brief The FileLayer class
 * A file layer is a layer that can reference an external image
 * and show said reference in the layer stack.
 *
 * If the external image is updated, Krita will try to update the
 * file layer image as well.
 */
@:pythonImport("krita", "FileLayer")
@:native("FileLayer")
extern class FileLayer extends Node {
	/**
	 * @brief type Krita has several types of nodes, split in layers and masks. Group
	 * layers can contain other layers, any layer can contain masks.
	 *
	 * @return "filelayer"
	 */
	function type():QString;

	/**
	 * @brief setProperties
	 * Change the properties of the file layer.
	 * @param fileName - A String containing the absolute file name.
	 * @param scalingMethod - a string with the scaling method, defaults to "None",
	 *  other options are "ToImageSize" and "ToImagePPI"
	 */
	function setProperties(fileName:QString, ?scalingMethod:QString):Void;

	/**
	 * @brief makes the file layer to reload the connected image from disk
	 */
	function resetCache():Void;

	/**
	 * @brief path
	 * @return A QString with the full path of the referenced image.
	 */
	function path():QString;

	/**
	 * @brief scalingMethod
	 * returns how the file referenced is scaled.
	 * @return one of the following:
	 * <ul>
	 *  <li> None - The file is not scaled in any way.
	 *  <li> ToImageSize - The file is scaled to the full image size;
	 *  <li> ToImagePPI - The file is scaled by the PPI of the image. This keep the physical dimensions the same.
	 * </ul>
	 */
	function scalingMethod():QString;
}

