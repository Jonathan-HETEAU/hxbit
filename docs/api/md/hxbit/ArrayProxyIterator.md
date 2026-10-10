# hxbit.ArrayProxyIterator

**class** · package [`hxbit`](README.md) · module `hxbit.ArrayProxy` · source [`hxbit/ArrayProxy.hx`](../../../../hxbit/ArrayProxy.hx)

Type parameters: `<T>`

An iterator over the values of an array.

## Constructor

### new

```haxe
inline function new(a:Array<hxbit.ArrayProxyIterator.T>):Void
```

Creates an iterator from the start of the array.

## Variables

### a

```haxe
var a:Array<hxbit.ArrayProxyIterator.T>
```

The array.

### index

```haxe
var index:Int
```

The index of the next value.

## Methods

### hasNext

```haxe
inline function hasNext():Bool
```

Tells if there are more values.

### next

```haxe
inline function next():hxbit.ArrayProxyIterator.T
```

Returns the next value.
