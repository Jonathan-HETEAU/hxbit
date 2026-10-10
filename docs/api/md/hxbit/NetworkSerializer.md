# hxbit.NetworkSerializer

**class** · package [`hxbit`](README.md) · module `hxbit.NetworkSerializable` · source [`hxbit/NetworkSerializable.hx`](../../../../hxbit/NetworkSerializable.hx)

Extends: [`hxbit.Serializer`](Serializer.md)

The `Serializer` of a `NetworkHost` and of its clients: it writes the `@:noSave` fields (`forSave` is `false`), shares the objects with `enableAutoReplication` when they are sent, and checks that the referenced objects are known.

## Constructor

### new

```haxe
function new(host:NetworkHost):Void
```

Creates the serializer of the host.

## Static methods

### onUnboundObject

```haxe
static dynamic function onUnboundObject(ns:NetworkSerializable):Void
```

Called when an object which is not replicated is sent. Throws by default; it can set `enableAutoReplication` to share the object instead.

## Variables

### enableChecks

```haxe
var enableChecks:Bool
```

Checks the references: when set, the objects sent must be replicated, and unknown references set `error`.

### error

```haxe
var error(get, null):Bool
```

Tells if an unknown reference was read since the last read of this property (reading it clears it).

### errorPropId

```haxe
var errorPropId:Int
```

The property being synchronized when the last unknown reference was read, or `-1`.

### currentTarget _(hl with -D hxbit_visibility only)_

```haxe
var currentTarget:NetworkSerializable
```

The client (owner object) data is written for, to evaluate the visibility, or `null`.

### cachedVisibility _(hl with -D hxbit_visibility only)_

```haxe
var cachedVisibility:UIDMap<Int>
```

The visibility groups of the objects sent to the client, by UID.

### defaultVisibilityMask _(hl with -D hxbit_visibility only)_

```haxe
var defaultVisibilityMask:Int
```

The visibility groups used when there is no `currentTarget`.

## Methods

### addAnyRef

```haxe
override function addAnyRef(s:Serializable):Void
```

### addKnownRef

```haxe
override function addKnownRef(s:Serializable):Void
```

## Inherited members

- from [`hxbit.Serializer`](Serializer.md): `refs`, `remapIds`, `forSave`, `getPosition`, `writeToPosition`, `begin`, `end`, `setInput`, `serialize`, `unserialize`, `getByte`, `addByte`, `addUID`, `getUID`, `addInt`, `addInt32`, `addInt64`, `addFloat`, `addDouble`, `addBool`, `addArray`, `addVector`, `getArray`, `getVector`, `addMap`, `getMap`, `getBool`, `getInt`, `skip`, `getInt32`, `getInt64`, `getDouble`, `getFloat`, `addString`, `addBytes`, `addBytesSub`, `getString`, `getBytes`, `getDynamic`, `addDynamic`, `addCLID`, `getCLID`, `addCustom`, `getCustom`, `addAnyRef`, `addKnownRef`, `getAnyRef`, `getRef`, `getKnownRef`, `beginSave`, `endSave`, `beginLoad`, `endLoad`
