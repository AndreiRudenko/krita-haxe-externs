package krita;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.QList;

/**
 * @brief The VectorLayer class
 * A vector layer is a special layer that stores
 * and shows vector shapes.
 *
 * Vector shapes all have their coordinates in points, which
 * is a unit that represents 1/72th of an inch. Keep this in
 * mind wen parsing the bounding box and position data.
 */
@:pythonImport("krita", "VectorLayer")
@:native("VectorLayer")
extern class VectorLayer extends Node {
	/**
	 * @brief type Krita has several types of nodes, split in layers and masks. Group
	 * layers can contain other layers, any layer can contain masks.
	 *
	 * @return vectorlayer
	 */
	function type():QString;

	/**
	 * @brief shapes
	 * @return the list of top-level shapes in this vector layer.
	 */
	function shapes():QList<Shape>;

	/**
	 * @brief toSvg
	 * convert the shapes in the layer to svg.
	 * @return the svg in a string.
	 */
	function toSvg():QString;

	/**
	 * @brief addShapesFromSvg
	 * add shapes to the layer from a valid svg.
	 * @param svg valid svg string.
	 * @return the list of shapes added to the layer from the svg.
	 */
	function addShapesFromSvg(svg:QString):QList<Shape>;
}

