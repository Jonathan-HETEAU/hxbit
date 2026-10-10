# hxbit.ProxyChild

**interface** · package [`hxbit`](README.md) · module `hxbit.NetworkSerializable` · source [`hxbit/NetworkSerializable.hx`](../../../../hxbit/NetworkSerializable.hx)

Implemented by: [`hxbit.BaseProxy`](BaseProxy.md)

A proxy, wrapping a mutable value stored in a property of a `ProxyHost`.

## Methods

### bindHost

```haxe
function bindHost(p:ProxyHost, bit:Int):Void
```

Binds the proxy to the property `bit` of its host. Throws if it is already bound to another property.

### unbindHost

```haxe
function unbindHost():Void
```

Unbinds the proxy from its host.
