# hxbit.StructSerializable

**interface** · package [`hxbit`](README.md) · source [`hxbit/StructSerializable.hx`](../../../../hxbit/StructSerializable.hx)

Extends: [`hxbit.AnySerializable`](AnySerializable.md)

StructSerializable is a slighlty more compact version of Serializable, but doesn't have a unique id so it shouldn't be referenced multiple times.
This allows for small objects created on-the-fly that will not need to be cleaned from the references cache.
Its data Schema will be included in all the objects that reference it similar to a normal anonymous structure { ... }

## Inherited members

- from [`hxbit.AnySerializable`](AnySerializable.md): `getCLID`, `serialize`, `unserializeInit`, `unserialize`, `getSerializeSchema`
