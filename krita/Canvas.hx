package krita;

import pyqt5.qtcore.QObject;

/**
 * Canvas wraps the canvas inside a view on an image/document.
 * It is responsible for the view parameters of the document:
 * zoom, rotation, mirror, wraparound and instant preview.
 */
@:pythonImport("krita", "Canvas")
@:native("Canvas")
extern class Canvas extends QObject {
	function new();

	/**
	 * @return the current zoomlevel. 1.0 is 100%.
	 */
	function zoomLevel():Float;

	/**
	 * @brief setZoomLevel set the zoomlevel to the given @p value. 1.0 is 100%.
	 */
	function setZoomLevel(value:Float):Void;

	/**
	 * @brief resetZoom set the zoomlevel to 100%
	 */
	function resetZoom():Void;

	/**
	 * @return the rotation of the canvas in degrees.
	 */
	function rotation():Float;

	/**
	 * @brief setRotation set the rotation of the canvas to the given  @param angle in degrees.
	 */
	function setRotation(angle:Float):Void;

	/**
	 * @brief resetRotation reset the canvas rotation.
	 */
	function resetRotation():Void;

	/**
	 * @return return true if the canvas is mirrored, false otherwise.
	 */
	function mirror():Bool;

	/**
	 * @brief setMirror turn the canvas mirroring on or off depending on @param value
	 */
	function setMirror(value:Bool):Void;

	/**
	 * @return true if the canvas is in wraparound mode, false if not. Only when OpenGL is enabled,
	 * is wraparound mode available.
	 */
	function wrapAroundMode():Bool;

	/**
	 * @brief setWrapAroundMode set wraparound mode to  @param enable
	 */
	function setWrapAroundMode(enable:Bool):Void;

	/**
	 * @return true if the canvas is in Instant Preview mode, false if not. Only when OpenGL is enabled,
	 * is Instant Preview mode available.
	 */
	function levelOfDetailMode():Bool;

	/**
	 * @brief setLevelOfDetailMode sets Instant Preview to @param enable
	 */
	function setLevelOfDetailMode(enable:Bool):Void;

	/**
	 * @return the view that holds this canvas
	 */
	function view():View;
}

