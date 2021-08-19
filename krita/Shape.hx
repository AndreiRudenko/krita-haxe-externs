package krita;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QPoint;
import pyqt5.qtgui.QTransform;
import pyqt5.qtcore.QString;

/**
 * @brief The Shape class
 * The shape class is a wrapper around Krita's vector objects.
 *
 * Some example code to parse through interesting information in a given vector layer with shapes.
 * @code
import sys
from krita import *

doc = Application.activeDocument()

root = doc.rootNode()

for layer in root.childNodes():
	print (str(layer.type())+" "+str(layer.name()))
	if (str(layer.type())=="vectorlayer"):
		for shape in layer.shapes():
			print(shape.name())
			print(shape.toSvg())
 * @endcode
 */
@:pythonImport("krita", "Shape")
@:native("Shape")
extern class Shape extends QObject {
	/**
	 * @brief name
	 * @return the name of the shape
	 */
	function name():QString;

	/**
	 * @brief setName
	 * @param name which name the shape should have.
	 */
	function setName(name:QString):Void;

	/**
	 * @brief type
	 * @return the type of shape.
	 */
	function type():QString;

	/**
	 * @brief zIndex
	 * @return the zindex of the shape.
	 */
	function zIndex():Int;

	/**
	 * @brief setZIndex
	 * @param zindex set the shape zindex value.
	 */
	function setZIndex(zindex:Int):Void;

	/**
	 * @brief selectable
	 * @return whether the shape is user selectable.
	 */
	function selectable():Bool;

	/**
	 * @brief setSelectable
	 * @param selectable whether the shape should be user selectable.
	 */
	function setSelectable(selectable:Bool):Void;

	/**
	 * @brief geometryProtected
	 * @return whether the shape is protected from user changing the shape geometry.
	 */
	function geometryProtected():Bool;

	/**
	 * @brief setGeometryProtected
	 * @param protect whether the shape should be geometry protected from the user.
	 */
	function setGeometryProtected(protect:Bool):Void;

	/**
	 * @brief visible
	 * @return whether the shape is visible.
	 */
	function visible():Bool;

	/**
	 * @brief setVisible
	 * @param visible whether the shape should be visible.
	 */
	function setVisible(visible:Bool):Void;

	/**
	 * @brief boundingBox the bounding box of the shape in points
	 * @return RectF containing the bounding box.
	 */
	function boundingBox():QRectF;

	/**
	 * @brief position the position of the shape in points.
	 * @return the position of the shape in points.
	 */
	function position():QPointF;

	/**
	 * @brief setPosition set the position of the shape.
	 * @param point the new position in points
	 */
	function setPosition(point:QPointF):Void;

	/**
	 * @brief transformation the 2D transformation matrix of the shape.
	 * @return the 2D transformation matrix.
	 */
	function transformation():QTransform;

	/**
	 * @brief setTransformation set the 2D transformation matrix of the shape.
	 * @param matrix the new 2D transformation matrix.
	 */
	function setTransformation(matrix:QTransform):Void;

	/**
	 * @brief remove delete the shape.
	 */
	function remove():Bool;

	/**
	 * @brief update queue the shape update.
	 */
	function update():Void;

	/**
	 * @brief updateAbsolute queue the shape update in the specified rectangle.
	 * @param box the RectF rectangle to update.
	 */
	function updateAbsolute(box:QRectF):Void;

	/**
	 * @brief toSvg
	 * convert the shape to svg, will not include style definitions.
	 * @param prependStyles prepend the style data. Default: false
	 * @param stripTextMode enable strip text mode. Default: true
	 * @return the svg in a string.
	 */
	function toSvg(?prependStyles:Bool, ?stripTextMode:Bool):QString;

}

