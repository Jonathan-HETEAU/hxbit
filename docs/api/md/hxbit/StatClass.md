# hxbit.StatClass

**typedef** · package [`hxbit`](README.md) · module `hxbit.NetworkStats` · source [`hxbit/NetworkStats.hx`](../../../../hxbit/NetworkStats.hx)

The statistics of a class.

## Fields

### syncCount

```haxe
var syncCount:Int
```

The number of times objects of the class sent their changed properties.

### schema

```haxe
var schema:Schema
```

The schema of the class.

### rpcs

```haxe
var rpcs:Array<Stat>
```

The statistics of the RPCs, by index.

### props

```haxe
var props:Array<Stat>
```

The statistics of the properties, by index.

### name

```haxe
var name:String
```

The name of the class.
