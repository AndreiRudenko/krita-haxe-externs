package krita;

import pyqt5.qtgui.QImage;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;

/**
 * A Resource represents a gradient, pattern, brush tip, brush preset, palette or 
 * workspace definition.
 * 
 * @code
 * allPresets = Application.resources("preset")
 * for preset in allPresets:
 *     print(preset.name())
 * @endcode
 * 
 * Resources are identified by their type, name and filename. If you want to change
 * the contents of a resource, you should read its data using data(), parse it and
 * write the changed contents back.
 */
@:pythonImport("krita", "Resource")
@:native("Resource")
extern class Resource extends QObject {
	@:overload(function(?rhs:Resource):Resource {})
	function new(resourceId:Int, type:QString, name:QString, filename:QString, image:QImage, ?parent:QObject);

	/**
	 * Return the type of this resource. Valid types are:
	 * <ul>
	 * <li>pattern: a raster image representing a pattern
	 * <li>gradient: a gradient
	 * <li>brush: a brush tip
	 * <li>preset: a brush preset
	 * <li>palette: a color set
	 * <li>workspace: a workspace definition.
	 * </ul>
	 */
	function type():ResourceType;

	/**
	 * The user-visible name of the resource.
	 */
	function name():QString;

	/**
	 * setName changes the user-visible name of the current resource.
	 */
	function setName(value:QString):Void;

	/**
	 * The filename of the resource, if present. Not all resources
	 * are loaded from files.
	 */
	function filename():QString;

	/**
	 * An image that can be used to represent the resource in the
	 * user interface. For some resources, like patterns, the 
	 * image is identical to the resource, for others it's a mere
	 * icon.
	 */
	function image():QImage;

	/**
	 * Change the image for this resource.
	 */
	function setImage(image:QImage):Void;
}


enum abstract ResourceType(String) from String to String {
	var PATTERN = 'pattern';
	var GRADIENT = 'gradient';
	var BRUSH = 'brush';
	var PRESET = 'preset';
	var PALETTE = 'palette';
	var WORKSPACE = 'workspace';
}
