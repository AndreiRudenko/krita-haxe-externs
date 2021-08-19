package krita;

import pyqt5.qtwidgets.QDockWidget;

/**
 * DockWidget is the base class for custom Dockers. Dockers are created by a
 * factory class which needs to be registered by calling Application.addDockWidgetFactory:
 *
 * @code
 * class HelloDocker(DockWidget):
 *   def __init__(self):
 *       super().__init__()
 *       label = QLabel("Hello", self)
 *       self.setWidget(label)
 *       self.label = label
 *       self.setWindowTitle("Hello Docker")
 *
 * def canvasChanged(self, canvas):
 *       self.label.setText("Hellodocker: canvas changed");
 *
 * Application.addDockWidgetFactory(DockWidgetFactory("hello", DockWidgetFactoryBase.DockRight, HelloDocker))
 *
 * @endcode
 *
 * One docker per window will be created, not one docker per canvas or view. When the user
 * switches between views/canvases, canvasChanged will be called. You can override that
 * method to reset your docker's internal state, if necessary.
 */
@:pythonImport("krita", "DockWidget")
@:native("DockWidget")
extern class DockWidget extends QDockWidget {
	function new();

    /**
     * @@return the canvas object that this docker is currently associated with
     */
	function canvas():Canvas;

    /**
     * @brief canvasChanged is called whenever the current canvas is changed
     * in the mainwindow this dockwidget instance is shown in.
     * @param canvas The new canvas.
     */
	private function canvasChanged(canvas:Canvas):Void;
}

