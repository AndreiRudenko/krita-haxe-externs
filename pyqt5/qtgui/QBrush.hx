package pyqt5.qtgui;

import pyqt5.qtcore.Qt;
import pyqt5.qtgui.QColor;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtgui.QImage;
import pyqt5.qtcore.QVariant;
import pyqt5.qtgui.QTransform;
import pyqt5.qtcore.QPair;
import pyqt5.qtcore.QVector;
import pyqt5.qtgui.QBrush;
import pyqt5.qtcore.QPoint;

typedef QGradientStops = QVector<QPair<Float, QColor>>;

@:pythonImport("PyQt5.QtGui", "QBrush")
@:native("QBrush")
extern class QBrush {
	@:overload(function():QBrush {})
	@:overload(function(bs:QtBrushStyle):QBrush {})
	@:overload(function(color:QColor, ?style:QtBrushStyle):QBrush {})
	@:overload(function(color:QColor, pixmap:QPixmap):QBrush {})
	@:overload(function(pixmap:QPixmap):QBrush {})
	@:overload(function(image:QImage):QBrush {})
	@:overload(function(brush:QBrush):QBrush {})
	function new(variant:QVariant);

	function setStyle(?v:QtBrushStyle):Void;
	function texture():QPixmap;
	function setTexture(pixmap:QPixmap):Void;
	@:overload(function(acolor:QtGlobalColor):Void {})
	function setColor(color:QColor):Void;
	function gradient():QGradient;
	function isOpaque():Bool;
	function style():QtBrushStyle;
	function color():QColor;
	function setTextureImage(image:QImage):Void;
	function textureImage():QImage;
	function setTransform(?v:QTransform):Void;
	function transform():QTransform;
	function swap(other:QBrush):Void;
}

@:pythonImport("PyQt5.QtGui", "QGradient")
@:native("QGradient")
extern class QGradient {
	@:overload(function():QGradient {})
	function new(?v:QGradientPreset);

	function type():QGradientType;
	function spread():QGradientSpread;
	function setColorAt(pos:Float, color:QColor):Void;
	function setStops(stops:QGradientStops):Void;
	function stops():QGradientStops;
	function setSpread(aspread:QGradientSpread):Void;
	function coordinateMode():QGradientCoordinateMode;
	function setCoordinateMode(mode:QGradientCoordinateMode):Void;
}

@:pythonImport("PyQt5.QtGui", "QGradient")
@:native("QGradient")
extern enum abstract QGradientCoordinateMode(Int) from Int to Int {
	var LogicalMode;
	var StretchToDeviceMode;
	var ObjectBoundingMode;
	var ObjectMode;
}

@:pythonImport("PyQt5.QtGui", "QGradient")
@:native("QGradient")
extern enum abstract QGradientType(Int) from Int to Int {
	var LinearGradient;
	var RadialGradient;
	var ConicalGradient;
	var NoGradient;
}

@:pythonImport("PyQt5.QtGui", "QGradient")
@:native("QGradient")
extern enum abstract QGradientSpread(Int) from Int to Int {
	var PadSpread;
	var ReflectSpread;
	var RepeatSpread;
}

