# hxbit.EnumFlagsData

**class** · package [`hxbit`](README.md) · module `hxbit.EnumFlagsProxy` · source [`hxbit/EnumFlagsProxy.hx`](../../../../hxbit/EnumFlagsProxy.hx)

Type parameters: `<T>`

Extends: [`hxbit.BaseProxy`](BaseProxy.md)

The data of an `EnumFlagsProxy`: the wrapped flags, and the property of the host it is bound to.

## Constructor

### new

```haxe
function new(?i:Int = 0):Void
```

Creates the flags from their integer value.

## Variables

### value

```haxe
var value(default, null):EnumFlags<hxbit.EnumFlagsData.T>
```

The wrapped flags.

## Inherited members

- from [`hxbit.BaseProxy`](BaseProxy.md): `obj`, `bit`, `mark`, `bindHost`, `unbindHost`
