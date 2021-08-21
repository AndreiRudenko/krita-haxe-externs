package ;

import krita.DockWidget;
import krita.Canvas;

class DockerTemplate extends DockWidget {

	static var DOCKER_TITLE:String = 'Blank Template Docker';

	public function new() {
		super();
        setWindowTitle(DOCKER_TITLE);

	}

	override function canvasChanged(canvas:Canvas) {

	}

}
