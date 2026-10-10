# hxbit.CustomSerializable

**interface** · package [`hxbit`](README.md) · source [`hxbit/CustomSerializable.hx`](../../../../hxbit/CustomSerializable.hx)

Extends: [`hxbit.AnySerializable`](AnySerializable.md)

Custom serializable are more lightweight (no versioning etc.) than normal Serializable but a bit larger when serializing.
They don't have any extra data field added such as __uid__, and should be only referenced once

## Inherited members

- from [`hxbit.AnySerializable`](AnySerializable.md): `getCLID`, `serialize`, `unserializeInit`, `unserialize`, `getSerializeSchema`
