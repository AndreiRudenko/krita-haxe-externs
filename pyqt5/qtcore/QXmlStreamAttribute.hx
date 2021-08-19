package pyqt5.qtcore;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.QVector;
import pyqt5.qtcore.QIODevice;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QXmlStreamAttribute;
import pyqt5.qtcore.QTextCodec;

typedef QXmlStreamNamespaceDeclarations = QVector<QXmlStreamNamespaceDeclaration>;
typedef QXmlStreamNotationDeclarations = QVector<QXmlStreamNotationDeclaration>;
typedef QXmlStreamEntityDeclarations = QVector<QXmlStreamEntityDeclaration>;

@:pythonImport("PyQt5.QtCore", "QXmlStreamAttribute")
@:native("QXmlStreamAttribute")
extern class QXmlStreamAttribute {
	@:overload(function():QXmlStreamAttribute {})
	@:overload(function(qualifiedName:QString, value:QString):QXmlStreamAttribute {})
	@:overload(function(namespaceUri:QString, name:QString, value:QString):QXmlStreamAttribute {})
	function new(?v:QXmlStreamAttribute);

	function namespaceUri():QStringRef;
	function name():QStringRef;
	function qualifiedName():QStringRef;
	function prefix():QStringRef;
	function value():QStringRef;
	function isDefault():Bool;
}

@:pythonImport("PyQt5.QtCore", "QXmlStreamAttributes")
@:native("QXmlStreamAttributes")
extern class QXmlStreamAttributes {
	function new();

	@:overload(function(qualifiedName:QString):QStringRef {})
	function value(namespaceUri:QString, name:QString):QStringRef;
	@:overload(function(qualifiedName:QString, value:QString):Void {})
	@:overload(function(attribute:QXmlStreamAttribute):Void {})
	function append(namespaceUri:QString, name:QString, value:QString):Void;
	@:overload(function(namespaceUri:QString, name:QString):Bool {})
	function hasAttribute(qualifiedName:QString):Bool;
	function at(i:Int):QXmlStreamAttribute;
	function clear():Void;
	function contains(value:QXmlStreamAttribute):Bool;
	@:overload(function():Int {})
	function count(value:QXmlStreamAttribute):Int;
	function data():Void;
	function fill(value:QXmlStreamAttribute, ?size:Int):Void;
	function first():QXmlStreamAttribute;
	function indexOf(value:QXmlStreamAttribute, ?from:Int):Int;
	function insert(i:Int, value:QXmlStreamAttribute):Void;
	function isEmpty():Bool;
	function last():QXmlStreamAttribute;
	function lastIndexOf(value:QXmlStreamAttribute, ?from:Int):Int;
	function prepend(value:QXmlStreamAttribute):Void;
	@:overload(function(i:Int, count:Int):Void {})
	function remove(i:Int):Void;
	function replace(i:Int, value:QXmlStreamAttribute):Void;
	function size():Int;
}

@:pythonImport("PyQt5.QtCore", "QXmlStreamNamespaceDeclaration")
@:native("QXmlStreamNamespaceDeclaration")
extern class QXmlStreamNamespaceDeclaration {
	@:overload(function():QXmlStreamNamespaceDeclaration {})
	@:overload(function(?v:QXmlStreamNamespaceDeclaration):QXmlStreamNamespaceDeclaration {})
	function new(prefix:QString, namespaceUri:QString);

	function prefix():QStringRef;
	function namespaceUri():QStringRef;
}

@:pythonImport("PyQt5.QtCore", "QXmlStreamNotationDeclaration")
@:native("QXmlStreamNotationDeclaration")
extern class QXmlStreamNotationDeclaration {
	@:overload(function():QXmlStreamNotationDeclaration {})
	function new(?v:QXmlStreamNotationDeclaration);

	function name():QStringRef;
	function systemId():QStringRef;
	function publicId():QStringRef;
}

@:pythonImport("PyQt5.QtCore", "QXmlStreamEntityDeclaration")
@:native("QXmlStreamEntityDeclaration")
extern class QXmlStreamEntityDeclaration {
	@:overload(function():QXmlStreamEntityDeclaration {})
	function new(?v:QXmlStreamEntityDeclaration);

	function name():QStringRef;
	function notationName():QStringRef;
	function systemId():QStringRef;
	function publicId():QStringRef;
	function value():QStringRef;
}

@:pythonImport("PyQt5.QtCore", "QXmlStreamEntityResolver")
@:native("QXmlStreamEntityResolver")
extern class QXmlStreamEntityResolver {
	function resolveUndeclaredEntity(name:QString):QString;
}

