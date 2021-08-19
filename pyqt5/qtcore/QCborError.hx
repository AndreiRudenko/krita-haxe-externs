package pyqt5.qtcore;

import pyqt5.qtcore.QString;

@:pythonImport("PyQt5.QtCore", "QCborSimpleType")
@:native("QCborError.QCborSimpleType")
extern enum abstract QCborErrorQCborSimpleType(Int) from Int to Int {
	var False;
	var True;
	var Null;
	var Undefined;
}

@:pythonImport("PyQt5.QtCore", "QCborError")
@:native("QCborError")
extern class QCborError {
	function code():QCborErrorCode;
	function toString():QString;
}

@:pythonImport("PyQt5.QtCore", "Code")
@:native("QCborError.Code")
extern enum abstract QCborErrorCode(Int) from Int to Int {
	var UnknownError;
	var AdvancePastEnd;
	var InputOutputError;
	var GarbageAtEnd;
	var EndOfFile;
	var UnexpectedBreak;
	var UnknownType;
	var IllegalType;
	var IllegalNumber;
	var IllegalSimpleType;
	var InvalidUtf8String;
	var DataTooLarge;
	var NestingTooDeep;
	var UnsupportedType;
	var NoError;
}

@:pythonImport("PyQt5.QtCore", "QCborKnownTags")
@:native("QCborError.QCborKnownTags")
extern enum abstract QCborErrorQCborKnownTags(Int) from Int to Int {
	var DateTimeString;
	var UnixTime_t;
	var PositiveBignum;
	var NegativeBignum;
	var Decimal;
	var Bigfloat;
	var COSE_Encrypt0;
	var COSE_Mac0;
	var COSE_Sign1;
	var ExpectedBase64url;
	var ExpectedBase64;
	var ExpectedBase16;
	var EncodedCbor;
	var Url;
	var Base64url;
	var Base64;
	var RegularExpression;
	var MimeMessage;
	var Uuid;
	var COSE_Encrypt;
	var COSE_Mac;
	var COSE_Sign;
	var Signature;
}

