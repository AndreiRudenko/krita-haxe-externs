package krita;

import pyqt5.qtcore.QSignal;
import pyqt5.qtwidgets.QWidget;

/**
 * @class PaletteView
 * @brief The PaletteView class is a wrapper around a MVC method for handling
 * palettes. This class shows a nice widget that can drag and drop, edit colors in a colorset
 * and will handle adding and removing entries if you'd like it to.
 */
@:pythonImport("krita", "PaletteView")
@:native("PaletteView")
extern class PaletteView extends QWidget {
	function new(?parent:QWidget);

	/**
	 * @brief setPalette
	 * Set a new palette.
	 * @param palette
	 */
	function setPalette(palette:Palette):Void;

	/**
	 * @brief addEntryWithDialog
	 * This gives a simple dialog for adding colors, with options like
	 * adding name, id, and to which group the color should be added.
	 * @param color the default color to add
	 * @return whether it was successful.
	 */
	function addEntryWithDialog(color:ManagedColor):Bool;

	/**
	 * @brief addGroupWithDialog
	 * gives a little dialog to ask for the desired groupname.
	 * @return whether this was successful.
	 */
	function addGroupWithDialog():Bool;

	/**
	 * @brief removeSelectedEntryWithDialog
	 * removes the selected entry. If it is a group, it pop up a dialog
	 * asking whether the colors should also be removed.
	 * @return whether this was successful
	 */
	function removeSelectedEntryWithDialog():Bool;

	/**
	 * @brief trySelectClosestColor
	 * tries to select the closest color to the one given.
	 * It does not force a change on the active color.
	 * @param color the color to compare to.
	 */
	function trySelectClosestColor(color:ManagedColor):Void;

	/**
	 * @brief entrySelectedForeGround
	 * fires when a swatch is selected with leftclick.
	 * @param entry
	 */
	var entrySelectedForeGround:QSignal1<Swatch>;

	/**
	 * @brief entrySelectedBackGround
	 * fires when a swatch is selected with rightclick.
	 * @param entry
	 */
	var entrySelectedBackGround:QSignal1<Swatch>;

}

