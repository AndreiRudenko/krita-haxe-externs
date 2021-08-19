package krita;

import pyqt5.qtcore.QRect;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;

/**
 * A Channel represents a single channel in a Node. Krita does not
 * use channels to store local selections: these are strictly the
 * color and alpha channels.
 */
@:pythonImport("krita", "Channel")
@:native("Channel")
extern class Channel extends QObject {
	function new();

    /**
     * @brief visible checks whether this channel is visible in the node
     * @return the status of this channel
     */
	function visible():Bool;

    /**
     * @brief setvisible set the visibility of the channel to the given value.
     */
	function setVisible(value:Bool):Void;

    /**
     * @return the name of the channel
     */
	function name():QString;

    /**
     * @returns the position of the first byte of the channel in the pixel
     */
	function position():Int;

    /**
     * @return the number of bytes this channel takes
     */
	function channelSize():Int;

    /**
     * @return the exact bounds of the channel. This can be smaller than the bounds of the Node this channel is part of.
     */
	function bounds():QRect;

    /**
     * Read the values of the channel into the a byte array for each pixel in the rect from the Node this channel is part of, and returns it.
     *
     * Note that if Krita is built with OpenEXR and the Node has the 16 bits floating point channel depth type, Krita returns
     * 32 bits float for every channel; the libkis scripting API does not support half.
     */
	function pixelData(rect:QRect):QByteArray;

    /**
     * @brief setPixelData writes the given data to the relevant channel in the Node. This is only possible for Nodes
     * that have a paintDevice, so nothing will happen when trying to write to e.g. a group layer.
     *
     * Note that if Krita is built with OpenEXR and the Node has the 16 bits floating point channel depth type, Krita expects
     * to be given a 4 byte, 32 bits float for every channel; the libkis scripting API does not support half.
     *
     * @param value a byte array with exactly enough bytes.
     * @param rect the rectangle to write the bytes into
     */
	function setPixelData(value:QByteArray, rect:QRect):Void;
}

