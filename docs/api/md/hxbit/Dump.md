# hxbit.Dump

**class** · package [`hxbit`](README.md) · source [`hxbit/Dump.hx`](../../../../hxbit/Dump.hx) · available on hl, hl with -D hxbit_visibility

Extends: [`hxbit.Serializer`](Serializer.md)

Converts versioned data (written by `Serializer.endSave`) to a structure that can be saved as JSON, for debugging. The classes are not needed: the schemas stored in the data are used. Only on `sys` targets.

## Constructor

### new

```haxe
function new(data:Bytes):Void
```

Creates the dump of the data.

## Methods

### dumpObj

```haxe
function dumpObj():{ version:Int, objs:Array<Null<Dynamic>>, classes:Array<{ name:Null<String>, crc:String }> }
```

Returns the data as a structure: the version, the classes (with the CRC of their schema) and the objects. Bytes of 64 bytes or more are saved to `<md5>.bin` files.

### dump

```haxe
function dump(?file:String = "dump.json"):Void
```

Saves the result of `dumpObj` as a JSON file.

## Inherited members

- from [`hxbit.Serializer`](Serializer.md): `refs`, `remapIds`, `forSave`, `getPosition`, `writeToPosition`, `begin`, `end`, `setInput`, `serialize`, `unserialize`, `getByte`, `addByte`, `addUID`, `getUID`, `addInt`, `addInt32`, `addInt64`, `addFloat`, `addDouble`, `addBool`, `addArray`, `addVector`, `getArray`, `getVector`, `addMap`, `getMap`, `getBool`, `getInt`, `skip`, `getInt32`, `getInt64`, `getDouble`, `getFloat`, `addString`, `addBytes`, `addBytesSub`, `getString`, `getBytes`, `getDynamic`, `addDynamic`, `addCLID`, `getCLID`, `addCustom`, `getCustom`, `addAnyRef`, `addKnownRef`, `getAnyRef`, `getRef`, `getKnownRef`, `beginSave`, `endSave`, `beginLoad`, `endLoad`
