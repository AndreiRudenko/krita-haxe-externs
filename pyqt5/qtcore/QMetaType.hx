package pyqt5.qtcore;

import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QByteArray;

typedef QMetaTypeTypeFlags = QFlags<QMetaTypeTypeFlag>;

@:pythonImport("PyQt5.QtCore", "QMetaType")
@:native("QMetaType")
extern class QMetaType {
	static function type(typeName:Int):Int;
	static function isRegistered(type:Int):Bool;
	static function typeFlags(type:Int):QMetaTypeTypeFlags;

	@:overload(function(?type:Int):QMetaType {})
	function new(other:QMetaType);

	function flags():QMetaTypeTypeFlags;
	function isValid():Bool;
	function isRegistered():Bool;
	function id():Int;
	function name():QByteArray;
}

@:pythonImport("PyQt5.QtCore", "Type")
@:native("QMetaType.Type")
extern enum abstract QMetaTypeType(Int) from Int to Int {
	var UnknownType;
	var Void;
	var Bool;
	var Int;
	var UInt;
	var LongLong;
	var ULongLong;
	var Double;
	var QChar;
	var QVariantMap;
	var QVariantList;
	var QVariantHash;
	var QString;
	var QStringList;
	var QByteArray;
	var QBitArray;
	var QDate;
	var QTime;
	var QDateTime;
	var QUrl;
	var QLocale;
	var QRect;
	var QRectF;
	var QSize;
	var QSizeF;
	var QLine;
	var QLineF;
	var QPoint;
	var QPointF;
	var QRegExp;
	var LastCoreType;
	var FirstGuiType;
	var QFont;
	var QPixmap;
	var QBrush;
	var QColor;
	var QPalette;
	var QIcon;
	var QImage;
	var QPolygon;
	var QRegion;
	var QBitmap;
	var QCursor;
	var QSizePolicy;
	var QKeySequence;
	var QPen;
	var QTextLength;
	var QTextFormat;
	var QMatrix;
	var QTransform;
	var VoidStar;
	var Long;
	var Short;
	var Char;
	var ULong;
	var UShort;
	var UChar;
	var Float;
	var QObjectStar;
	var QMatrix4x4;
	var QVector2D;
	var QVector3D;
	var QVector4D;
	var QQuaternion;
	var QEasingCurve;
	var QVariant;
	var QUuid;
	var QModelIndex;
	var QPolygonF;
	var SChar;
	var QRegularExpression;
	var QJsonValue;
	var QJsonObject;
	var QJsonArray;
	var QJsonDocument;
	var QByteArrayList;
	var QPersistentModelIndex;
	var QCborSimpleType;
	var QCborValue;
	var QCborArray;
	var QCborMap;
	var QColorSpace;
	var User;
}

@:pythonImport("PyQt5.QtCore", "TypeFlag")
@:native("QMetaType.TypeFlag")
extern enum abstract QMetaTypeTypeFlag(Int) from Int to Int {
	var NeedsConstruction;
	var NeedsDestruction;
	var MovableType;
	var PointerToQObject;
	var IsEnumeration;
}

