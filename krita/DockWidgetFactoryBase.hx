package krita;

import pyqt5.qtcore.QString;

/**
 * @brief The DockWidgetFactoryBase class is the base class for plugins that want
 * to add a dock widget to every window. You do not need to implement this class
 * yourself, but create a DockWidget implementation and then add the DockWidgetFactory
 * to the Krita instance like this:
 *
 * @code
 * class HelloDocker(DockWidget):
 *   def __init__(self):
 *       super().__init__()
 *       label = QLabel("Hello", self)
 *       self.setWidget(label)
 *       self.label = label
 *
 * def canvasChanged(self, canvas):
 *       self.label.setText("Hellodocker: canvas changed");
 *
 * Application.addDockWidgetFactory(DockWidgetFactory("hello", DockWidgetFactoryBase.DockRight, HelloDocker))
 *
 * @endcode
 */
@:pythonImport("krita", "DockWidgetFactoryBase")
@:native("DockWidgetFactoryBase")
extern class DockWidgetFactoryBase {
	// @:overload(function():DockWidgetFactoryBase {})
	// function new(_id:QString, _dockPosition:DockPosition);
	@:overload(function (_id:QString, ?_dockPosition:Dynamic):DockWidgetFactoryBase {})
	function new();

	function id():QString;

	// function defaultDockPosition():DockPosition;
	function defaultDockPosition():Dynamic;
}