@:pythonImport("PyQt5.QtGui", "QGradient")
@:native("QGradient")
extern enum abstract QGradientPreset(Int) from Int to Int {
	var WarmFlame;
	var NightFade;
	var SpringWarmth;
	var JuicyPeach;
	var YoungPassion;
	var LadyLips;
	var SunnyMorning;
	var RainyAshville;
	var FrozenDreams;
	var WinterNeva;
	var DustyGrass;
	var TemptingAzure;
	var HeavyRain;
	var AmyCrisp;
	var MeanFruit;
	var DeepBlue;
	var RipeMalinka;
	var CloudyKnoxville;
	var MalibuBeach;
	var NewLife;
	var TrueSunset;
	var MorpheusDen;
	var RareWind;
	var NearMoon;
	var WildApple;
	var SaintPetersburg;
	var PlumPlate;
	var EverlastingSky;
	var HappyFisher;
	var Blessing;
	var SharpeyeEagle;
	var LadogaBottom;
	var LemonGate;
	var ItmeoBranding;
	var ZeusMiracle;
	var OldHat;
	var StarWine;
	var HappyAcid;
	var AwesomePine;
	var NewYork;
	var ShyRainbow;
	var MixedHopes;
	var FlyHigh;
	var StrongBliss;
	var FreshMilk;
	var SnowAgain;
	var FebruaryInk;
	var KindSteel;
	var SoftGrass;
	var GrownEarly;
	var SharpBlues;
	var ShadyWater;
	var DirtyBeauty;
	var GreatWhale;
	var TeenNotebook;
	var PoliteRumors;
	var SweetPeriod;
	var WideMatrix;
	var SoftCherish;
	var RedSalvation;
	var BurningSpring;
	var NightParty;
	var SkyGlider;
	var HeavenPeach;
	var PurpleDivision;
	var AquaSplash;
	var SpikyNaga;
	var LoveKiss;
	var CleanMirror;
	var PremiumDark;
	var ColdEvening;
	var CochitiLake;
	var SummerGames;
	var PassionateBed;
	var MountainRock;
	var DesertHump;
	var JungleDay;
	var PhoenixStart;
	var OctoberSilence;
	var FarawayRiver;
	var AlchemistLab;
	var OverSun;
	var PremiumWhite;
	var MarsParty;
	var EternalConstance;
	var JapanBlush;
	var SmilingRain;
	var CloudyApple;
	var BigMango;
	var HealthyWater;
	var AmourAmour;
	var RiskyConcrete;
	var StrongStick;
	var ViciousStance;
	var PaloAlto;
	var HappyMemories;
	var MidnightBloom;
	var Crystalline;
	var PartyBliss;
	var ConfidentCloud;
	var LeCocktail;
	var RiverCity;
	var FrozenBerry;
	var ChildCare;
	var FlyingLemon;
	var NewRetrowave;
	var HiddenJaguar;
	var AboveTheSky;
	var Nega;
	var DenseWater;
	var Seashore;
	var MarbleWall;
	var CheerfulCaramel;
	var NightSky;
	var MagicLake;
	var YoungGrass;
	var ColorfulPeach;
	var GentleCare;
	var PlumBath;
	var HappyUnicorn;
	var AfricanField;
	var SolidStone;
	var OrangeJuice;
	var GlassWater;
	var NorthMiracle;
	var FruitBlend;
	var MillenniumPine;
	var HighFlight;
	var MoleHall;
	var SpaceShift;
	var ForestInei;
	var RoyalGarden;
	var RichMetal;
	var JuicyCake;
	var SmartIndigo;
	var SandStrike;
	var NorseBeauty;
	var AquaGuidance;
	var SunVeggie;
	var SeaLord;
	var BlackSea;
	var GrassShampoo;
	var LandingAircraft;
	var WitchDance;
	var SleeplessNight;
	var AngelCare;
	var CrystalRiver;
	var SoftLipstick;
	var SaltMountain;
	var PerfectWhite;
	var FreshOasis;
	var StrictNovember;
	var MorningSalad;
	var DeepRelief;
	var SeaStrike;
	var NightCall;
	var SupremeSky;
	var LightBlue;
	var MindCrawl;
	var LilyMeadow;
	var SugarLollipop;
	var SweetDessert;
	var MagicRay;
	var TeenParty;
	var FrozenHeat;
	var GagarinView;
	var FabledSunset;
	var PerfectBlue;
	var NumPresets;
}

@:pythonImport("PyQt5.QtGui", "QLinearGradient")
@:native("QLinearGradient")
extern class QLinearGradient extends QGradient {
	@:overload(function():QLinearGradient {})
	@:overload(function(start:QPointF, finalStop:QPointF):QLinearGradient {})
	function new(xStart:Float, yStart:Float, xFinalStop:Float, yFinalStop:Float);

	function start():QPointF;
	function finalStop():QPointF;
	@:overload(function(x:Float, y:Float):Void {})
	function setStart(start:QPointF):Void;
	@:overload(function(x:Float, y:Float):Void {})
	function setFinalStop(stop:QPointF):Void;
}

@:pythonImport("PyQt5.QtGui", "QRadialGradient")
@:native("QRadialGradient")
extern class QRadialGradient extends QGradient {
	@:overload(function():QRadialGradient {})
	@:overload(function(center:QPointF, radius:Float, focalPoint:QPointF):QRadialGradient {})
	@:overload(function(center:QPointF, centerRadius:Float, focalPoint:QPointF, focalRadius:Float):QRadialGradient {})
	@:overload(function(center:QPointF, radius:Float):QRadialGradient {})
	@:overload(function(cx:Float, cy:Float, radius:Float, fx:Float, fy:Float):QRadialGradient {})
	@:overload(function(cx:Float, cy:Float, centerRadius:Float, fx:Float, fy:Float, focalRadius:Float):QRadialGradient {})
	function new(cx:Float, cy:Float, radius:Float);

	function center():QPointF;
	function focalPoint():QPointF;
	function radius():Float;
	@:overload(function(x:Float, y:Float):Void {})
	function setCenter(center:QPointF):Void;
	@:overload(function(x:Float, y:Float):Void {})
	function setFocalPoint(focalPoint:QPointF):Void;
	function setRadius(radius:Float):Void;
	function centerRadius():Float;
	function setCenterRadius(radius:Float):Void;
	function focalRadius():Float;
	function setFocalRadius(radius:Float):Void;
}

@:pythonImport("PyQt5.QtGui", "QConicalGradient")
@:native("QConicalGradient")
extern class QConicalGradient extends QGradient {
	@:overload(function():QConicalGradient {})
	@:overload(function(center:QPointF, startAngle:Float):QConicalGradient {})
	function new(cx:Float, cy:Float, startAngle:Float);

	function center():QPointF;
	function angle():Float;
	@:overload(function(x:Float, y:Float):Void {})
	function setCenter(center:QPointF):Void;
	function setAngle(angle:Float):Void;
}

