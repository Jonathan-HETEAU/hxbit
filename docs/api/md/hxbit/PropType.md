# hxbit.PropType

**typedef** · package [`hxbit`](README.md) · module `hxbit.Macros` · source [`hxbit/Macros.hx`](../../../../hxbit/Macros.hx)

A serialized type, with the options given by the field metadata.

## Fields

### visibility

```haxe
var ?visibility:Null<Int>
```

The `@:visible` visibility group.

### t

```haxe
var t:ComplexType
```

The Haxe type.

### notMutable

```haxe
var ?notMutable:Null<Bool>
```

Set by `@:notMutable` (or `@:condSend(false)`, `@:noSync`): no proxy is used.

### noSync

```haxe
var ?noSync:Null<Bool>
```

Set by `@:noSync`: the value is not synchronized over the network.

### isProxy

```haxe
var ?isProxy:Null<Bool>
```

Tells if the value is wrapped in a proxy to track its changes.

### increment

```haxe
var ?increment:Null<Float>
```

The `@:increment` value.

### d

```haxe
var d:PropTypeDesc<PropType>
```

The type.

### condSend

```haxe
var ?condSend:Null<Expr>
```

The `@:condSend` condition.
