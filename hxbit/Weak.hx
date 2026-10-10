package hxbit;

/**
	A weak reference to a `NetworkSerializable` object: stores its UID only, and resolves it from the current `NetworkHost`.
**/
@:fromNull
abstract Weak<T:NetworkSerializable>(UID) {
	/**
		Returns the referenced object, or `null` if it is not known by the current `NetworkHost`.
	**/
	public inline function get() : T return resolve(this);
	@:from static inline function from<T:NetworkSerializable>( v : T ) : Weak<T> {
		return cast v?.__uid;
	}
	@:from static inline function fromChild<T1:NetworkSerializable, T2:T1>( v : T2 ) : Weak<T1> {
        return cast v?.__uid;
    }
	static function resolve( uid : UID ) : Dynamic {
		var host = NetworkHost.current;
		if (host == null)
			return null;
		var r = @:privateAccess host.globalCtx.refs.get(uid);
		if( r == null ) {
			var h = @:privateAccess host.registerHead;
			while( h != null ) {
				if( h.__uid == uid ) return h;
				if( h.__next == h ) break;
				h = h.__next;
			}
		}
		return r;
	}

}