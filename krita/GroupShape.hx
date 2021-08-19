package krita;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QString;

/**
 * @brief The GroupShape class
 * A group shape is a vector object with child shapes.
 */
@:pythonImport("krita", "GroupShape")
@:native("GroupShape")
extern class GroupShape extends Shape {
	function new(?parent:QObject);

    /**
     * @brief type returns the type.
     * @return "groupshape"
     */
	function type():QString;

    /**
     * @brief children
     * @return the child shapes of this group shape.
     */
	function children():QList<Shape>;
}

