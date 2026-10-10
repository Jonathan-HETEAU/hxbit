# hxbit.ArrayProxyData

**class** · package [`hxbit`](README.md) · module `hxbit.ArrayProxy` · source [`hxbit/ArrayProxy.hx`](../../../../hxbit/ArrayProxy.hx)

Type parameters: `<T>`

Extends: [`hxbit.BaseProxy`](BaseProxy.md)

The data of an `ArrayProxy`: the wrapped array, and the property of the host it is bound to.

## Constructor

### new

```haxe
function new(v:Array<hxbit.ArrayProxyData.T>):Void
```

Wraps the array.

## Variables

### array

```haxe
var array:Array<hxbit.ArrayProxyData.T>
```

The wrapped array.

### length

```haxe
var length(get, null):Int
```

The length of the array.

## Methods

### iterator

```haxe
function iterator():ArrayIterator<hxbit.ArrayProxyData.T>
```

Iterates over the values of the array.

## Inherited members

- from [`hxbit.BaseProxy`](BaseProxy.md): `obj`, `bit`, `mark`, `bindHost`, `unbindHost`
