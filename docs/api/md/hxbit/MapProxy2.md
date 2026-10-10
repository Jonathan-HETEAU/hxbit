# hxbit.MapProxy2

**abstract** · package [`hxbit`](README.md) · module `hxbit.MapProxy` · source [`hxbit/MapProxy.hx`](../../../../hxbit/MapProxy.hx)

Type parameters: `<K, V>`

The proxy of a `Map` of proxies (a map of mutable values): like `MapProxy`, and the values are bound to the map, so that their changes mark the property as changed.

Underlying type: [`hxbit.MapData`](MapData.md)

Implicit casts from: `Map<fromMap.K, fromMap.V>`

Implicit casts to: `ProxyChild`

## Methods

### set

```haxe
inline function set(key:hxbit.MapProxy2.K, value:hxbit.MapProxy2.V):Void
```

Sets the value of the key, and marks the property as changed.

### getMap

```haxe
inline function getMap():Map<hxbit.MapProxy2.K, hxbit.MapProxy2.V>
```

Returns the wrapped map: changes made to it directly don't mark the property as changed.

### get

```haxe
inline function get(key:hxbit.MapProxy2.K):Null<hxbit.MapProxy2.V>
```

Returns the value of the key, or `null`.

### exists

```haxe
inline function exists(key:hxbit.MapProxy2.K):Bool
```

Tells if the key has a value.

### remove

```haxe
inline function remove(key:hxbit.MapProxy2.K):Bool
```

Removes the value of the key, and marks the property as changed if found. Returns `true` if found.

### copy

```haxe
inline function copy():MapProxy<hxbit.MapProxy2.K, hxbit.MapProxy2.V>
```

Returns a proxy of a copy of the value, not bound to a host.

### keys

```haxe
inline function keys():Iterator<hxbit.MapProxy2.K>
```

Iterates over the keys.

### iterator

```haxe
inline function iterator():Iterator<hxbit.MapProxy2.V>
```

Iterates over the values.

### keyValueIterator

```haxe
inline function keyValueIterator():KeyValueIterator<hxbit.MapProxy2.K, hxbit.MapProxy2.V>
```

Iterates over the keys and values.

### toString

```haxe
inline function toString():String
```

Returns the string representation of the value.
