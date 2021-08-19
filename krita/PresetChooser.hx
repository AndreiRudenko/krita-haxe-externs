package krita;

import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.QSignal;

/**
 * @brief The PresetChooser widget wraps the KisPresetChooser widget.
 * The widget provides for selecting brush presets. It has a tagging
 * bar and a filter field. It is not automatically synchronized with 
 * the currently selected preset in the current Windows.
 */
@:pythonImport("krita", "PresetChooser")
@:native("PresetChooser")
extern class PresetChooser {
	function new(?parent:QWidget);

	/**
	 * Make the given preset active.
	 */
	function setCurrentPreset(resource:Resource):Void;

	/**
	 * @return a Resource wrapper around the currently selected
	 * preset. 
	 */
	function currentPreset():Resource;

	/**
	 * Emitted whenever a user selects the given preset.
	 */
	var presetSelected:QSignal1<Resource>;

	/**
	 * Emitted whenever a user clicks on the given preset.
	 */
	var presetClicked:QSignal1<Resource>;
}

