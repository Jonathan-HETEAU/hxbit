# hxbit.Serializer

**class** · package [`hxbit`](README.md) · source [`hxbit/Serializer.hx`](../../../../hxbit/Serializer.hx)

Subclasses: [`hxbit.Dump`](Dump.md), [`hxbit.NetworkSerializer`](NetworkSerializer.md)

Reads and writes the binary data of `Serializable` objects and of the basic values.

```haxe
var bytes = new hxbit.Serializer().serialize(obj);
var obj2 = new hxbit.Serializer().unserialize(bytes, MyClass);
```

Use `save` and `load` (or `beginSave`/`endSave` and `beginLoad`/`endLoad`) to store the schemas of the classes with the data, so that data saved with an older version of the classes can be loaded (removed fields are ignored, added fields get a default value).
Each object is written once: further references write its UID only.

## Constructor

### new

```haxe
function new():Void
```

Creates a serializer.

## Static methods

### resetCounters

```haxe
static function resetCounters():Void
```

Resets the allocation of the UIDs.

### isClassFinal

```haxe
static function isClassFinal(index:Int):Bool
```

Tells if the class of the given index has no serializable super or sub class (its objects are written without class identifier).

### save

```haxe
static function save(value:Serializable):Bytes
```

Returns the versioned data of the object (and of the objects it references).

### load

```haxe
static function load(bytes:Bytes, cl:Class<load.T>, ?iterObjects:() -> Void, ?remapIds:Bool):load.T
```

Reads an object of the class `cl` from versioned data written by `save`. `iterObjects` is called for each object read, by increasing UID. If `remapIds` is set, the objects get new UIDs.

## Variables

### refs

```haxe
var refs:UIDMap<Serializable>
```

The objects written or read, by UID.

### remapIds

```haxe
var remapIds(get, set):Bool
```

Set this before serializing in order to reaffect object ids starting UID

### forSave

```haxe
var forSave:Bool
```

Tells if the data is saved (`@:noSave` fields are skipped). `NetworkSerializer` unsets it.

## Methods

### getPosition

```haxe
inline function getPosition(?write:Bool = false):Int
```

Returns the read position, or the write position if `write` is set (HashLink only, `-1` on other targets).

### writeToPosition

```haxe
inline function writeToPosition(pos:Int, value:Int):Void
```

Overwrites the 32 bits integer at the write position `pos` (HashLink only, ignored if `pos` is negative).

### begin

```haxe
function begin():Void
```

Starts writing: clears the output and the references.

### end

```haxe
function end():Bytes
```

Returns the written bytes, and clears the output and the references.

### setInput

```haxe
function setInput(data:Bytes, pos:Int):Void
```

Sets the bytes to read from, and the read position.

### serialize

```haxe
function serialize(s:Serializable):Bytes
```

Writes the object (and the objects it references) and returns the bytes. The data has no schema: use `save` for versioned data.

### unserialize

```haxe
function unserialize(data:Bytes, c:Class<unserialize.T>, ?startPos:Int = 0):unserialize.T
```

Reads an object of the class `c` (or a sub class) written by `serialize`.

### getByte

```haxe
inline function getByte():Int
```

Reads a byte.

### addByte

```haxe
function addByte(v:Int):Void
```

Writes a byte.

### addUID

```haxe
inline function addUID(v:UID):Void
```

Writes an UID.

### getUID

```haxe
inline function getUID():UID
```

Reads an UID.

### addInt

```haxe
function addInt(v:Int):Void
```

Writes an integer: a byte for `0` to `127`, 5 bytes otherwise.

### addInt32

```haxe
function addInt32(v:Int):Void
```

Writes an integer on 4 bytes.

### addInt64

```haxe
function addInt64(v:Int64):Void
```

Writes a 64 bits integer.

### addFloat

```haxe
function addFloat(v:Float):Void
```

Writes a float, with 32 bits precision.

### addDouble

```haxe
function addDouble(v:Float):Void
```

Writes a float, with 64 bits precision.

### addBool

```haxe
function addBool(v:Bool):Void
```

Writes a boolean, as a byte.

### addArray

```haxe
inline function addArray(a:Array<addArray.T>, f:() -> Void):Void
```

Writes an array (or `null`), calling `f` to write each value.

### addVector

```haxe
inline function addVector(a:Vector<addVector.T>, f:() -> Void):Void
```

Writes a vector (or `null`), calling `f` to write each value.

