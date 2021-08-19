package pyqt5.qtcore;

import pyqt5.qtcore.QString;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtcore.QByteArray;
import pyqt5.qtcore.QStringList;
import pyqt5.qtcore.QUrlQuery;
import pyqt5.qtcore.QList;

typedef QUrlComponentFormattingOptions = QFlags<QUrlComponentFormattingOption>;
typedef QUrlUserInputResolutionOptions = QFlags<QUrlUserInputResolutionOption>;

@:pythonImport("PyQt5.QtCore", "QUrl")
@:native("QUrl")
extern class QUrl {
	static function fromLocalFile(localfile:QString):QUrl;
	static function fromEncoded(u:QByteArray, ?mode:QUrlParsingMode):QUrl;
	static function fromPercentEncoding(?v:QByteArray):QString;
	static function toPercentEncoding(input:QString, ?exclude:QByteArray, ?include:QByteArray):QByteArray;
	static function fromAce(?v:QByteArray):QString;
	static function toAce(?v:QString):QByteArray;
	static function idnWhitelist():QStringList;
	static function setIdnWhitelist(?v:QStringList):Void;
	@:overload(function(userInput:QString, workingDirectory:QString, ?options:QUrlUserInputResolutionOptions):QUrl {})
	static function fromUserInput(userInput:QString):QUrl;
	static function fromStringList(uris:QStringList, ?mode:QUrlParsingMode):QList<QUrl>;

	@:overload(function():QUrl {})
	@:overload(function(url:QString, ?mode:QUrlParsingMode):QUrl {})
	function new(copy:QUrl);

	function setUrl(url:QString, ?mode:QUrlParsingMode):Void;
	function isValid():Bool;
	function isEmpty():Bool;
	function clear():Void;
	function setScheme(scheme:QString):Void;
	function scheme():QString;
	function setAuthority(authority:QString, ?mode:QUrlParsingMode):Void;
	function authority(?options:QUrlComponentFormattingOptions):QString;
	function setUserInfo(userInfo:QString, ?mode:QUrlParsingMode):Void;
	function userInfo(?options:QUrlComponentFormattingOptions):QString;
	function setUserName(userName:QString, ?mode:QUrlParsingMode):Void;
	function userName(?options:QUrlComponentFormattingOptions):QString;
	function setPassword(password:QString, ?mode:QUrlParsingMode):Void;
	function password(?options:QUrlComponentFormattingOptions):QString;
	function setHost(host:QString, ?mode:QUrlParsingMode):Void;
	function host(?v:QUrlComponentFormattingOptions):QString;
	function setPort(port:Int):Void;
	function port(?defaultPort:Int):Int;
	function setPath(path:QString, ?mode:QUrlParsingMode):Void;
	function path(?options:QUrlComponentFormattingOptions):QString;
	function setFragment(fragment:QString, ?mode:QUrlParsingMode):Void;
	function fragment(?options:QUrlComponentFormattingOptions):QString;
	function resolved(relative:QUrl):QUrl;
	function isRelative():Bool;
	function isParentOf(url:QUrl):Bool;
	function toLocalFile():QString;
	function detach():Void;
	function isDetached():Bool;
	function hasQuery():Bool;
	function hasFragment():Bool;
	function errorString():QString;
	function swap(other:QUrl):Void;
	function topLevelDomain(?options:QUrlComponentFormattingOptions):QString;
	function isLocalFile():Bool;
	@:overload(function(query:QUrlQuery):Void {})
	function setQuery(query:QString, ?mode:QUrlParsingMode):Void;
	function query(?options:QUrlComponentFormattingOptions):QString;
	function fileName(?options:QUrlComponentFormattingOptions):QString;
}

@:pythonImport("PyQt5.QtCore", "ParsingMode")
@:native("QUrl.ParsingMode")
extern enum abstract QUrlParsingMode(Int) from Int to Int {
	var TolerantMode;
	var StrictMode;
	var DecodedMode;
}

@:pythonImport("PyQt5.QtCore", "UrlFormattingOption")
@:native("QUrl.UrlFormattingOption")
extern enum abstract QUrlUrlFormattingOption(Int) from Int to Int {
	var None;
	var RemoveScheme;
	var RemovePassword;
	var RemoveUserInfo;
	var RemovePort;
	var RemoveAuthority;
	var RemovePath;
	var RemoveQuery;
	var RemoveFragment;
	var PreferLocalFile;
	var StripTrailingSlash;
	var RemoveFilename;
	var NormalizePathSegments;
}

@:pythonImport("PyQt5.QtCore", "ComponentFormattingOption")
@:native("QUrl.ComponentFormattingOption")
extern enum abstract QUrlComponentFormattingOption(Int) from Int to Int {
	var PrettyDecoded;
	var EncodeSpaces;
	var EncodeUnicode;
	var EncodeDelimiters;
	var EncodeReserved;
	var DecodeReserved;
	var FullyEncoded;
	var FullyDecoded;
}

@:pythonImport("PyQt5.QtCore", "UserInputResolutionOption")
@:native("QUrl.UserInputResolutionOption")
extern enum abstract QUrlUserInputResolutionOption(Int) from Int to Int {
	var DefaultResolution;
	var AssumeLocalFile;
}

