package krita;

import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QStringList;

/**
 * @brief The Palette class
 * Palette is a resource object that stores organised color data.
 * It's purpose is to allow artists to save colors and store them.
 *
 * An example for printing all the palettes and the entries:
 *
 * @code
import sys
from krita import *

resources = Application.resources("palette")

for (k, v) in resources.items():
    print(k)
    palette = Palette(v)
    for x in range(palette.numberOfEntries()):
        entry = palette.colorSetEntryByIndex(x)
        c = palette.colorForEntry(entry);
        print(x, entry.name(), entry.id(), entry.spotColor(), c.toQString())
 * @endcode
 */
@:pythonImport("krita", "Palette")
@:native("Palette")
extern class Palette extends QObject {
	function new(resource:Resource);

    /**
     * @brief numberOfEntries
     * @return
     */
	function numberOfEntries():Int;

    /**
     * @brief columnCount
     * @return the amount of columns this palette is set to use.
     */
	function columnCount():Int;

    /**
     * @brief setColumnCount
     * Set the amount of columns this palette should use.
     */
	function setColumnCount(columns:Int):Void;

    /**
     * @brief comment
     * @return the comment or description associated with the palette.
     */
	function comment():QString;

    /**
     * @brief setComment
     * set the comment or description associated with the palette.
     * @param comment
     */
	function setComment(comment:QString):Void;

    /**
     * @brief groupNames
     * @return the list of group names. This is list is in the order these groups are in the file.
     */
	function groupNames():QStringList;

    /**
     * @brief addGroup
     * @param name of the new group
     * @return whether adding the group was successful.
     */
	function addGroup(name:QString):Bool;

    /**
     * @brief removeGroup
     * @param name the name of the group to remove.
     * @param keepColors whether or not to delete all the colors inside, or to move them to the default group.
     * @return
     */
	function removeGroup(name:QString, ?keepColors:Bool):Bool;

    /**
     * @brief colorsCountTotal
     * @return the total amount of entries in the whole group
     */
	function colorsCountTotal():Int;

    /**
     * @brief colorSetEntryByIndex
     * get the colorsetEntry from the global index.
     * @param index the global index
     * @return the colorset entry
     */
	function colorSetEntryByIndex(index:Int):Swatch;

    /**
     * @brief colorSetEntryFromGroup
     * @param index index in the group.
     * @param groupName the name of the group to get the color from.
     * @return the colorsetentry.
     */
	function colorSetEntryFromGroup(index:Int, groupName:QString):Swatch;

    /**
     * @brief addEntry
     * add an entry to a group. Gets appended to the end.
     * @param entry the entry
     * @param groupName the name of the group to add to.
     */
	function addEntry(entry:Swatch, ?groupName:QString):Void;

    /**
     * @brief removeEntry
     * remove the entry at @p index from the group @p groupName.
     */
	function removeEntry(index:Int, groupName:QString):Void;

    /**
     * @brief changeGroupName
     * change the group name.
     * @param oldGroupName the old groupname to change.
     * @param newGroupName the new name to change it into.
     * @return whether successful. Reasons for failure include not knowing have oldGroupName
     */
	function changeGroupName(oldGroupName:QString, newGroupName:QString):Bool;

    /**
     * @brief moveGroup
     * move the group to before groupNameInsertBefore.
     * @param groupName group to move.
     * @param groupNameInsertBefore group to inset before.
     * @return whether successful. Reasons for failure include either group not existing.
     */
	function moveGroup(groupName:QString, ?groupNameInsertBefore:QString):Bool;

    /**
     * @brief save
     * save the palette
     * @return whether it was successful.
     */
	function save():Bool;
}

