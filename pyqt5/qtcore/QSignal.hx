package pyqt5.qtcore;

// qt signal helper
extern class QSignal0 {
	function connect(f:()->Void):Void;
	function disconnect(f:()->Void):Void;
	function emit():Void;
}

extern class QSignal1<T> {
	function connect(f:T->Void):Void;
	function disconnect(f:T->Void):Void;
	function emit(e:T):Void;
}

extern class QSignal2<T1, T2> {
	function connect(f:T1->T2->Void):Void;
	function disconnect(f:T1->T2->Void):Void;
	function emit(e1:T1, e2:T2):Void;
}

extern class QSignal3<T1, T2, T3> {
	function connect(f:T1->T2->T3->Void):Void;
	function disconnect(f:T1->T2->T3->Void):Void;
	function emit(e1:T1, e2:T2, ee:T3):Void;
}