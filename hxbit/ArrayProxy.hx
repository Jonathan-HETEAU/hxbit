/*
 * Copyright (C)2015-2016 Nicolas Cannasse
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */
package hxbit;

import hxbit.NetworkSerializable;

/**
	The data of an `ArrayProxy`: the wrapped array, and the property of the host it is bound to.
**/
class ArrayProxyData<T> extends BaseProxy {
	/**
		The wrapped array.
	**/
	public var array : Array<T>;
	/**
		The length of the array.
	**/
	public var length(get,never) : Int;
	/**
		Wraps the array.
	**/
	public function new(v) {
		array = v;
	}
	inline function get_length() {
		return array.length;
	}
	/**
		Iterates over the values of the array.
	**/
	public function iterator() {
		return array.iterator();
	}
}

/**
	An iterator over the values of an array.
**/
@:generic
class ArrayProxyIterator<T> {
	/**
		The array.
	**/
	public var a : Array<T>;
	/**
		The index of the next value.
	**/
	public var index : Int;
	/**
		Creates an iterator from the start of the array.
	**/
	public inline function new(a) {
		this.a = a;
		this.index = 0;
	}
	/**
		Tells if there are more values.
	**/
	public inline function hasNext() return index < a.length;
	/**
		Returns the next value.
	**/
	public inline function next() return a[index++];
}

/**
	The proxy of an `Array` stored in a property of a `NetworkSerializable`: the functions modifying the array mark the property as changed, which sends the whole array again. Arrays are converted to proxies implicitly.
**/
@:forward(length)
abstract ArrayProxy<T>(ArrayProxyData<T>) to ProxyChild {

	@:noCompletion public var __value(get, never) : Array<T>;
	inline function get___value() : Array<T> return this == null ? null : this.array;

	inline function new(a) {
		this = a;
	}

	/**
		Returns a new array with the values of `a` added at the end (see `Array.concat`).
	**/
	public inline function concat( a : Array<T> ) {
		return this.array.concat(a);
	}

	/**
		Returns a proxy of a copy of the value, not bound to a host.
	**/
	public function copy() {
		return new ArrayProxy(new ArrayProxyData(this.array.copy()));
	}

	/**
		Returns the wrapped array: changes made to it directly don't mark the property as changed.
	**/
	public inline function getArray() {
		return __value;
	}

	/**
		Returns a new array with the values for which `t` returns `true`.
	**/
	public function filter( t : T->Bool ) {
		return this.array.filter(t);
	}

	/**
		Tells if the array contains the value.
	**/
	public inline function contains( x : T ) : Bool {
		return this.array.contains(x);
	}

	/**
		Returns the first index of the value, or `-1`.
	**/
	public inline function indexOf(x:T, ?fromIndex) {
		return this.array.indexOf(x, fromIndex);
	}

	/**
		Inserts the value at the position, and marks the property as changed.
	**/
	public inline function insert(pos:Int,x:T) {
		this.array.insert(pos, x);
		this.mark();
	}

	/**
		Iterates over the values.
	**/
	public inline function iterator() {
		return new ArrayProxyIterator(__value);
	}

	/**
		Iterates over the indexes and values.
	**/
	public inline function keyValueIterator() {
		return __value.keyValueIterator();
	}

	/**
		Returns the string representations of the values separated by `s`.
	**/
	public inline function join( s : String ) {
		return this.array.join(s);
	}

	/**
		Returns the last index of the value, or `-1`.
	**/
	public inline function lastIndexOf(x:T, ?fromIndex) {
		return this.array.lastIndexOf(x, fromIndex);
	}

	/**
		Returns a new array with the results of `t` for each value.
	**/
	public function map<S>( t : T->S ) {
		return this.array.map(t);
	}

	/**
		Marks the property as changed: call it after modifying a value in place.
	**/
	public function mark() {
		this.mark();
	}

	/**
		Removes and returns the last value, and marks the property as changed.
	**/
	public inline function pop() : Null<T> {
		this.mark();
		return this.array.pop();
	}

	/**
		Adds the value at the end, and marks the property as changed.
	**/
	public inline function push( x : T ) {
		this.array.push(x);
		this.mark();
	}

	/**
		Removes the first occurrence of the value, and marks the property as changed if found. Returns `true` if found.
	**/
	public inline function remove( x : T ) {
		var r = this.array.remove(x);
		if( r ) this.mark();
		return r;
	}

	/**
		Reverses the order of the values, and marks the property as changed.
	**/
	public inline function reverse() {
		this.array.reverse();
		this.mark();
	}

	/**
		Removes and returns the first value, and marks the property as changed.
	**/
	public inline function shift() : Null<T> {
		this.mark();
		return this.array.shift();
	}

	/**
		Returns a new array with the values from `pos` to `end` (excluded).
	**/
	public inline function slice( pos : Int, ?end : Int ) : Array<T> {
		return this.array.slice(pos, end);
	}

	/**
		Sorts the values with the comparison function, and marks the property as changed.
	**/
	public inline function sort(cmp:T->T->Int) {
		this.array.sort(cmp);
		this.mark();
	}

	/**
		Removes `len` values from `pos` and returns them, and marks the property as changed.
	**/
	public inline function splice( pos : Int, len : Int ) : Array<T> {
		this.mark();
		return this.array.splice(pos, len);
	}

	/**
		Returns the string representation of the value.
	**/
	public inline function toString() {
		return this.array.toString();
	}

	/**
		Adds the value at the start, and marks the property as changed.
	**/
	public inline function unshift( x : T ) : Void {
		this.mark();
		this.array.unshift(x);
	}

	/**
		Sets the length of the array, and marks the property as changed.
	**/
	public inline function resize( len : Int ) : Void {
		this.mark();
		this.array.resize(len);
	}

	@:to inline function toIterable() : Iterable<T> {
		return this.array;
	}

	@:noCompletion public inline function bindHost(o, bit) {
		this.bindHost(o, bit);
	}

	@:noCompletion public inline function unbindHost() {
		this.unbindHost();
	}

	@:arrayAccess inline function get(idx:Int) {
		return this.array[idx];
	}

	@:arrayAccess inline function set(idx:Int,v:T) {
		this.array[idx] = v;
		this.mark();
	}

	@:from static inline function fromArray<T>( a : Array<T> ) {
		if( a == null ) return null;
		return new ArrayProxy(new ArrayProxyData(a));
	}
}

