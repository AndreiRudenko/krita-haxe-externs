package krita;

/**
 * @brief The CloneLayer class
 * A clone layer is a layer that takes a reference inside the image
 * and shows the exact same pixeldata.
 *
 * If the original is updated, the clone layer will update too.
 */
@:pythonImport("krita", "CloneLayer")
@:native("CloneLayer")
extern class CloneLayer extends Node {
}

