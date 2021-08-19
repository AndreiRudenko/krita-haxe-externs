package krita;

import pyqt5.qtgui.QColor;
import pyqt5.qtgui.QImage;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QString;

/**
 * @brief The Scratchpad class
 * A scratchpad is a type of blank canvas area that can be painted on 
 * with the normal painting devices
 *
 */
@:pythonImport("krita", "Scratchpad")
@:native("Scratchpad")
extern class Scratchpad extends QWidget {
	@:overload(function():Scratchpad {})
	function new(view:View, defaultColor:QColor, ?parent:QWidget);

	/**
	 * @brief Clears out scratchpad with color specfified set during setup
	 */
	function clear():Void;

	/**
	 * @brief Fill the entire scratchpad with a color
	 * @param Color to fill the canvas with
	 */
	function setFillColor(color:QColor):Void;

	/**
	 * @brief Switches between a GUI controlling the current mode and when mouse clicks control mode
	 * @param Setting to true allows GUI to control the mode with explicitly setting mode
	 */
	function setModeManually(value:Bool):Void;

	/**
	 * @brief Manually set what mode scratchpad is in. Ignored if "setModeManually is set to false
	 * @param Available options are: "painting", "panning", and "colorsampling"
	 */
	function setMode(modeName:QString):Void;

	/**
	 * @brief Makes a connection between the zoom of the canvas and scratchpad area so they zoom in sync
	 * @param Should the scratchpad share the zoom level. Default is true
	 */
	function linkCanvasZoom(value:Bool):Void;

	/**
	 * @brief Load image data to the scratchpad
	 * @param Image object to load
	 */
	function loadScratchpadImage(image:QImage):Void;

	/**
	 * @brief Take what is on the scratchpad area and grab image
	 * @return the image data from the scratchpage
	 */
	function copyScratchpadImageData():QImage;
}

