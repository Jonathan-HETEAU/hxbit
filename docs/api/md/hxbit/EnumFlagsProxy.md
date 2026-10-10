# hxbit.EnumFlagsProxy

**abstract** · package [`hxbit`](README.md) · source [`hxbit/EnumFlagsProxy.hx`](../../../../hxbit/EnumFlagsProxy.hx)

Type parameters: `<T>`

The proxy of `haxe.EnumFlags` stored in a property of a `NetworkSerializable`: setting or unsetting a flag marks the property as changed.

Underlying type: [`hxbit.EnumFlagsData`](EnumFlagsData.md)

Implicit casts from: `EnumFlags<fromFlags.T>`

## Methods

### has

```haxe
inline function has(e:hxbit.EnumFlagsProxy.T):Bool
```

Tells if the flag is set.

### set

```haxe
inline function set(e:hxbit.EnumFlagsProxy.T):Void
```

Sets the flag, and marks the property as changed if it was not set.

### unset

```haxe
inline function unset(e:hxbit.EnumFlagsProxy.T):Void
```

Unsets the flag, and marks the property as changed if it was set.

### copy

```haxe
inline function copy():EnumFlagsProxy<hxbit.EnumFlagsProxy.T>
```

Returns a proxy of a copy of the value, not bound to a host.

### toInt

```haxe
inline function toInt():Int
```

Returns the flags as an integer.

### toString

```haxe
inline function toString():String
```

Returns the string representation of the value.
