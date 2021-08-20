package pyqt5.qtcore;

import pyqt5.qtcore.QDataStream;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QHash;

typedef QVariantList = QList<QVariant>;
typedef QVariantHash = QHash<QString, QVariant>;
typedef QVariant = Dynamic;

@:pythonImport("PyQt5.QtCore", "QVariant")
@:native("QVariant")
extern enum abstract QVariantType(Int) from Int to Int {
	var Invalid;
	var Bool;
	var Int;
	var UInt;
	var LongLong;
	var ULongLong;
	var Double;
	var Char;
	var Map;
	var List;
	var String;
	var StringList;
	var ByteArray;
	var BitArray;
	var Date;
	var Time;
	var DateTime;
	var Url;
	var Locale;
	var Rect;
	var RectF;
	var Size;
	var SizeF;
	var Line;
	var LineF;
	var Point;
	var PointF;
	var RegExp;
	var Font;
	var Pixmap;
	var Brush;
	var Color;
	var Palette;
	var Icon;
	var Image;
	var Polygon;
	var Region;
	var Bitmap;
	var Cursor;
	var SizePolicy;
	var KeySequence;
	var Pen;
	var TextLength;
	var TextFormat;
	var Matrix;
	var Transform;
	var Hash;
	var Matrix4x4;
	var Vector2D;
	var Vector3D;
	var Vector4D;
	var Quaternion;
	var EasingCurve;
	var Uuid;
	var ModelIndex;
	var PolygonF;
	var RegularExpression;
	var PersistentModelIndex;
	var UserType;
}

