# hxbit.VectorProxy

**abstract** · package [`hxbit`](README.md) · source [`hxbit/VectorProxy.hx`](../../../../hxbit/VectorProxy.hx)

Type parameters: `<T>`

The proxy of a `haxe.ds.Vector` stored in a property of a `NetworkSerializable`: setting a value or sorting marks the property as changed, which sends the whole vector again. Vectors are converted to proxies implicitly.

Underlying type: [`hxbit.VectorProxyData`](VectorProxyData.md)

Implicit casts from: `Vector<fromVector.T>`

## Methods

### getVector

```haxe
inline function getVector():Vector<hxbit.VectorProxy.T>
```

Returns the wrapped vector: changes made to it directly don't mark the property as changed.

### copy

```haxe
inline function copy():VectorProxy<Dynamic>
```

Returns a proxy of a copy of the value, not bound to a host.

### join

```haxe
inline function join(s:String):String
```

Returns the string representations of the values separated by `s`.

### sort

```haxe
inline function sort(cmp:(hxbit.VectorProxy.T, hxbit.VectorProxy.T) -> Int):Void
```

Sorts the values with the comparison function, and marks the property as changed.

### toString

```haxe
inline function toString():String
```

Returns the string representation of the value.