/**
	The proxy of an `Array` of proxies (an array of mutable values): like `ArrayProxy`, and the values are bound to the array, so that their changes mark the property as changed.
**/
@:forward(length)
abstract ArrayProxy2<T:ProxyChild>(ArrayProxyData<T>) to ProxyChild {

	@:noCompletion public var __value(get, never) : Array<T>;
	inline function get___value() : Array<T> return this == null ? null : this.array;

	inline function new(a) {
		this = a;
	}

	/**
		Returns the wrapped array: changes made to it directly don't mark the property as changed.
	**/
	public inline function getArray() {
		return __value;
	}

	inline function bind(v:T) {
		if( v != null ) v.bindHost(this, 0);
	}

	inline function unbind(v:T) {
		if( v != null ) v.unbindHost();
	}

	/**
		Returns a new array with the values of `a` added at the end (see `Array.concat`).
	**/
	public inline function concat( a : Array<T> ) {
		return this.array.concat(a);
	}

	/**
		Returns a proxy of a copy of the value, not bound to a host.
	**/
	public function copy() {
		return new ArrayProxy2(new ArrayProxyData(this.array.copy()));
	}

	/**
		Returns a new array with the values for which `t` returns `true`.
	**/
	public function filter( t : T->Bool ) {
		return this.array.filter(t);
	}

	/**
		Tells if the array contains the value.
	**/
	public inline function contains( x : T ) : Bool {
		return this.array.contains(x);
	}
	
	/**
		Returns the first index of the value, or `-1`.
	**/
	public inline function indexOf(x:T, ?fromIndex) {
		return this.array.indexOf(x, fromIndex);
	}

	/**
		Inserts the value at the position, and marks the property as changed.
	**/
	public inline function insert(pos:Int, x:T) {
		bind(x);
		this.array.insert(pos, x);
		this.mark();
	}

	/**
		Iterates over the values.
	**/
	public inline function iterator() {
		return new ArrayProxyIterator(__value);
	}

	/**
		Iterates over the indexes and values.
	**/
	public inline function keyValueIterator() {
		return __value.keyValueIterator();
	}

	/**
		Returns the string representations of the values separated by `s`.
	**/
	public inline function join( s : String ) {
		return this.array.join(s);
	}

	/**
		Returns the last index of the value, or `-1`.
	**/
	public inline function lastIndexOf(x:T, ?fromIndex) {
		return this.array.lastIndexOf(x, fromIndex);
	}

	/**
		Returns a new array with the results of `t` for each value.
	**/
	public function map<S>( t : T->S ) {
		return this.array.map(t);
	}

	/**
		Marks the property as changed: call it after modifying a value in place.
	**/
	public function mark() {
		this.mark();
	}

	/**
		Removes and returns the last value, and marks the property as changed.
	**/
	public inline function pop() : Null<T> {
		this.mark();
		var e = this.array.pop();
		unbind(e);
		return e;
	}

	/**
		Adds the value at the end, and marks the property as changed.
	**/
	public inline function push( x : T ) {
		bind(x);
		this.array.push(x);
		this.mark();
	}

	/**
		Removes the first occurrence of the value, and marks the property as changed if found. Returns `true` if found.
	**/
	public inline function remove( x : T ) {
		var r = this.array.remove(x);
		if( r ) {
			unbind(x);
			this.mark();
		}
		return r;
	}

	/**
		Reverses the order of the values, and marks the property as changed.
	**/
	public inline function reverse() {
		this.array.reverse();
		this.mark();
	}

	/**
		Removes and returns the first value, and marks the property as changed.
	**/
	public inline function shift() : Null<T> {
		this.mark();
		var x = this.array.shift();
		unbind(x);
		return x;
	}

	/**
		Returns a new array with the values from `pos` to `end` (excluded).
	**/
	public inline function slice( pos : Int, ?end : Int ) : Array<T> {
		return this.array.slice(pos, end);
	}

	/**
		Sorts the values with the comparison function, and marks the property as changed.
	**/
	public inline function sort(cmp:T->T->Int) {
		this.array.sort(cmp);
		this.mark();
	}

	/**
		Removes `len` values from `pos` and returns them, and marks the property as changed.
	**/
	public inline function splice( pos : Int, len : Int ) : Array<T> {
		this.mark();
		var objs = this.array.splice(pos, len);
		for( o in objs ) unbind(o);
		return objs;
	}

	/**
		Returns the string representation of the value.
	**/
	public inline function toString() {
		return this.array.toString();
	}

	/**
		Adds the value at the start, and marks the property as changed.
	**/
	public inline function unshift( x : T ) : Void {
		this.mark();
		bind(x);
		this.array.unshift(x);
	}

	@:to inline function toIterable() : Iterable<T> {
		return this.array;
	}

	@:noCompletion public inline function bindHost(o,bit) {
		this.obj = o;
		this.bit = bit;
	}

	@:noCompletion public inline function unbindHost() {
		this.obj = null;
	}

	@:arrayAccess inline function get(idx:Int) {
		return this.array[idx];
	}

	@:arrayAccess inline function set(idx:Int, v:T) {
		unbind(this.array[idx]);
		bind(v);
		this.array[idx] = v;
		this.mark();
	}

	@:from static inline function fromArray<T:ProxyChild>( a : Array<T> ) {
		if( a == null ) return null;
		var p = new ArrayProxy2(new ArrayProxyData(a));
		for( x in a ) p.bind(x);
		return p;
	}
}