# hxbit.ProxyHost

**interface** · package [`hxbit`](README.md) · module `hxbit.NetworkSerializable` · source [`hxbit/NetworkSerializable.hx`](../../../../hxbit/NetworkSerializable.hx)

Subclasses: [`hxbit.NetworkSerializable`](NetworkSerializable.md)

Implemented by: [`hxbit.BaseProxy`](BaseProxy.md)

An object notified when a value it contains is modified: a `NetworkSerializable`, or a proxy containing other proxies.

## Methods

### networkSetBitCond

```haxe
function networkSetBitCond(bit:Int):Void
```

Marks the property `bit` as changed, if its send conditions (`@:increment`, `@:condSend`) allow it.