@:pythonImport("PyQt5.QtCore", "QXmlStreamReader")
@:native("QXmlStreamReader")
extern class QXmlStreamReader {
	@:overload(function():QXmlStreamReader {})
	@:overload(function(device:QIODevice):QXmlStreamReader {})
	@:overload(function(data:QByteArray):QXmlStreamReader {})
	@:overload(function(data:QString):QXmlStreamReader {})
	function new(?v:QXmlStreamReader);

	function setDevice(device:QIODevice):Void;
	function device():QIODevice;
	@:overload(function(data:QString):Void {})
	function addData(data:QByteArray):Void;
	function clear():Void;
	function atEnd():Bool;
	function readNext():QXmlStreamReaderTokenType;
	function tokenType():QXmlStreamReaderTokenType;
	function tokenString():QString;
	function setNamespaceProcessing(?v:Bool):Void;
	function namespaceProcessing():Bool;
	function isStartDocument():Bool;
	function isEndDocument():Bool;
	function isStartElement():Bool;
	function isEndElement():Bool;
	function isCharacters():Bool;
	function isWhitespace():Bool;
	function isCDATA():Bool;
	function isComment():Bool;
	function isDTD():Bool;
	function isEntityReference():Bool;
	function isProcessingInstruction():Bool;
	function isStandaloneDocument():Bool;
	function documentVersion():QStringRef;
	function documentEncoding():QStringRef;
	function lineNumber():Int;
	function columnNumber():Int;
	function characterOffset():Int;
	function attributes():QXmlStreamAttributes;
	function readElementText(?behaviour:QXmlStreamReaderReadElementTextBehaviour):QString;
	function name():QStringRef;
	function namespaceUri():QStringRef;
	function qualifiedName():QStringRef;
	function prefix():QStringRef;
	function processingInstructionTarget():QStringRef;
	function processingInstructionData():QStringRef;
	function text():QStringRef;
	function namespaceDeclarations():QXmlStreamNamespaceDeclarations;
	function addExtraNamespaceDeclaration(extraNamespaceDeclaraction:QXmlStreamNamespaceDeclaration):Void;
	function addExtraNamespaceDeclarations(extraNamespaceDeclaractions:QXmlStreamNamespaceDeclarations):Void;
	function notationDeclarations():QXmlStreamNotationDeclarations;
	function entityDeclarations():QXmlStreamEntityDeclarations;
	function dtdName():QStringRef;
	function dtdPublicId():QStringRef;
	function dtdSystemId():QStringRef;
	function raiseError(?message:QString):Void;
	function errorString():QString;
	function error():QXmlStreamReaderError;
	function hasError():Bool;
	function setEntityResolver(resolver:QXmlStreamEntityResolver):Void;
	function entityResolver():QXmlStreamEntityResolver;
	function readNextStartElement():Bool;
	function skipCurrentElement():Void;
	function entityExpansionLimit():Int;
	function setEntityExpansionLimit(limit:Int):Void;
}

@:pythonImport("PyQt5.QtCore", "QXmlStreamReader")
@:native("QXmlStreamReader")
extern enum abstract QXmlStreamReaderTokenType(Int) from Int to Int {
	var NoToken;
	var Invalid;
	var StartDocument;
	var EndDocument;
	var StartElement;
	var EndElement;
	var Characters;
	var Comment;
	var DTD;
	var EntityReference;
	var ProcessingInstruction;
}

@:pythonImport("PyQt5.QtCore", "QXmlStreamReader")
@:native("QXmlStreamReader")
extern enum abstract QXmlStreamReaderReadElementTextBehaviour(Int) from Int to Int {
	var ErrorOnUnexpectedElement;
	var IncludeChildElements;
	var SkipChildElements;
}

@:pythonImport("PyQt5.QtCore", "QXmlStreamReader")
@:native("QXmlStreamReader")
extern enum abstract QXmlStreamReaderError(Int) from Int to Int {
	var NoError;
	var UnexpectedElementError;
	var CustomError;
	var NotWellFormedError;
	var PrematureEndOfDocumentError;
}

@:pythonImport("PyQt5.QtCore", "QXmlStreamWriter")
@:native("QXmlStreamWriter")
extern class QXmlStreamWriter {
	@:overload(function():QXmlStreamWriter {})
	@:overload(function(device:QIODevice):QXmlStreamWriter {})
	@:overload(function(array:QByteArray):QXmlStreamWriter {})
	function new(?v:QXmlStreamWriter);

	function setDevice(device:QIODevice):Void;
	function device():QIODevice;
	@:overload(function(codecName:Int):Void {})
	function setCodec(codec:QTextCodec):Void;
	function codec():QTextCodec;
	function setAutoFormatting(?v:Bool):Void;
	function autoFormatting():Bool;
	function setAutoFormattingIndent(spaces:Int):Void;
	function autoFormattingIndent():Int;
	@:overload(function(namespaceUri:QString, name:QString, value:QString):Void {})
	@:overload(function(attribute:QXmlStreamAttribute):Void {})
	function writeAttribute(qualifiedName:QString, value:QString):Void;
	function writeAttributes(attributes:QXmlStreamAttributes):Void;
	function writeCDATA(text:QString):Void;
	function writeCharacters(text:QString):Void;
	function writeComment(text:QString):Void;
	function writeDTD(dtd:QString):Void;
	@:overload(function(namespaceUri:QString, name:QString):Void {})
	function writeEmptyElement(qualifiedName:QString):Void;
	@:overload(function(namespaceUri:QString, name:QString, text:QString):Void {})
	function writeTextElement(qualifiedName:QString, text:QString):Void;
	function writeEndDocument():Void;
	function writeEndElement():Void;
	function writeEntityReference(name:QString):Void;
	function writeNamespace(namespaceUri:QString, ?prefix:QString):Void;
	function writeDefaultNamespace(namespaceUri:QString):Void;
	function writeProcessingInstruction(target:QString, ?data:QString):Void;
	@:overload(function(version:QString):Void {})
	@:overload(function(version:QString, standalone:Bool):Void {})
	function writeStartDocument():Void;
	@:overload(function(namespaceUri:QString, name:QString):Void {})
	function writeStartElement(qualifiedName:QString):Void;
	function writeCurrentToken(reader:QXmlStreamReader):Void;
	function hasError():Bool;
}

