# hxbit.ArrayProxy

**abstract** · package [`hxbit`](README.md) · source [`hxbit/ArrayProxy.hx`](../../../../hxbit/ArrayProxy.hx)

Type parameters: `<T>`

The proxy of an `Array` stored in a property of a `NetworkSerializable`: the functions modifying the array mark the property as changed, which sends the whole array again. Arrays are converted to proxies implicitly.

Underlying type: [`hxbit.ArrayProxyData`](ArrayProxyData.md)

Members of [`hxbit.ArrayProxyData`](ArrayProxyData.md) are forwarded (`@:forward`): they are usable directly on this type.

Implicit casts from: `Array<fromArray.T>`

Implicit casts to: `ProxyChild`, `{ iterator:() -> Iterator<hxbit.ArrayProxy.T> }`

## Methods

### concat

```haxe
inline function concat(a:Array<hxbit.ArrayProxy.T>):Array<hxbit.ArrayProxy.T>
```

Returns a new array with the values of `a` added at the end (see `Array.concat`).

### copy

```haxe
function copy():ArrayProxy<hxbit.ArrayProxy.T>
```

Returns a proxy of a copy of the value, not bound to a host.

### getArray

```haxe
inline function getArray():Array<hxbit.ArrayProxy.T>
```

Returns the wrapped array: changes made to it directly don't mark the property as changed.

### filter

```haxe
function filter(t:() -> Bool):Array<hxbit.ArrayProxy.T>
```

Returns a new array with the values for which `t` returns `true`.

### contains

```haxe
inline function contains(x:hxbit.ArrayProxy.T):Bool
```

Tells if the array contains the value.

### indexOf

```haxe
inline function indexOf(x:hxbit.ArrayProxy.T, ?fromIndex:Int):Int
```

Returns the first index of the value, or `-1`.

### insert

```haxe
inline function insert(pos:Int, x:hxbit.ArrayProxy.T):Void
```

Inserts the value at the position, and marks the property as changed.

### iterator

```haxe
inline function iterator():ArrayProxyIterator<hxbit.ArrayProxy.T>
```

Iterates over the values.

### keyValueIterator

```haxe
inline function keyValueIterator():ArrayKeyValueIterator<hxbit.ArrayProxy.T>
```

Iterates over the indexes and values.

### join

```haxe
inline function join(s:String):String
```

Returns the string representations of the values separated by `s`.

### lastIndexOf

```haxe
inline function lastIndexOf(x:hxbit.ArrayProxy.T, ?fromIndex:Int):Int
```

Returns the last index of the value, or `-1`.

### map

```haxe
function map(t:() -> map.S):Array<map.S>
```

Returns a new array with the results of `t` for each value.

### mark

```haxe
function mark():Void
```

Marks the property as changed: call it after modifying a value in place.

### pop

```haxe
inline function pop():Null<hxbit.ArrayProxy.T>
```

Removes and returns the last value, and marks the property as changed.

### push

```haxe
inline function push(x:hxbit.ArrayProxy.T):Void
```

Adds the value at the end, and marks the property as changed.

### remove

```haxe
inline function remove(x:hxbit.ArrayProxy.T):Bool
```

Removes the first occurrence of the value, and marks the property as changed if found. Returns `true` if found.

### reverse

```haxe
inline function reverse():Void
```

Reverses the order of the values, and marks the property as changed.

### shift

```haxe
inline function shift():Null<hxbit.ArrayProxy.T>
```

Removes and returns the first value, and marks the property as changed.

### slice

```haxe
inline function slice(pos:Int, ?end:Int):Array<hxbit.ArrayProxy.T>
```

Returns a new array with the values from `pos` to `end` (excluded).

### sort

```haxe
inline function sort(cmp:(hxbit.ArrayProxy.T, hxbit.ArrayProxy.T) -> Int):Void
```

Sorts the values with the comparison function, and marks the property as changed.

### splice

```haxe
inline function splice(pos:Int, len:Int):Array<hxbit.ArrayProxy.T>
```

Removes `len` values from `pos` and returns them, and marks the property as changed.

### toString

```haxe
inline function toString():String
```

Returns the string representation of the value.

### unshift

```haxe
inline function unshift(x:hxbit.ArrayProxy.T):Void
```

Adds the value at the start, and marks the property as changed.

### resize

```haxe
inline function resize(len:Int):Void
```

Sets the length of the array, and marks the property as changed.
