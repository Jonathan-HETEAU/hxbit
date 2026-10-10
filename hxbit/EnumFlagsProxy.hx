package hxbit;

/**
	The data of an `EnumFlagsProxy`: the wrapped flags, and the property of the host it is bound to.
**/
class EnumFlagsData<T:EnumValue> extends NetworkSerializable.BaseProxy {

	/**
		The wrapped flags.
	**/
	public var value(default, null) : haxe.EnumFlags<T>;

	/**
		Creates the flags from their integer value.
	**/
	public function new(i = 0) {
		value = new haxe.EnumFlags(i);
	}

}


/**
	The proxy of `haxe.EnumFlags` stored in a property of a `NetworkSerializable`: setting or unsetting a flag marks the property as changed.
**/
abstract EnumFlagsProxy<T:EnumValue>(EnumFlagsData<T>) {

	@:noCompletion public var __value(get, never) : haxe.EnumFlags<T>;

	/**
		Creates the flags from their integer value.
	**/
	public inline function new(i = 0) {
		this = new EnumFlagsData(i);
	}

	inline function get___value() return this.value;

	/**
		Tells if the flag is set.
	**/
	public inline function has(e:T) {
		return __value.has(e);
	}

	/**
		Sets the flag, and marks the property as changed if it was not set.
	**/
	public inline function set(e:T) {
		if( !has(e) ) {
			this.mark();
			__value.set(e);
		}
	}

	/**
		Unsets the flag, and marks the property as changed if it was set.
	**/
	public inline function unset(e:T) {
		if( has(e) ) {
			this.mark();
			__value.unset(e);
		}
	}
	
	/**
		Returns a proxy of a copy of the value, not bound to a host.
	**/
	public inline function copy() {
		return new EnumFlagsProxy<T>(__value.toInt());
	}

	/**
		Returns the flags as an integer.
	**/
	public inline function toInt() : Int {
		return __value.toInt();
	}

	/**
		Returns the string representation of the value.
	**/
	public inline function toString() {
		return "" + toInt();
	}

	@:noCompletion public inline function bindHost(o, bit) {
		this.bindHost(o, bit);
	}

	@:noCompletion public inline function unbindHost() {
		this.unbindHost();
	}

	@:from static inline function fromFlags<T:EnumValue>( f : haxe.EnumFlags<T> ) {
		return new EnumFlagsProxy<T>(f.toInt());
	}

}
