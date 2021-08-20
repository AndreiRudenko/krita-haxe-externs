package krita;

import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QPoint;
import pyqt5.qtgui.QImage;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QUuid;

/**
 * Node represents a layer or mask in a Krita image's Node hierarchy. Group layers can contain
 * other layers and masks; layers can contain masks.
 *
 */
@:pythonImport("krita", "Node")
@:native("Node")
extern class Node extends QObject {
	/**
	 * @brief clone clone the current node. The node is not associated with any image.
	 */
	function clone():Node;

	/**
	 * @brief alphaLocked checks whether the node is a paint layer and returns whether it is alpha locked
	 * @return whether the paint layer is alpha locked, or false if the node is not a paint layer
	 */
	function alphaLocked():Bool;

	/**
	 * @brief setAlphaLocked set the layer to value if the node is paint layer.
	 */
	function setAlphaLocked(value:Bool):Void;

	/**
	 * @return the blending mode of the layer. The values of the blending modes are defined in @see KoCompositeOpRegistry.h
	 */
	function blendingMode():QString;

	/**
	 * @brief setBlendingMode set the blending mode of the node to the given value
	 * @param value one of the string values from @see KoCompositeOpRegistry.h
	 */
	function setBlendingMode(value:QString):Void;

	/**
	 * @brief channels creates a list of Channel objects that can be used individually to
	 * show or hide certain channels, and to retrieve the contents of each channel in a
	 * node separately.
	 *
	 * Only layers have channels, masks do not, and calling channels on a Node that is a mask
	 * will return an empty list.
	 *
	 * @return the list of channels ordered in by position of the channels in pixel position
	 */
	function channels():QList<Channel>;

	/**
	 * Return a list of child nodes of the current node. The nodes are ordered from the bottommost up.
	 * The function is not recursive.
	 */
	function childNodes():QList<Node>;

	/**
	 * @brief addChildNode adds the given node in the list of children.
	 * @param child the node to be added
	 * @param above the node above which this node will be placed
	 * @return false if adding the node failed
	 */
	function addChildNode(child:Node, above:Node):Bool;

	/**
	 * @brief removeChildNode removes the given node from the list of children.
	 * @param child the node to be removed
	 */
	function removeChildNode(child:Node):Bool;

	/**
	 * @brief setChildNodes this replaces the existing set of child nodes with the new set.
	 * @param nodes The list of nodes that will become children, bottom-up -- the first node,
	 * is the bottom-most node in the stack.
	 */
	function setChildNodes(nodes:QList<Node>):Void;

	/**
	 * colorDepth A string describing the color depth of the image:
	 * <ul>
	 * <li>U8: unsigned 8 bits integer, the most common type</li>
	 * <li>U16: unsigned 16 bits integer</li>
	 * <li>F16: half, 16 bits floating point. Only available if Krita was built with OpenEXR</li>
	 * <li>F32: 32 bits floating point</li>
	 * </ul>
	 * @return the color depth.
	 */
	function colorDepth():QString;

	/**
	 * @brief colorModel retrieve the current color model of this document:
	 * <ul>
	 * <li>A: Alpha mask</li>
	 * <li>RGBA: RGB with alpha channel (The actual order of channels is most often BGR!)</li>
	 * <li>XYZA: XYZ with alpha channel</li>
	 * <li>LABA: LAB with alpha channel</li>
	 * <li>CMYKA: CMYK with alpha channel</li>
	 * <li>GRAYA: Gray with alpha channel</li>
	 * <li>YCbCrA: YCbCr with alpha channel</li>
	 * </ul>
	 * @return the internal color model string.
	 */
	function colorModel():QString;

	/**
	 * @return the name of the current color profile
	 */
	function colorProfile():QString;

	/**
	 * @brief setColorProfile set the color profile of the image to the given profile. The profile has to
	 * be registered with krita and be compatible with the current color model and depth; the image data
	 * is <i>not</i> converted.
	 * @param colorProfile
	 * @return if assigning the color profile worked
	 */
	function setColorProfile(colorProfile:QString):Bool;

	/**
	 * @brief setColorSpace convert the node to the given colorspace
	 * @param colorModel A string describing the color model of the node:
	 * <ul>
	 * <li>A: Alpha mask</li>
	 * <li>RGBA: RGB with alpha channel (The actual order of channels is most often BGR!)</li>
	 * <li>XYZA: XYZ with alpha channel</li>
	 * <li>LABA: LAB with alpha channel</li>
	 * <li>CMYKA: CMYK with alpha channel</li>
	 * <li>GRAYA: Gray with alpha channel</li>
	 * <li>YCbCrA: YCbCr with alpha channel</li>
	 * </ul>
	 * @param colorDepth A string describing the color depth of the image:
	 * <ul>
	 * <li>U8: unsigned 8 bits integer, the most common type</li>
	 * <li>U16: unsigned 16 bits integer</li>
	 * <li>F16: half, 16 bits floating point. Only available if Krita was built with OpenEXR</li>
	 * <li>F32: 32 bits floating point</li>
	 * </ul>
	 * @param colorProfile a valid color profile for this color model and color depth combination.
	 */
	function setColorSpace(colorModel:QString, colorDepth:QString, colorProfile:QString):Bool;

	/**
	 * @brief Krita layers can be animated, i.e., have frames.
	 * @return return true if the layer has frames. Currently, the scripting framework
	 * does not give access to the animation features.
	 */
	function animated():Bool;

	/**
	 * @brief enableAnimation make the current layer animated, so it can have frames.
	 */
	function enableAnimation():Void;

	/**
	 * @brief Sets whether or not node should be pinned to the Timeline Docker,
	 * regardless of selection activity.
	 */
	function setPinnedToTimeline(pinned:Bool):Void;

	/**
	 * @return Returns true if node is pinned to the Timeline Docker or false if it is not.
	 */
	function isPinnedToTimeline():Bool;

	/**
	 * Sets the state of the node to the value of @param collapsed
	 */
	function setCollapsed(collapsed:Bool):Void;

	/**
	 * returns the collapsed state of this node
	 */
	function collapsed():Bool;

	/**
	 * Sets a color label index associated to the layer.  The actual
	 * color of the label and the number of available colors is
	 * defined by Krita GUI configuration.
	 */
	function colorLabel():Int;

	/**
	 * @brief setColorLabel sets a color label index associated to the layer.  The actual
	 * color of the label and the number of available colors is
	 * defined by Krita GUI configuration.
	 * @param index an integer corresponding to the set of available color labels.
	 */
	function setColorLabel(index:Int):Void;

	/**
	 * @brief inheritAlpha checks whether this node has the inherits alpha flag set
	 * @return true if the Inherit Alpha is set
	 */
	function inheritAlpha():Bool;

	/**
	 * set the Inherit Alpha flag to the given value
	 */
	function setInheritAlpha(value:Bool):Void;

	/**
	 * @brief locked checks whether the Node is locked. A locked node cannot be changed.
	 * @return true if the Node is locked, false if it hasn't been locked.
	 */
	function locked():Bool;

	/**
	 * set the Locked flag to the give value
	 */
	function setLocked(value:Bool):Void;

	/**
	 * @brief does the node have any content in it?
	 * @return if node has any content in it
	 */
	function hasExtents():Bool;

	/**
	 * @return the user-visible name of this node.
	 */
	function name():QString;

	/**
	 * rename the Node to the given name
	 */
	function setName(name:QString):Void;

	/**
	 * return the opacity of the Node. The opacity is a value between 0 and 255.
	 */
	function opacity():Int;

	/**
	 * set the opacity of the Node to the given value. The opacity is a value between 0 and 255.
	 */
	function setOpacity(value:Int):Void;

	/**
	 * return the Node that is the parent of the current Node, or 0 if this is the root Node.
	 */
	function parentNode():Node;

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
	function type():NodeType;

	/**
	 * @brief icon
	 * @return the icon associated with the layer.
	 */
	function icon():QIcon;

	/**
	 * Check whether the current Node is visible in the layer stack
	 */
	function visible():Bool;

	/**
	 * Check to see if frame number on layer is a keyframe
	 */
	function hasKeyframeAtTime(frameNumber:Int):Bool;

	/**
	 * Set the visibility of the current node to @param visible
	 */
	function setVisible(visible:Bool):Void;

	/**
	 * @brief pixelData reads the given rectangle from the Node's paintable pixels, if those
	 * exist, and returns it as a byte array. The pixel data starts top-left, and is ordered row-first.
	 *
	 * The byte array can be interpreted as follows: 8 bits images have one byte per channel,
	 * and as many bytes as there are channels. 16 bits integer images have two bytes per channel,
	 * representing an unsigned short. 16 bits float images have two bytes per channel, representing
	 * a half, or 16 bits float. 32 bits float images have four bytes per channel, representing a
	 * float.
	 *
	 * You can read outside the node boundaries; those pixels will be transparent black.
	 *
	 * The order of channels is:
	 *
	 * <ul>
	 * <li>Integer RGBA: Blue, Green, Red, Alpha
	 * <li>Float RGBA: Red, Green, Blue, Alpha
	 * <li>GrayA: Gray, Alpha
	 * <li>Selection: selectedness
	 * <li>LabA: L, a, b, Alpha
	 * <li>CMYKA: Cyan, Magenta, Yellow, Key, Alpha
	 * <li>XYZA: X, Y, Z, A
	 * <li>YCbCrA: Y, Cb, Cr, Alpha
	 * </ul>
	 *
	 * The byte array is a copy of the original node data. In Python, you can use bytes, bytearray
	 * and the struct module to interpret the data and construct, for instance, a Pillow Image object.
	 *
	 * If you read the pixeldata of a mask, a filter or generator layer, you get the selection bytes,
	 * which is one channel with values in the range from 0..255.
	 *
	 * If you want to change the pixels of a node you can write the pixels back after manipulation
	 * with setPixelData(). This will only succeed on nodes with writable pixel data, e.g not on groups
	 * or file layers.
	 *
	 * @param x x position from where to start reading
	 * @param y y position from where to start reading
	 * @param w row length to read
	 * @param h number of rows to read
	 * @return a QByteArray with the pixel data. The byte array may be empty.

	 */
	function pixelData(x:Int, y:Int, w:Int, h:Int):QByteArray;

	/**
	 * @brief pixelDataAtTime a basic function to get pixeldata from an animated node at a given time.
	 * @param x the position from the left to start reading.
	 * @param y the position from the top to start reader
	 * @param w the row length to read
	 * @param h the number of rows to read
	 * @param time the frame number
	 * @return a QByteArray with the pixel data. The byte array may be empty.
	 */
	function pixelDataAtTime(x:Int, y:Int, w:Int, h:Int, time:Int):QByteArray;

	/**
	 * @brief projectionPixelData reads the given rectangle from the Node's projection (that is, what the node
	 * looks like after all sub-Nodes (like layers in a group or masks on a layer) have been applied,
	 * and returns it as a byte array. The pixel data starts top-left, and is ordered row-first.
	 *
	 * The byte array can be interpreted as follows: 8 bits images have one byte per channel,
	 * and as many bytes as there are channels. 16 bits integer images have two bytes per channel,
	 * representing an unsigned short. 16 bits float images have two bytes per channel, representing
	 * a half, or 16 bits float. 32 bits float images have four bytes per channel, representing a
	 * float.
	 *
	 * You can read outside the node boundaries; those pixels will be transparent black.
	 *
	 * The order of channels is:
	 *
	 * <ul>
	 * <li>Integer RGBA: Blue, Green, Red, Alpha
	 * <li>Float RGBA: Red, Green, Blue, Alpha
	 * <li>GrayA: Gray, Alpha
	 * <li>Selection: selectedness
	 * <li>LabA: L, a, b, Alpha
	 * <li>CMYKA: Cyan, Magenta, Yellow, Key, Alpha
	 * <li>XYZA: X, Y, Z, A
	 * <li>YCbCrA: Y, Cb, Cr, Alpha
	 * </ul>
	 *
	 * The byte array is a copy of the original node data. In Python, you can use bytes, bytearray
	 * and the struct module to interpret the data and construct, for instance, a Pillow Image object.
	 *
	 * If you read the projection of a mask, you get the selection bytes, which is one channel with
	 * values in the range from 0..255.
	 *
	 * If you want to change the pixels of a node you can write the pixels back after manipulation
	 * with setPixelData(). This will only succeed on nodes with writable pixel data, e.g not on groups
	 * or file layers.
	 *
	 * @param x x position from where to start reading
	 * @param y y position from where to start reading
	 * @param w row length to read
	 * @param h number of rows to read
	 * @return a QByteArray with the pixel data. The byte array may be empty.
	 */
	function projectionPixelData(x:Int, y:Int, w:Int, h:Int):QByteArray;

	/**
	 * @brief setPixelData writes the given bytes, of which there must be enough, into the
	 * Node, if the Node has writable pixel data:
	 *
	 * <ul>
	 * <li>paint layer: the layer's original pixels are overwritten
	 * <li>filter layer, generator layer, any mask: the embedded selection's pixels are overwritten.
	 * <b>Note:</b> for these
	 * </ul>
	 *
	 * File layers, Group layers, Clone layers cannot be written to. Calling setPixelData on
	 * those layer types will silently do nothing.
	 *
	 * @param value the byte array representing the pixels. There must be enough bytes available.
	 * Krita will take the raw pointer from the QByteArray and start reading, not stopping before
	 * (number of channels * size of channel * w * h) bytes are read.
	 *
	 * @param x the x position to start writing from
	 * @param y the y position to start writing from
	 * @param w the width of each row
	 * @param h the number of rows to write
	 */
	function setPixelData(value:QByteArray, x:Int, y:Int, w:Int, h:Int):Void;

	/**
	 * @brief bounds return the exact bounds of the node's paint device
	 * @return the bounds, or an empty QRect if the node has no paint device or is empty.
	 */
	function bounds():QRect;

	/**
	 *  move the pixels to the given x, y location in the image coordinate space.
	 */
	function move(x:Int, y:Int):Void;

	/**
	 * @brief position returns the position of the paint device of this node. The position is
	 * always 0,0 unless the layer has been moved. If you want to know the topleft position of
	 * the rectangle around the actual non-transparent pixels in the node, use bounds().
	 * @return the top-left position of the node
	 */
	function position():QPoint;

	/**
	 * @brief remove removes this node from its parent image.
	 */
	function remove():Bool;

	/**
	 * @brief duplicate returns a full copy of the current node. The node is not inserted in the graphic
	 * @return a valid Node object or 0 if the node couldn't be duplicated.
	 */
	function duplicate():Node;

	/**
	 * @brief save exports the given node with this filename. The extension of the filename determines the filetype.
	 * @param filename the filename including extension
	 * @param xRes the horizontal resolution in pixels per pt (there are 72 pts in an inch)
	 * @param yRes the horizontal resolution in pixels per pt (there are 72 pts in an inch)
	 * @param exportConfiguration a configuration object appropriate to the file format.
	 * @param exportRect the export bounds for saving a node as a QRect
	 * If \p exportRect is empty, then save exactBounds() of the node. If you'd like to save the image-
	 * aligned area of the node, just pass image->bounds() there.
	 * See Document->exportImage for InfoObject details.
	 * @return true if saving succeeded, false if it failed.
	 */
	function save(filename:QString, xRes:Float, yRes:Float, exportConfiguration:InfoObject, ?exportRect:QRect):Bool;

	/**
	 * @brief mergeDown merges the given node with the first visible node underneath this node in the layerstack.
	 * This will drop all per-layer metadata.
	 */
	function mergeDown():Node;

	/**
	 * @brief scaleNode
	 * @param origin the origin point
	 * @param width the width
	 * @param height the height
	 * @param strategy the scaling strategy. There's several ones amongst these that aren't available in the regular UI.
	 * <ul>
	 * <li>Hermite</li>
	 * <li>Bicubic - Adds pixels using the color of surrounding pixels. Produces smoother tonal gradations than Bilinear.</li>
	 * <li>Box - Replicate pixels in the image. Preserves all the original detail, but can produce jagged effects.</li>
	 * <li>Bilinear - Adds pixels averaging the color values of surrounding pixels. Produces medium quality results when the image is scaled from half to two times the original size.</li>
	 * <li>Bell</li>
	 * <li>BSpline</li>
	 * <li>Lanczos3 - Offers similar results than Bicubic, but maybe a little bit sharper. Can produce light and dark halos along strong edges.</li>
	 * <li>Mitchell</li>
	 * </ul>
	 */
	function scaleNode(origin:QPointF, width:Int, height:Int, strategy:QString):Void;

	/**
	 * @brief rotateNode rotate this layer by the given radians.
	 * @param radians amount the layer should be rotated in, in radians.
	 */
	function rotateNode(radians:Float):Void;

	/**
	 * @brief cropNode crop this layer.
	 * @param x the left edge of the cropping rectangle.
	 * @param y the top edge of the cropping rectangle
	 * @param w the right edge of the cropping rectangle
	 * @param h the bottom edge of the cropping rectangle
	 */
	function cropNode(x:Int, y:Int, w:Int, h:Int):Void;

	/**
	 * @brief shearNode perform a shear operation on this node.
	 * @param angleX the X-angle in degrees to shear by
	 * @param angleY the Y-angle in degrees to shear by
	 */
	function shearNode(angleX:Float, angleY:Float):Void;

	/**
	 * @brief thumbnail create a thumbnail of the given dimensions. The thumbnail is sized according
	 * to the layer dimensions, not the image dimensions. If the requested size is too big a null
	 * QImage is created. If the current node cannot generate a thumbnail, a transparent QImage of the
	 * requested size is generated.
	 * @return a QImage representing the layer contents.
	 */
	function thumbnail(w:Int, h:Int):QImage;

	/**
	 * @brief layerStyleToAsl retreive the current layer's style in ASL format.
	 * @return a QString in ASL format representing the layer style.
	 */
	function layerStyleToAsl():QString;

	/**
	 * @brief setLayerStyleFromAsl set a new layer style for this node.
	 * @param aslContent a string formatted in ASL format containing the layer style
	 * @return true if layer style was set, false if failed.
	 */
	function setLayerStyleFromAsl(asl:QString):Bool;

	/**
	 * @brief index the index of the node inside the parent
	 * @return an integer representing the node's index inside the parent
	 */
	function index():Int;

	/**
	 * @brief uniqueId uniqueId of the node
	 * @return a QUuid representing a unique id to identify the node
	 */
	function uniqueId():QUuid;
}

enum abstract NodeType(String) from String to String {
	var PAINTLAYER = 'paintlayer';
	var GROUPLAYER = 'grouplayer';
	var FILELAYER = 'filelayer';
	var FILTERLAYER = 'filterlayer';
	var FILLLAYER = 'filllayer';
	var CLONELAYER = 'clonelayer';
	var VECTORLAYER = 'vectorlayer';
	var TRANSPARENCYMASK = 'transparencymask';
	var FILTERMASK = 'filtermask';
	var TRANSFORMMASK = 'transformmask';
	var SELECTIONMASK = 'selectionmask';
}
