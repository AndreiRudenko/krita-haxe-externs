package pyqt5.qtwidgets;

import pyqt5.qtwidgets.QDialog;
import pyqt5.qtcore.QGlobal;
import pyqt5.qtwidgets.QWidget;
import pyqt5.qtcore.Qt;
import pyqt5.qtcore.QList;
import pyqt5.qtcore.QString;
import pyqt5.qtcore.QVariant;
import pyqt5.qtwidgets.QAbstractButton;
import pyqt5.qtgui.QPixmap;
import pyqt5.qtcore.QSize;
import pyqt5.qtcore.QSignal;
import pyqt5.qtcore.QEvent;
import pyqt5.qtgui.QInputEvent;

typedef QWizardWizardOptions = QFlags<QWizardWizardOption>;

@:pythonImport("PyQt5.QtWidgets", "QWizard")
@:native("QWizard")
extern class QWizard extends QDialog {
	var currentIdChanged:QSignal1<Int>;
	var helpRequested:QSignal0;
	var customButtonClicked:QSignal1<Int>;
	var pageAdded:QSignal1<Int>;
	var pageRemoved:QSignal1<Int>;

	function new(?parent:QWidget, ?flags:QtWindowFlags);

	function addPage(page:QWizardPage):Int;
	function setPage(id:Int, page:QWizardPage):Void;
	function page(id:Int):QWizardPage;
	function hasVisitedPage(id:Int):Bool;
	function visitedPages():QList<Int>;
	function setStartId(id:Int):Void;
	function startId():Int;
	function currentPage():QWizardPage;
	function currentId():Int;
	function validateCurrentPage():Bool;
	function nextId():Int;
	function setField(name:QString, value:QVariant):Void;
	function field(name:QString):QVariant;
	function setWizardStyle(style:QWizardWizardStyle):Void;
	function wizardStyle():QWizardWizardStyle;
	function setOption(option:QWizardWizardOption, ?on:Bool):Void;
	function testOption(option:QWizardWizardOption):Bool;
	function setOptions(options:QWizardWizardOptions):Void;
	function options():QWizardWizardOptions;
	function setButtonText(which:QWizardWizardButton, text:QString):Void;
	function buttonText(which:QWizardWizardButton):QString;
	function setButtonLayout(layout:QList<QWizardWizardButton>):Void;
	function setButton(which:QWizardWizardButton, button:QAbstractButton):Void;
	function button(which:QWizardWizardButton):QAbstractButton;
	function setTitleFormat(format:QtTextFormat):Void;
	function titleFormat():QtTextFormat;
	function setSubTitleFormat(format:QtTextFormat):Void;
	function subTitleFormat():QtTextFormat;
	function setPixmap(which:QWizardWizardPixmap, pixmap:QPixmap):Void;
	function pixmap(which:QWizardWizardPixmap):QPixmap;
	function setDefaultProperty(className:Int, property:Int, changedSignal:Dynamic):Void;
	function setVisible(visible:Bool):Void;
	function sizeHint():QSize;
	function back():Void;
	function next():Void;
	function restart():Void;
	function event(event:QEvent):Bool;
	function resizeEvent(event:QResizeEvent):Void;
	function paintEvent(event:QPaintEvent):Void;
	function done(result:Int):Void;
	function initializePage(id:Int):Void;
	function cleanupPage(id:Int):Void;
	function removePage(id:Int):Void;
	function pageIds():QList<Int>;
	function setSideWidget(widget:QWidget):Void;
	function sideWidget():QWidget;
	function visitedIds():QList<Int>;
}

@:pythonImport("PyQt5.QtWidgets", "QWizard")
@:native("QWizard")
extern enum abstract QWizardWizardButton(Int) from Int to Int {
	var BackButton;
	var NextButton;
	var CommitButton;
	var FinishButton;
	var CancelButton;
	var HelpButton;
	var CustomButton1;
	var CustomButton2;
	var CustomButton3;
	var Stretch;
}

@:pythonImport("PyQt5.QtWidgets", "QWizard")
@:native("QWizard")
extern enum abstract QWizardWizardPixmap(Int) from Int to Int {
	var WatermarkPixmap;
	var LogoPixmap;
	var BannerPixmap;
	var BackgroundPixmap;
}

@:pythonImport("PyQt5.QtWidgets", "QWizard")
@:native("QWizard")
extern enum abstract QWizardWizardStyle(Int) from Int to Int {
	var ClassicStyle;
	var ModernStyle;
	var MacStyle;
	var AeroStyle;
}

@:pythonImport("PyQt5.QtWidgets", "QWizard")
@:native("QWizard")
extern enum abstract QWizardWizardOption(Int) from Int to Int {
	var IndependentPages;
	var IgnoreSubTitles;
	var ExtendedWatermarkPixmap;
	var NoDefaultButton;
	var NoBackButtonOnStartPage;
	var NoBackButtonOnLastPage;
	var DisabledBackButtonOnLastPage;
	var HaveNextButtonOnLastPage;
	var HaveFinishButtonOnEarlyPages;
	var NoCancelButton;
	var CancelButtonOnLeft;
	var HaveHelpButton;
	var HelpButtonOnRight;
	var HaveCustomButton1;
	var HaveCustomButton2;
	var HaveCustomButton3;
	var NoCancelButtonOnLastPage;
}

@:pythonImport("PyQt5.QtWidgets", "QWizardPage")
@:native("QWizardPage")
extern class QWizardPage extends QWidget {
	var completeChanged:QSignal0;

	function new(?parent:QWidget);

	function setTitle(title:QString):Void;
	function title():QString;
	function setSubTitle(subTitle:QString):Void;
	function subTitle():QString;
	function setPixmap(which:QWizardWizardPixmap, pixmap:QPixmap):Void;
	function pixmap(which:QWizardWizardPixmap):QPixmap;
	function setFinalPage(finalPage:Bool):Void;
	function isFinalPage():Bool;
	function setCommitPage(commitPage:Bool):Void;
	function isCommitPage():Bool;
	function setButtonText(which:QWizardWizardButton, text:QString):Void;
	function buttonText(which:QWizardWizardButton):QString;
	function initializePage():Void;
	function cleanupPage():Void;
	function validatePage():Bool;
	function isComplete():Bool;
	function nextId():Int;
	function setField(name:QString, value:QVariant):Void;
	function field(name:QString):QVariant;
	function registerField(name:QString, widget:QWidget, ?property:Int, changedSignal:Dynamic):Void;
	function wizard():QWizard;
}

