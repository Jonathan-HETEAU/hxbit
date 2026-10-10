# hxbit.MapData

**class** · package [`hxbit`](README.md) · module `hxbit.MapProxy` · source [`hxbit/MapProxy.hx`](../../../../hxbit/MapProxy.hx)

Type parameters: `<K, V>`

Extends: [`hxbit.BaseProxy`](BaseProxy.md)

The data of a `MapProxy`: the wrapped map, and the property of the host it is bound to.

## Constructor

### new

```haxe
function new(map:Map<hxbit.MapData.K, hxbit.MapData.V>):Void
```

Wraps the map.

## Variables

### map

```haxe
var map:Map<hxbit.MapData.K, hxbit.MapData.V>
```

The wrapped map.

## Methods

### iterator

```haxe
function iterator():Iterator<hxbit.MapData.V>
```

Iterates over the values of the map.

## Inherited members

- from [`hxbit.BaseProxy`](BaseProxy.md): `obj`, `bit`, `mark`, `bindHost`, `unbindHost`
