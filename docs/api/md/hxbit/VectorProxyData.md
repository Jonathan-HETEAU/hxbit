# hxbit.VectorProxyData

**class** · package [`hxbit`](README.md) · module `hxbit.VectorProxy` · source [`hxbit/VectorProxy.hx`](../../../../hxbit/VectorProxy.hx)

Type parameters: `<T>`

Extends: [`hxbit.BaseProxy`](BaseProxy.md)

The data of a `VectorProxy`: the wrapped vector, and the property of the host it is bound to.

## Constructor

### new

```haxe
function new(v:Vector<hxbit.VectorProxyData.T>):Void
```

Wraps the vector.

## Variables

### array

```haxe
var array:Vector<hxbit.VectorProxyData.T>
```

The wrapped vector.

## Inherited members

- from [`hxbit.BaseProxy`](BaseProxy.md): `obj`, `bit`, `mark`, `bindHost`, `unbindHost`
