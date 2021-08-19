package krita;

import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QObject;

/**
 * Selection represents a selection on Krita. A selection is
 * not necessarily associated with a particular Node or Image.
 * 
 * @code
 * from krita import *
 *
 * d = Application.activeDocument()
 * n = d.activeNode()
 * r = n.bounds() 
 * s = Selection()
 * s.select(r.width() / 3, r.height() / 3, r.width() / 3, r.height() / 3, 255)
 * s.cut(n)
 * @endcode
 */
@:pythonImport("krita", "Selection")
@:native("Selection")
extern class Selection extends QObject {
	@:overload(function(?parent:QObject):Selection {})
     function new(selection:Selection, ?parent:QObject);

    /**
     * @return a duplicate of the selection
     */
	function duplicate():Selection;

    /**
     * @return the width of the selection
     */
	function width():Int;

    /**
     * @return the height of the selection
     */
	function height():Int;

    /**
     * @return the left-hand position of the selection.
     */
	function x():Int;

    /**
     * @return the top position of the selection.
     */
	function y():Int;

    /**
     * Move the selection's top-left corner to the given coordinates.
     */
	function move(x:Int, y:Int):Void;

    /**
     * Make the selection entirely unselected.
     */
	function clear():Void;

    /**
     * Make the selection's width and height smaller by the given value.
     * This will not move the selection's top-left position.
     */
	function contract(value:Int):Void;

    /**
     * @brief copy copies the area defined by the selection from the node to the clipboard.
     * @param node the node from where the pixels will be copied.
     */
	function copy(node:Node):Void;

    /**
     * @brief cut erases the area defined by the selection from the node and puts a copy on the clipboard.
     * @param node the node from which the selection will be cut.
     */
	function cut(node:Node):Void;

    /**
     * @brief paste pastes the content of the clipboard to the given node, limited by the area of the current
     * selection.
     * @param destination the node where the pixels will be written
     * @param x: the x position at which the clip will be written
     * @param y: the y position at which the clip will be written
     */
	function paste(destination:Node, x:Int, y:Int):Void;

    /**
     * Erode the selection with a radius of 1 pixel.
     */
	function erode():Void;

    /**
     * Dilate the selection with a radius of 1 pixel.
     */
	function dilate():Void;

    /**
     * Border the selection with the given radius.
     */
	function border(xRadius:Int, yRadius:Int):Void;

    /**
     * Feather the selection with the given radius.
     */
	function feather(radius:Int):Void;

    /**
     * Grow the selection with the given radius.
     */
	function grow(xradius:Int, yradius:Int):Void;

    /**
     * Shrink the selection with the given radius.
     */
	function shrink(xRadius:Int, yRadius:Int, edgeLock:Bool):Void;

    /**
     * Smooth the selection.
     */
	function smooth():Void;

    /** 
     * Invert the selection.
     */
	function invert():Void;

    /**
     * Resize the selection to the given width and height. The top-left position will not be moved.
     */
	function resize(w:Int, h:Int):Void;

    /**
     * Select the given area. The value can be between 0 and 255; 0 is 
     * totally unselected, 255 is totally selected.
     */ 
	function select(x:Int, y:Int, w:Int, h:Int, value:Int):Void;

    /**
     * Select all pixels in the given node. The value can be between 0 and 255; 0 is 
     * totally unselected, 255 is totally selected.
     */
	function selectAll(node:Node, value:Int):Void;

    /**
     * Replace the current selection's selection with the one of the given selection.
     */
	function replace(selection:Selection):Void;

    /**
     * Add the given selection's selected pixels to the current selection.
     */
	function add(selection:Selection):Void;

    /**
     * Subtract the given selection's selected pixels from the current selection.
     */
	function subtract(selection:Selection):Void;

    /**
     * Intersect the given selection with this selection.
     */
	function intersect(selection:Selection):Void;

        /**
     * Intersect with the inverse of the given selection with this selection.
     */
	function symmetricdifference(selection:Selection):Void;

    /**
     * @brief pixelData reads the given rectangle from the Selection's mask and returns it as a
     * byte array. The pixel data starts top-left, and is ordered row-first.
     *
     * The byte array will contain one byte for every pixel, representing the selectedness. 0
     * is totally unselected, 255 is fully selected.
     *
     * You can read outside the Selection's boundaries; those pixels will be unselected.
     *
     * The byte array is a copy of the original selection data.
     * @param x x position from where to start reading
     * @param y y position from where to start reading
     * @param w row length to read
     * @param h number of rows to read
     * @return a QByteArray with the pixel data. The byte array may be empty.
     */
	function pixelData(x:Int, y:Int, w:Int, h:Int):QByteArray;

    /**
     * @brief setPixelData writes the given bytes, of which there must be enough, into the
     * Selection.
     *
     * @param value the byte array representing the pixels. There must be enough bytes available.
     * Krita will take the raw pointer from the QByteArray and start reading, not stopping before
     * (w * h) bytes are read.
     *
     * @param x the x position to start writing from
     * @param y the y position to start writing from
     * @param w the width of each row
     * @param h the number of rows to write
     */
	function setPixelData(value:QByteArray, x:Int, y:Int, w:Int, h:Int):Void;

}

