package krita;

import pyqt5.qtgui.QColor;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QVector;
import pyqt5.qtcore.QString;

/**
 * @brief The ManagedColor class is a class to handle colors that are color managed.
 * A managed color is a color of which we know the model(RGB, LAB, CMYK, etc), the bitdepth and
 * the specific properties of its colorspace, such as the whitepoint, chromacities, trc, etc, as represented
 * by the color profile.
 *
 * Krita has two color management systems. LCMS and OCIO.
 * LCMS is the one handling the ICC profile stuff, and the major one handling that ManagedColor deals with.
 * OCIO support is only in the display of the colors. ManagedColor has some support for it in colorForCanvas()
 *
 * All colors in Krita are color managed. QColors are understood as RGB-type colors in the sRGB space.
 *
 * We recommend you make a color like this:
 *
 * @code
 * colorYellow = ManagedColor("RGBA", "U8", "")
 * QVector<float> yellowComponents = colorYellow.components()
 * yellowComponents[0] = 1.0
 * yellowComponents[1] = 1.0
 * yellowComponents[2] = 0
 * yellowComponents[3] = 1.0
 *
 * colorYellow.setComponents(yellowComponents)
 * QColor yellow = colorYellow.colorForCanvas(canvas)
 * @endcode
 */
@:pythonImport("krita", "ManagedColor")
@:native("ManagedColor")
extern class ManagedColor extends QObject {
	static function fromQColor(qcolor:QColor, ?canvas:Canvas):ManagedColor;
	@:overload(function(?parent:QObject):ManagedColor {})
	function new(colorModel:QString, colorDepth:QString, colorProfile:QString, ?parent:QObject);

	/**
	 * @brief colorForCanvas
	 * @param canvas the canvas whose color management you'd like to use. In Krita, different views have
	 * separate canvasses, and these can have different OCIO configurations active.
	 * @return the QColor as it would be displaying on the canvas. This result can be used to draw widgets with
	 * the correct configuration applied.
	 */
	function colorForCanvas(canvas:Canvas):QColor;

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
	 * @brief components
	 * @return a QVector containing the channel/components of this color normalized. This includes the alphachannel.
	 */
	function components():QVector<Float>;

	/**
	 * @brief componentsOrdered()
	 * @return same as Components, except the values are ordered to the display.
	 */
	function componentsOrdered():QVector<Float>;

	/**
	 * @brief setComponents
	 * Set the channel/components with normalized values. For integer colorspace, this obviously means the limit
	 * is between 0.0-1.0, but for floating point colorspaces, 2.4 or 103.5 are still meaningful (if bright) values.
	 * @param values the QVector containing the new channel/component values. These should be normalized.
	 */
	function setComponents(values:QVector<Float>):Void;

	/**
	 * Serialize this color following Create's swatch color specification available
	 * at https://web.archive.org/web/20110826002520/http://create.freedesktop.org/wiki/Swatches_-_colour_file_format/Draft
	 */
	function toXML():QString;

	/**
	 * Unserialize a color following Create's swatch color specification available
	 * at https://web.archive.org/web/20110826002520/http://create.freedesktop.org/wiki/Swatches_-_colour_file_format/Draft
	 *
	 * @param xml an XML color
	 *
	 * @return the unserialized color, or an empty color object if the function failed
	 *         to unserialize the color
	 */
	function fromXML(xml:QString):Void;

	/**
	 * @brief toQString create a user-visible string of the channel names and the channel values
	 * @return a string that can be used to display the values of this color to the user.
	 */
	function toQString():QString;

}

