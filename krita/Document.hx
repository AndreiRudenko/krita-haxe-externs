package krita;

import pyqt5.qtgui.QColor;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtgui.QImage;
import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QString;
import krita.Node;

/**
 * The Document class encapsulates a Krita Document/Image. A Krita document is an Image with
 * a filename. Libkis does not differentiate between a document and an image, like Krita does
 * internally.
 */
@:pythonImport("krita", "Document")
@:native("Document")
extern class Document extends QObject {
	function new();

	/**
	 * @brief horizontalGuides
	 * The horizontal guides.
	 * @return a list of the horizontal positions of guides.
	 */
	function horizontalGuides():QList<Float>;

	/**
	 * @brief verticalGuides
	 * The vertical guide lines.
	 * @return a list of vertical guides.
	 */
	function verticalGuides():QList<Float>;

	/**
	 * @brief guidesVisible
	 * Returns guide visibility.
	 * @return whether the guides are visible.
	 */
	function guidesVisible():Bool;

	/**
	 * @brief guidesLocked
	 * Returns guide lockedness.
	 * @return whether the guides are locked.
	 */
	function guidesLocked():Bool;

	/**
	 * @brief clone create a shallow clone of this document.
	 * @return a new Document that should be identical to this one in every respect.
	 */
	function clone():Document;

	/**
	 * Batchmode means that no actions on the document should show dialogs or popups.
	 * @return true if the document is in batchmode.
	 */
	function batchmode():Bool;

	/**
	 * Set batchmode to @p value. If batchmode is true, then there should be no popups
	 * or dialogs shown to the user.
	 */
	function setBatchmode(value:Bool):Void;

	/**
	 * @brief activeNode retrieve the node that is currently active in the currently active window
	 * @return the active node. If there is no active window, the first child node is returned.
	 */
	function activeNode():Node;

	/**
	 * @brief setActiveNode make the given node active in the currently active view and window
	 * @param value the node to make active.
	 */
	function setActiveNode(value:Node):Void;

	/**
	 * @brief toplevelNodes return a list with all top level nodes in the image graph
	 */
	function topLevelNodes():QList<Node>;

	/**
	 * @brief nodeByName searches the node tree for a node with the given name and returns it
	 * @param name the name of the node
	 * @return the first node with the given name or 0 if no node is found
	 */
	function nodeByName(name:QString):Node;

	/**
	 * @brief nodeByUniqueID searches the node tree for a node with the given name and returns it.
	 * @param uuid the unique id of the node
	 * @return the node with the given unique id, or 0 if no node is found.
	 */
	function nodeByUniqueID(id:QString):Node;

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
	 * @return false if the colorProfile name does not correspond to to a registered profile or if assigning
	 * the profile failed.
	 */
	function setColorProfile(colorProfile:QString):Bool;

	/**
	 * @brief setColorSpace convert the nodes and the image to the given colorspace. The conversion is
	 * done with Perceptual as intent, High Quality and No LCMS Optimizations as flags and no blackpoint
	 * compensation.
	 *
	 * @param colorModel A string describing the color model of the image:
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
	 * @return false the combination of these arguments does not correspond to a colorspace.
	 */
	function setColorSpace(colorModel:QString, colorDepth:QString, colorProfile:QString):Bool;

	/**
	 * @brief backgroundColor returns the current background color of the document. The color will
	 * also include the opacity.
	 *
	 * @return QColor
	 */
	function backgroundColor():QColor;

	/**
	 * @brief setBackgroundColor sets the background color of the document. It will trigger a projection
	 * update.
	 *
	 * @param color A QColor. The color will be converted from sRGB.
	 * @return bool
	 */
	function setBackgroundColor(color:QColor):Bool;

	/**
	 * @brief documentInfo creates and XML document representing document and author information.
	 * @return a string containing a valid XML document with the right information about the document
	 * and author. The DTD can be found here:
	 *
	 * https://phabricator.kde.org/source/krita/browse/master/krita/dtd/
	 *
	 * @code
	 * <?xml version="1.0" encoding="UTF-8"?>
	 * <!DOCTYPE document-info PUBLIC '-//KDE//DTD document-info 1.1//EN' 'http://www.calligra.org/DTD/document-info-1.1.dtd'>
	 * <document-info xmlns="http://www.calligra.org/DTD/document-info">
	 * <about>
	 *  <title>My Document</title>
	 *   <description></description>
	 *   <subject></subject>
	 *   <abstract><![CDATA[]]></abstract>
	 *   <keyword></keyword>
	 *   <initial-creator>Unknown</initial-creator>
	 *   <editing-cycles>1</editing-cycles>
	 *   <editing-time>35</editing-time>
	 *   <date>2017-02-27T20:15:09</date>
	 *   <creation-date>2017-02-27T20:14:33</creation-date>
	 *   <language></language>
	 *  </about>
	 *  <author>
	 *   <full-name>Boudewijn Rempt</full-name>
	 *   <initial></initial>
	 *   <author-title></author-title>
	 *   <email></email>
	 *   <telephone></telephone>
	 *   <telephone-work></telephone-work>
	 *   <fax></fax>
	 *   <country></country>
	 *   <postal-code></postal-code>
	 *   <city></city>
	 *   <street></street>
	 *   <position></position>
	 *   <company></company>
	 *  </author>
	 * </document-info>
	 * @endcode
	 *
	 */
	function documentInfo():QString;

	/**
	 * @brief setDocumentInfo set the Document information to the information contained in document
	 * @param document A string containing a valid XML document that conforms to the document-info DTD
	 * that can be found here:
	 *
	 * https://phabricator.kde.org/source/krita/browse/master/krita/dtd/
	 */
	function setDocumentInfo(document:QString):Void;

	/**
	 * @return the full path to the document, if it has been set.
	 */
	function fileName():QString;

	/**
	 * @brief setFileName set the full path of the document to @param value
	 */
	function setFileName(value:QString):Void;

	/**
	 * @return the height of the image in pixels
	 */
	function height():Int;

	/**
	 * @brief setHeight resize the document to @param value height. This is a canvas resize, not a scale.
	 */
	function setHeight(value:Int):Void;

	/**
	 * @return the name of the document. This is the title field in the @ref documentInfo
	 */
	function name():QString;

	/**
	 * @brief setName sets the name of the document to @p value. This is the title field in the @ref documentInfo
	 */
	function setName(value:QString):Void;

	/**
	 * @return the resolution in pixels per inch
	 */
	function resolution():Int;

	/**
	 * @brief setResolution set the resolution of the image; this does not scale the image
	 * @param value the resolution in pixels per inch
	 */
	function setResolution(value:Int):Void;

	/**
	 * @brief rootNode the root node is the invisible group layer that contains the entire node
	 * hierarchy.
	 * @return the root of the image
	 */
	function rootNode():Node;

	/**
	 * @brief selection Create a Selection object around the global selection, if there is one.
	 * @return the global selection or None if there is no global selection.
	 */
	function selection():Selection;

	/**
	 * @brief setSelection set or replace the global selection
	 * @param value a valid selection object.
	 */
	function setSelection(value:Selection):Void;

	/**
	 * @return the width of the image in pixels.
	 */
	function width():Int;

	/**
	 * @brief setWidth resize the document to @param value width. This is a canvas resize, not a scale.
	 */
	function setWidth(value:Int):Void;

	/**
	 * @return the left edge of the canvas in pixels.
	 */
	function xOffset():Int;

	/**
	 * @brief setXOffset sets the left edge of the canvas to @p x.
	 */
	function setXOffset(x:Int):Void;

	/**
	 * @return the top edge of the canvas in pixels.
	 */
	function yOffset():Int;

	/**
	 * @brief setYOffset sets the top edge of the canvas to @p y.
	 */
	function setYOffset(y:Int):Void;

	/**
	 * @return xRes the horizontal resolution of the image in pixels
	 * per inch
	 */
	function xRes():Float;

	/**
	 * @brief setXRes set the horizontal resolution of the image to
	 * xRes in pixels per inch
	 */
	function setXRes(xRes:Float):Void;

	/**
	 * @return yRes the vertical resolution of the image in pixels per
	 * inch
	 */
	function yRes():Float;

	/**
	 * @brief setYRes set the vertical resolution of the image to yRes
	 * in pixels per inch
	 */
	function setYRes(yRes:Float):Void;

	/**
	 * @brief pixelData reads the given rectangle from the image projection and returns it as a byte
	 * array. The pixel data starts top-left, and is ordered row-first.
	 *
	 * The byte array can be interpreted as follows: 8 bits images have one byte per channel,
	 * and as many bytes as there are channels. 16 bits integer images have two bytes per channel,
	 * representing an unsigned short. 16 bits float images have two bytes per channel, representing
	 * a half, or 16 bits float. 32 bits float images have four bytes per channel, representing a
	 * float.
	 *
	 * You can read outside the image boundaries; those pixels will be transparent black.
	 *
	 * The order of channels is:
	 *
	 * <ul>
	 * <li>Integer RGBA: Blue, Green, Red, Alpha
	 * <li>Float RGBA: Red, Green, Blue, Alpha
	 * <li>LabA: L, a, b, Alpha
	 * <li>CMYKA: Cyan, Magenta, Yellow, Key, Alpha
	 * <li>XYZA: X, Y, Z, A
	 * <li>YCbCrA: Y, Cb, Cr, Alpha
	 * </ul>
	 *
	 * The byte array is a copy of the original image data. In Python, you can use bytes, bytearray
	 * and the struct module to interpret the data and construct, for instance, a Pillow Image object.
	 *
	 * @param x x position from where to start reading
	 * @param y y position from where to start reading
	 * @param w row length to read
	 * @param h number of rows to read
	 * @return a QByteArray with the pixel data. The byte array may be empty.
	 */
	function pixelData(x:Int, y:Int, w:Int, h:Int):QByteArray;

	/**
	 * @brief close Close the document: remove it from Krita's internal list of documents and
	 * close all views. If the document is modified, you should save it first. There will be
	 * no prompt for saving.
	 *
	 * After closing the document it becomes invalid.
	 *
	 * @return true if the document is closed.
	 */
	function close():Bool;

	/**
	 * @brief crop the image to rectangle described by @p x, @p y,
	 * @p w and @p h
	 * @param x x coordinate of the top left corner
	 * @param y y coordinate of the top left corner
	 * @param w width
	 * @param h height
	 */
	function crop(x:Int, y:Int, w:Int, h:Int):Void;

	/**
	 * @brief exportImage export the image, without changing its URL to the given path.
	 * @param filename the full path to which the image is to be saved
	 * @param exportConfiguration a configuration object appropriate to the file format.
	 * An InfoObject will used to that configuration.
	 *
	 * The supported formats have specific configurations that must be used when in
	 * batchmode. They are described below:
	 *
	 *\b png
	 * <ul>
	 * <li>alpha: bool (True or False)
	 * <li>compression: int (1 to 9)
	 * <li>forceSRGB: bool (True or False)
	 * <li>indexed: bool (True or False)
	 * <li>interlaced: bool (True or False)
	 * <li>saveSRGBProfile: bool (True or False)
	 * <li>transparencyFillcolor: rgb (Ex:[255,255,255])
	 * </ul>
	 *
	 *\b jpeg
	 * <ul>
	 * <li>baseline: bool (True or False)
	 * <li>exif: bool (True or False)
	 * <li>filters: bool (['ToolInfo', 'Anonymizer'])
	 * <li>forceSRGB: bool (True or False)
	 * <li>iptc: bool (True or False)
	 * <li>is_sRGB: bool (True or False)
	 * <li>optimize: bool (True or False)
	 * <li>progressive: bool (True or False)
	 * <li>quality: int (0 to 100)
	 * <li>saveProfile: bool (True or False)
	 * <li>smoothing: int (0 to 100)
	 * <li>subsampling: int (0 to 3)
	 * <li>transparencyFillcolor: rgb (Ex:[255,255,255])
	 * <li>xmp: bool (True or False)
	 * </ul>
	 * @return true if the export succeeded, false if it failed.
	 */
	function exportImage(filename:QString, exportConfiguration:InfoObject):Bool;

	/**
	 * @brief flatten all layers in the image
	 */
	function flatten():Void;

	/**
	 * @brief resizeImage resizes the canvas to the given left edge, top edge, width and height.
	 * Note: This doesn't scale, use scale image for that.
	 * @param x the new left edge
	 * @param y the new top edge
	 * @param w the new width
	 * @param h the new height
	 */
	function resizeImage(x:Int, y:Int, w:Int, h:Int):Void;

	/**
	* @brief scaleImage
	* @param w the new width
	* @param h the new height
	* @param xres the new xres
	* @param yres the new yres
	* @param strategy the scaling strategy. There's several ones amongst these that aren't available in the regular UI.
	* The list of filters is extensible and can be retrieved with Krita::filter
	* <ul>
	* <li>Hermite</li>
	* <li>Bicubic - Adds pixels using the color of surrounding pixels. Produces smoother tonal gradations than Bilinear.</li>
	* <li>Box - Replicate pixels in the image. Preserves all the original detail, but can produce jagged effects.</li>
	* <li>Bilinear - Adds pixels averaging the color values of surrounding pixels. Produces medium quality results when the image is scaled from half to two times the original size.</li>
	* <li>Bell</li>
	* <li>BSpline</li>
	* <li>Kanczos3 - Offers similar results than Bicubic, but maybe a little bit sharper. Can produce light and dark halos along strong edges.</li>
	* <li>Mitchell</li>
	* </ul>
	*/
	function scaleImage(w:Int, h:Int, xres:Int, yres:Int, strategy:QString):Void;

   /**
	* @brief rotateImage
	* Rotate the image by the given radians.
	* @param radians the amount you wish to rotate the image in radians
	*/
	function rotateImage(radians:Float):Void;

   /**
	* @brief shearImage shear the whole image.
	* @param angleX the X-angle in degrees to shear by
	* @param angleY the Y-angle in degrees to shear by
	*/
	function shearImage(angleX:Float, angleY:Float):Void;

	/**
	 * @brief save the image to its currently set path. The modified flag of the
	 * document will be reset
	 * @return true if saving succeeded, false otherwise.
	 */
	function save():Bool;

	/**
	 * @brief saveAs save the document under the @p filename. The document's
	 * filename will be reset to @p filename.
	 * @param filename the new filename (full path) for the document
	 * @return true if saving succeeded, false otherwise.
	 */
	function saveAs(filename:QString):Bool;

	/**
	 * @brief createNode create a new node of the given type. The node is not added
	 * to the node hierarchy; you need to do that by finding the right parent node,
	 * getting its list of child nodes and adding the node in the right place, then
	 * calling Node::SetChildNodes
	 *
	 * @param name The name of the node
	 *
	 * @param nodeType The type of the node. Valid types are:
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
	 * </ul>
	 *
	 * When relevant, the new Node will have the colorspace of the image by default;
	 * that can be changed with Node::setColorSpace.
	 *
	 * The settings and selections for relevant layer and mask types can also be set
	 * after the Node has been created.
	 *
@code
d = Application.createDocument(1000, 1000, "Test", "RGBA", "U8", "", 120.0)
root = d.rootNode();
print(root.childNodes())
l2 = d.createNode("layer2", "paintLayer")
print(l2)
root.addChildNode(l2, None)
print(root.childNodes())
@endcode
	 *
	 *
	 * @return the new Node.
	 */
	function createNode(name:QString, nodeType:NodeType):Node;

	/**
	 * @brief createGroupLayer
	 * Returns a grouplayer object. Grouplayers are nodes that can have
	 * other layers as children and have the passthrough mode.
	 * @param name the name of the layer.
	 * @return a GroupLayer object.
	 */
	function createGroupLayer(name:QString):GroupLayer;

	/**
	 * @brief createFileLayer returns a layer that shows an external image.
	 * @param name name of the file layer.
	 * @param fileName the absolute filename of the file referenced. Symlinks will be resolved.
	 * @param scalingMethod how the dimensions of the file are interpreted
	 *        can be either "None", "ImageToSize" or "ImageToPPI"
	 * @return a FileLayer
	 */
	function createFileLayer(name:QString, fileName:QString, scalingMethod:QString):FileLayer;

	/**
	 * @brief createFilterLayer creates a filter layer, which is a layer that represents a filter
	 * applied non-destructively.
	 * @param name name of the filterLayer
	 * @param filter the filter that this filter layer will us.
	 * @param selection the selection.
	 * @return a filter layer object.
	 */
	function createFilterLayer(name:QString, filter:Filter, selection:Selection):FilterLayer;

	/**
	 * @brief createFillLayer creates a fill layer object, which is a layer
	 * @param name
	 * @param generatorName - name of the generation filter.
	 * @param configuration - the configuration for the generation filter.
	 * @param selection - the selection.
	 * @return a filllayer object.
	 *
	 * @code
	 * from krita import *
	 * d = Krita.instance().activeDocument()
	 * i = InfoObject();
	 * i.setProperty("pattern", "Cross01.pat")
	 * s = Selection();
	 * s.select(0, 0, d.width(), d.height(), 255)
	 * n = d.createFillLayer("test", "pattern", i, s)
	 * r = d.rootNode();
	 * c = r.childNodes();
	 * r.addChildNode(n, c[0])
	 * d.refreshProjection()
	 * @endcode
	 */
	function createFillLayer(name:QString, generatorName:QString, configuration:InfoObject, selection:Selection):FillLayer;

	/**
	 * @brief createCloneLayer
	 * @param name
	 * @param source
	 * @return
	 */
	function createCloneLayer(name:QString, source:Node):CloneLayer;

	/**
	 * @brief createVectorLayer
	 * Creates a vector layer that can contain vector shapes.
	 * @param name the name of this layer.
	 * @return a VectorLayer.
	 */
	function createVectorLayer(name:QString):VectorLayer;

	@:overload(function(name:QString, filter:Filter, selection_source:Node):FilterMask{})
	/**
	 * @brief createFilterMask
	 * Creates a filter mask object that much like a filterlayer can apply a filter non-destructively.
	 * @param name the name of the layer.
	 * @param filter the filter assigned.
	 * @param selection the selection to be used by the filter mask
	 * @return a FilterMask
	 */
	function createFilterMask(name:QString, filter:Filter, selection:Selection):FilterMask;

	/**
	 * @brief createSelectionMask
	 * Creates a selection mask, which can be used to store selections.
	 * @param name - the name of the layer.
	 * @return a SelectionMask
	 */
	function createSelectionMask(name:QString):SelectionMask;

	/**
	 * @brief createTransformMask
	 * Creates a transform mask, which can be used to apply a transformation non-destructively.
	 * @param name - the name of the layer mask.
	 * @return a TransformMask
	 */
	function createTransformMask(name:QString):TransformMask;

	/**
	 * @brief projection creates a QImage from the rendered image or
	 * a cutout rectangle.
	 */
	function projection(?x:Int, ?y:Int, ?w:Int, ?h:Int):QImage;

	/**
	 * @brief thumbnail create a thumbnail of the given dimensions.
	 *
	 * If the requested size is too big a null QImage is created.
	 *
	 * @return a QImage representing the layer contents.
	 */
	function thumbnail(w:Int, h:Int):QImage;

	/**
	 * [low-level] Lock the image without waiting for all the internal job queues are processed
	 *
	 * WARNING: Don't use it unless you really know what you are doing! Use barrierLock() instead!
	 *
	 * Waits for all the **currently running** internal jobs to complete and locks the image
	 * for writing. Please note that this function does **not** wait for all the internal
	 * queues to process, so there might be some non-finished actions pending. It means that
	 * you just postpone these actions until you unlock() the image back. Until then, then image
	 * might easily be frozen in some inconsistent state.
	 *
	 * The only sane usage for this function is to lock the image for **emergency**
	 * processing, when some internal action or scheduler got hung up, and you just want
	 * to fetch some data from the image without races.
	 *
	 * In all other cases, please use barrierLock() instead!
	 */
	function lock():Void;

	/**
	 * Unlocks the image and starts/resumes all the pending internal jobs. If the image
	 * has been locked for a non-readOnly access, then all the internal caches of the image
	 * (e.g. lod-planes) are reset and regeneration jobs are scheduled.
	 */
	function unlock():Void;

	/**
	 * Wait for all the internal image jobs to complete and return without locking
	 * the image. This function is handly for tests or other synchronous actions,
	 * when one needs to wait for the result of his actions.
	 */
	function waitForDone():Void;

	/**
	 * @brief Tries to lock the image without waiting for the jobs to finish
	 *
	 * Same as barrierLock(), but doesn't block execution of the calling thread
	 * until all the background jobs are finished. Instead, in case of presence of
	 * unfinished jobs in the queue, it just returns false
	 *
	 * @return whether the lock has been acquired
	 */
	function tryBarrierLock():Bool;

	/**
	 * Starts a synchronous recomposition of the projection: everything will
	 * wait until the image is fully recomputed.
	 */
	function refreshProjection():Void;

	/**
	 * @brief setHorizontalGuides
	 * replace all existing horizontal guides with the entries in the list.
	 * @param lines a list of floats containing the new guides.
	 */
	function setHorizontalGuides(lines:QList<Float>):Void;

	/**
	 * @brief setVerticalGuides
	 * replace all existing horizontal guides with the entries in the list.
	 * @param lines a list of floats containing the new guides.
	 */
	function setVerticalGuides(lines:QList<Float>):Void;

	/**
	 * @brief setGuidesVisible
	 * set guides visible on this document.
	 * @param visible whether or not the guides are visible.
	 */
	function setGuidesVisible(visible:Bool):Void;

	/**
	 * @brief setGuidesLocked
	 * set guides locked on this document
	 * @param locked whether or not to lock the guides on this document.
	 */
	function setGuidesLocked(locked:Bool):Void;

	/**
	 * @brief modified returns true if the document has unsaved modifications.
	 */
	function modified():Bool;

	/**
	 * @brief bounds return the bounds of the image
	 * @return the bounds
	 */
	function bounds():QRect;

	/****
	 * Animation Related API
	 *****/


	/**
	/**
	 * @brief Import an image sequence of files from a directory. This will grab all
	 * images from the directory and import them with a potential offset (firstFrame)
	 * and step (images on 2s, 3s, etc)
	 * @returns whether the animation import was successful
	 */
	function importAnimation(files:QList<QString>, firstFrame:Int, step:Int):Bool;

	/**
	 * @brief frames per second of document
	 * @return the fps of the document
	 */
	function framesPerSecond():Int;

	/**
	 * @brief set frames per second of document
	 */
	function setFramesPerSecond(fps:Int):Void;

	/**
	 * @brief set start time of animation
	 */
	function setFullClipRangeStartTime(startTime:Int):Void;

	/**
	 * @brief get the full clip range start time
	 * @return full clip range start time
	 */
	function fullClipRangeStartTime():Int;

	/**
	 * @brief set full clip range end time
	 */
	function setFullClipRangeEndTime(endTime:Int):Void;

	/**
	 * @brief get the full clip range end time
	 * @return full clip range end time
	 */
	function fullClipRangeEndTime():Int;

	/**
	 * @brief get total frame range for animation
	 * @return total frame range for animation
	 */
	function animationLength():Int;

	/**
	 * @brief set temporary playback range of document
	 */
	function setPlayBackRange(start:Int, stop:Int):Void;

	/**
	 * @brief get start time of current playback
	 * @return start time of current playback
	 */
	function playBackStartTime():Int;

	/**
	 * @brief get end time of current playback
	 * @return end time of current playback
	 */
	function playBackEndTime():Int;

	/**
	 * @brief get current frame selected of animation
	 * @return current frame selected of animation
	 */
	function currentTime():Int;

	/**
	 * @brief set current time of document's animation
	 */
	function setCurrentTime(time:Int):Void;

	/**
	 * @brief annotationTypes returns the list of annotations present in the document.
	 * Each annotation type is unique.
	 */
	function annotationTypes():QList<QString>;

	/**
	 * @brief annotationDescription gets the pretty description for the current annotation
	 * @param type the type of the annotation
	 * @return a string that can be presented to the user
	 */
	function annotationDescription(type:QString):QString;

	/**
	 * @brief annotation the actual data for the annotation for this type. It's a simple
	 * QByteArray, what's in it depends on the type of the annotation
	 * @param type the type of the annotation
	 * @return a bytearray, possibly empty if this type of annotation doesn't exist
	 */
	function annotation(type:QString):QByteArray;

	/**
	 * @brief setAnnotation Add the given annotation to the document
	 * @param type the unique type of the annotation
	 * @param description the user-visible description of the annotation
	 * @param annotation the annotation itself
	 */
	function setAnnotation(type:QString, description:QString, annotation:QByteArray):Void;

	/**
	 * @brief removeAnnotation remove the specified annotation from the image
	 * @param type the type defining the annotation
	 */
	function removeAnnotation(type:QString):Void;

}

