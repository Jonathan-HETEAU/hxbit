# hxbit.BaseProxy

**class** · package [`hxbit`](README.md) · module `hxbit.NetworkSerializable` · source [`hxbit/NetworkSerializable.hx`](../../../../hxbit/NetworkSerializable.hx)

Implements: [`hxbit.ProxyChild`](ProxyChild.md), [`hxbit.ProxyHost`](ProxyHost.md)

Subclasses: [`hxbit.ArrayProxyData`](ArrayProxyData.md), [`hxbit.EnumFlagsData`](EnumFlagsData.md), [`hxbit.MapData`](MapData.md), [`hxbit.VectorProxyData`](VectorProxyData.md)

The base class of the generated proxies.

## Static methods

### objToString

```haxe
static function objToString(o:Dynamic):String
```

Returns a description of the fields of a structure proxy.

## Variables

### obj

```haxe
var obj:ProxyHost
```

The host of the proxy, or `null`.

### bit

```haxe
var bit:Int
```

The property of the host containing the proxy.

## Methods

### mark

```haxe
inline function mark():Void
```

Marks the property of the host as changed.

### bindHost

```haxe
function bindHost(o:ProxyHost, bit:Int):Void
```

Binds the proxy to the property `bit` of its host. Throws if it is already bound to another property.

### unbindHost

```haxe
function unbindHost():Void
```

Unbinds the proxy from its host.
