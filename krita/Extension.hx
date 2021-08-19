package krita;

import pyqt5.qtcore.QObject;

/**
 * An Extension is the base for classes that extend Krita. An Extension
 * is loaded on startup, when the setup() method will be executed.
 *
 * The extension instance should be added to the Krita Application object
 * using Krita.instance().addViewExtension or Application.addViewExtension
 * or Scripter.addViewExtension.
 *
 * Example:
 *
 * @code
 * import sys
 * from PyQt5.QtGui import *
 * from PyQt5.QtWidgets import *
 * from krita import *
 * class HelloExtension(Extension):
 *
 * def __init__(self, parent):
 *     super().__init__(parent)
 *
 * def hello(self):
 *     QMessageBox.information(QWidget(), "Test", "Hello! This is Krita " + Application.version())
 *
 * def setup(self):
 *     qDebug("Hello Setup")
 *
 * def createActions(self, window)
 *     action = window.createAction("hello")
 *     action.triggered.connect(self.hello)
 *
 * Scripter.addExtension(HelloExtension(Krita.instance()))
 *
 * @endcode
 */
@:pythonImport("krita", "Extension")
@:native("Extension")
extern class Extension extends QObject {
	function new(?parent:QObject);

	/**
	 * Override this function to setup your Extension. You can use it to integrate
	 * with the Krita application instance.
	 */
	private function setup():Void;

	private function createActions(window:Window):Void;
}

