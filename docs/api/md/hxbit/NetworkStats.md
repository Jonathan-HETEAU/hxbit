# hxbit.NetworkStats

**class** · package [`hxbit`](README.md) · source [`hxbit/NetworkStats.hx`](../../../../hxbit/NetworkStats.hx)

Collects the number of times each property and RPC is sent and the number of bytes used, by class (see `NetworkHost.setStats`).

## Constructor

### new

```haxe
function new():Void
```

Creates empty statistics.

## Methods

### sync

```haxe
function sync(o:NetworkSerializable):Void
```

Counts the changed properties of the object, before they are sent.

### preSync

```haxe
function preSync(o:NetworkSerializable):Void
```

Counts a sending of the changed properties of the object.

### beginRPC

```haxe
function beginRPC(o:NetworkSerializable, id:Int):Stat
```

Counts a call of the RPC, and returns its statistics.

### endRPC

```haxe
function endRPC(size:Int):Void
```

Adds the size of the RPC started by `beginRPC`.

### dump

```haxe
function dump(?print:(str:String) -> Void):Void
```

Prints the statistics, sorted by importance (with `Sys.println` or `trace` by default).

### reset

```haxe
function reset():Void
```

Clears the statistics of the classes.
