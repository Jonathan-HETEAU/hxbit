# hxbit.Weak

**abstract** · package [`hxbit`](README.md) · source [`hxbit/Weak.hx`](../../../../hxbit/Weak.hx)

Type parameters: `<T>`

A weak reference to a `NetworkSerializable` object: stores its UID only, and resolves it from the current `NetworkHost`.

Underlying type: [`hxbit.UID`](UID.md)

Implicit casts from: `from.T`, `fromChild.T2`

## Methods

### get

```haxe
inline function get():hxbit.Weak.T
```

Returns the referenced object, or `null` if it is not known by the current `NetworkHost`.
