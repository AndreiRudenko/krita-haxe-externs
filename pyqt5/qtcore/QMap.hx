package pyqt5.qtcore;



// typedef QMap<K, V> = python.Dict<K, V>;


extern class QMap<K, V> implements haxe.Constraints.IMap<K, V> {
	public var length(get, never):Int;

	inline function get_length():Int {
		return python.Syntax.code('{0}.count()', this);
	}

	inline function get(key:K):V {
		return python.Syntax.arrayAccess(this, key);
	}

	inline function set(key:K, value:V):Void {
		python.Syntax.code('{0}.[{1}] = {2}', this, key, value);
	}

	inline function exists(key:K):Bool {
		return python.Syntax.isIn(key, this);
	}

	inline function remove(key:K):Bool {
		if (python.Syntax.isIn(key, this)) {
			python.Syntax.delete(python.Syntax.arrayAccess(this, key));
			return true;
		}
		return false;
	}

	inline function iterator():Iterator<V> {
		return new QMapIterator<V>(python.Syntax.code('iter({0}.values())', this));
	}

	inline function keyValueIterator():KeyValueIterator<K, V> {
    	return new QMapKeyValueIterator(this);
	}

	inline function toString():String {
		return python.Syntax.code('str({0})', this);
	}

	inline function keys():Iterator<K> {
		return new QMapIterator<K>(python.Syntax.code('iter({0}.keys())', this));
	}

	function new();
	function clear():Void;
	function copy():QMap<K, V>;

}

// @:native("QMapIterator")
// @:keep
private class QMapIterator<T> {

	var checked:Bool = false;
	var has:Bool = false;
	var it:Dynamic;
	var x:Dynamic;

	public inline function new(q:Dynamic) {
		it = q;
	}

	public function hasNext():Bool {//TODO
		python.Syntax.code('if (not self.checked):
            try:
                self.x = self.it.__next__()
                self.has = True
            except StopIteration:
                self.has = False
                self.x = None
            self.checked = True
', this);
		return has;
	}

	public function next():T {
		if (!checked) hasNext();
		checked = false;
		return x;
	}
}

private class QMapKeyValueIterator<K, V> {
	var map:QMap<K, V>;
	var keys:Iterator<K>;

	public inline function new(map:QMap<K, V>) {
		this.map = map;
		this.keys = map.keys();
	}

	public inline function hasNext():Bool {
		return keys.hasNext();
	}

	public inline function next():{key:K, value:V} {
		var key = keys.next();
		return {value: @:nullSafety(Off) (map.get(key) : V), key: key};
	}
}
