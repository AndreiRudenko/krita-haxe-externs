package krita;

import pyqt5.qtcore.QString;

/**
 * @brief The Swatch class is a thin wrapper around the KisSwatch class.
 *
 * A Swatch is a single color that is part of a palette, that has a name
 * and an id. A Swatch color can be a spot color.
 */
@:pythonImport("krita", "Swatch")
@:native("Swatch")
extern class Swatch {
	function new(?rhs:Swatch);

	function name():QString;
	function setName(name:QString):Void;

	function id():QString;
	function setId(id:QString):Void;

	function color():ManagedColor;
	function setColor(color:ManagedColor):Void;

	function spotColor():Bool;
	function setSpotColor(spotColor:Bool):Void;

	function isValid():Bool;
}

