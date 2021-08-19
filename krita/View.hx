package krita;

import pyqt5.qtgui.QIcon;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QObject;
import pyqt5.qtcore.QString;

/**
 * View represents one view on a document. A document can be
 * shown in more than one view at a time.
 */
@:pythonImport("krita", "View")
@:native("View")
extern class View extends QObject {
    /**
	* @return the window this view is shown in.
	*/
	function window():Window;

    /**
	* @return the document this view is showing.
	*/
	function document():Document;

    /**
	* Reset the view to show @p document.
	*/
	function setDocument(document:Document):Void;

    /**
	* @return true if the current view is visible, false if not.
	*/
	function visible():Bool;

    /**
	* Make the current view visible.
	*/
	function setVisible():Void;

    /**
	* @return the canvas this view is showing. The canvas controls
	* things like zoom and rotation.
	*/
	function canvas():Canvas;

    /**
	* @brief activateResource activates the given resource.
	* @param resource: a pattern, gradient or paintop preset
	*/
	function activateResource(resource:Resource):Void;

    /**
	* @brief foregroundColor allows access to the currently active color.
	* This is nominally per canvas/view, but in practice per mainwindow.
	* @code
color = Application.activeWindow().activeView().foregroundColor()
components = color.components()
components[0] = 1.0
components[1] = 0.6
components[2] = 0.7
color.setComponents(components)
Application.activeWindow().activeView().setForeGroundColor(color)
	* @endcode
	*/
	function foregroundColor():ManagedColor;
	function setForeGroundColor(color:ManagedColor):Void;

	function backgroundColor():ManagedColor;
	function setBackGroundColor(color:ManagedColor):Void;

	function currentBrushPreset():Resource;
	function setCurrentBrushPreset(resource:Resource):Void;

	function currentPattern():Resource;
	function setCurrentPattern(resource:Resource):Void;

	function currentGradient():Resource;
	function setCurrentGradient(resource:Resource):Void;

	function currentBlendingMode():QString;
	function setCurrentBlendingMode(blendingMode:QString):Void;

	function HDRExposure():Float;
	function setHDRExposure(exposure:Float):Void;

	function HDRGamma():Float;
	function setHDRGamma(gamma:Float):Void;

	function paintingOpacity():Float;
	function setPaintingOpacity(opacity:Float):Void;

	function brushSize():Float;
	function setBrushSize(brushSize:Float):Void;

	function paintingFlow():Float;
	function setPaintingFlow(flow:Float):Void;

    /**
	* @brief showFloatingMessage displays a floating message box on the top-left corner of the canvas
	* @param message: Message to be displayed inside the floating message box
	* @param icon: Icon to be displayed inside the message box next to the message string
	* @param timeout: Milliseconds until the message box disappears
	* @param priority: 0 = High, 1 = Medium, 2 = Low. Higher priority
	* messages will be displayed in place of lower priority messages
	*/
	function showFloatingMessage(message:QString, icon:QIcon, timeout:Int, priority:Int):Void;

    /**
	* @brief selectedNodes returns a list of Nodes that are selected in this view.
	*
	*
@code
from krita import *
w = Krita.instance().activeWindow()
v = w.activeView()
selected_nodes = v.selectedNodes()
print(selected_nodes)
@endcode
	*
	*
	* @return a list of Node objects which may be empty.
	*/
	function selectedNodes():QList<Node>;
}