### getArray

```haxe
inline function getArray(f:() -> getArray.T):Array<getArray.T>
```

Reads an array (or `null`), calling `f` to read each value.

### getVector

```haxe
inline function getVector(f:() -> getVector.T):Vector<getVector.T>
```

Reads a vector (or `null`), calling `f` to read each value.

### addMap

```haxe
inline function addMap(a:Map<addMap.K, addMap.T>, fk:() -> Void, ft:() -> Void):Void
```

Writes a map (or `null`), calling `fk` and `ft` to write each key and value.

### getMap

```haxe
inline function getMap(fk:() -> getMap.K, ft:() -> getMap.T):Map<getMap.K, getMap.T>
```

Reads a map (or `null`), calling `fk` and `ft` to read each key and value.

### getBool

```haxe
inline function getBool():Bool
```

Reads a boolean.

### getInt

```haxe
function getInt():Int
```

Reads an integer written by `addInt`.

### skip

```haxe
inline function skip(size:Int):Void
```

Skips `size` bytes.

### getInt32

```haxe
inline function getInt32():Int
```

Reads an integer written on 4 bytes.

### getInt64

```haxe
inline function getInt64():Int64
```

Reads a 64 bits integer.

### getDouble

```haxe
inline function getDouble():Float
```

Reads a float with 64 bits precision.

### getFloat

```haxe
inline function getFloat():Float
```

Reads a float with 32 bits precision.

### addString

```haxe
function addString(s:String):Void
```

Writes a string (or `null`), in UTF-8.

### addBytes

```haxe
function addBytes(b:Bytes):Void
```

Writes bytes (or `null`).

### addBytesSub

```haxe
function addBytesSub(b:Bytes, pos:Int, len:Int):Void
```

Writes `len` bytes of `b` from `pos` (or `null`), to be read with `getBytes`.

### getString

```haxe
function getString():Null<String>
```

Reads a string (or `null`).

### getBytes

```haxe
function getBytes():Null<Bytes>
```

Reads bytes (or `null`).

### getDynamic

```haxe
function getDynamic():Dynamic
```

Reads a value written by `addDynamic`.

### addDynamic

```haxe
function addDynamic(v:Dynamic):Void
```

Writes a dynamic value, with its type: `null`, booleans, numbers, strings, bytes, arrays, anonymous structures, serializable objects and enums. Throws for other values.

### addCLID

```haxe
function addCLID(clid:Int):Void
```

Writes a class identifier, on 2 bytes.

### getCLID

```haxe
function getCLID():Int
```

Reads a class identifier.

### addCustom

```haxe
function addCustom(s:CustomSerializable):Void
```

Writes a `CustomSerializable` value (or `null`): its class name, then the data written by its `customSerialize`.

### getCustom

```haxe
function getCustom():getCustom.T
```

Reads a `CustomSerializable` value written by `addCustom`.

### addAnyRef

```haxe
function addAnyRef(s:Serializable):Void
```

Writes a reference to an object of any class (or `null`), and the object itself if not written yet.

### addKnownRef

```haxe
function addKnownRef(s:Serializable):Void
```

Writes a reference to an object (or `null`) whose base class is known by the reader, and the object itself if not written yet.

### getAnyRef

```haxe
function getAnyRef():Serializable
```

Reads a reference written by `addAnyRef`.

### getRef

```haxe
function getRef(c:Class<getRef.T>, clidx:Int):getRef.T
```

Reads a reference written by `addKnownRef`, to an object of the class `c` (of index `clidx`) or a sub class.

### getKnownRef

```haxe
inline function getKnownRef(c:Class<getKnownRef.T>):getKnownRef.T
```

Reads a reference written by `addKnownRef`, to an object of the class `c` or a sub class.

### beginSave

```haxe
function beginSave():Void
```

Starts writing versioned data: the schemas of the classes, enums and structures used are written by `endSave`.

### endSave

```haxe
function endSave(?savePosition:Int = 0):Bytes
```

Returns the versioned data: the schemas, then the data written since `beginSave` (from `savePosition`).

### beginLoad

```haxe
function beginLoad(bytes:Bytes, ?position:Int = 0):Void
```

Starts reading versioned data written by `endSave`: reads the schemas and prepares the conversion of the data saved with different schemas. Call `endLoad` when done.

### endLoad

```haxe
function endLoad():Void
```

Ends the reading of versioned data.
