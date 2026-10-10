# hxbit.MapProxy

**abstract** · package [`hxbit`](README.md) · source [`hxbit/MapProxy.hx`](../../../../hxbit/MapProxy.hx)

Type parameters: `<K, V>`

The proxy of a `Map` stored in a property of a `NetworkSerializable`: the functions modifying the map mark the property as changed, which sends the whole map again. Maps are converted to proxies implicitly.

Underlying type: [`hxbit.MapData`](MapData.md)

Implicit casts from: `Map<fromMap.K, fromMap.V>`

Implicit casts to: `ProxyChild`

## Methods

### set

```haxe
inline function set(key:hxbit.MapProxy.K, value:hxbit.MapProxy.V):Void
```

Sets the value of the key, and marks the property as changed.

### getMap

```haxe
inline function getMap():Map<hxbit.MapProxy.K, hxbit.MapProxy.V>
```

Returns the wrapped map: changes made to it directly don't mark the property as changed.

### get

```haxe
inline function get(key:hxbit.MapProxy.K):Null<hxbit.MapProxy.V>
```

Returns the value of the key, or `null`.

### exists

```haxe
inline function exists(key:hxbit.MapProxy.K):Bool
```

Tells if the key has a value.

### remove

```haxe
inline function remove(key:hxbit.MapProxy.K):Bool
```

Removes the value of the key, and marks the property as changed if found. Returns `true` if found.

### copy

```haxe
inline function copy():MapProxy<hxbit.MapProxy.K, hxbit.MapProxy.V>
```

Returns a proxy of a copy of the value, not bound to a host.

### keys

```haxe
inline function keys():Iterator<hxbit.MapProxy.K>
```

Iterates over the keys.

### iterator

```haxe
inline function iterator():Iterator<hxbit.MapProxy.V>
```

Iterates over the values.

### keyValueIterator

```haxe
inline function keyValueIterator():KeyValueIterator<hxbit.MapProxy.K, hxbit.MapProxy.V>
```

Iterates over the keys and values.

### toString

```haxe
inline function toString():String
```

Returns the string representation of the value.
