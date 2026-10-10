# hxbit.PropTypeDesc

**enum** · package [`hxbit`](README.md) · module `hxbit.Macros` · source [`hxbit/Macros.hx`](../../../../hxbit/Macros.hx)

Type parameters: `<PropType>`

The type of a serialized value, as used by the macros and stored in the schemas (see `Schema.FieldType`).

## Constructors

### PInt

```haxe
PInt
```

An `Int`.

### PFloat

```haxe
PFloat
```

A `Float`, stored with 32 bits precision.

### PBool

```haxe
PBool
```

A `Bool`.

### PString

```haxe
PString
```

A `String`.

### PBytes

```haxe
PBytes
```

An `haxe.io.Bytes`.

### PSerializable

```haxe
PSerializable(name:String)
```

A `Serializable` object of the given class.

### PEnum

```haxe
PEnum(name:String)
```

An enum value of the given enum.

### PMap

```haxe
PMap(k:hxbit.PropTypeDesc.PropType, v:hxbit.PropTypeDesc.PropType)
```

A `Map`.

### PArray

```haxe
PArray(k:hxbit.PropTypeDesc.PropType)
```

An `Array`.

### PObj

```haxe
PObj(fields:Array<{ type:hxbit.PropTypeDesc.PropType, opt:Bool, name:String }>)
```

An anonymous structure.

### PAlias

```haxe
PAlias(k:hxbit.PropTypeDesc.PropType)
```

An abstract, stored as its underlying type.

### PVector

```haxe
PVector(k:hxbit.PropTypeDesc.PropType)
```

An `haxe.ds.Vector`.

### PNull

```haxe
PNull(t:hxbit.PropTypeDesc.PropType)
```

A nullable value.

### PUnknown

```haxe
PUnknown
```

An unknown type.

### PDynamic

```haxe
PDynamic
```

A `Dynamic` value (see `Serializer.addDynamic`).

### PInt64

```haxe
PInt64
```

An `haxe.Int64`.

### PFlags

```haxe
PFlags(t:hxbit.PropTypeDesc.PropType)
```

`haxe.EnumFlags`, stored as an integer.

### PCustom

```haxe
PCustom
```

A `CustomSerializable` value.

### PSerInterface

```haxe
PSerInterface(name:String)
```

A `Serializable` object implementing the given interface.

### POldStruct

```haxe
POldStruct(name:String, fields:Array<{ type:hxbit.PropTypeDesc.PropType, name:String }>)
```

A `StructSerializable` value, as stored in older data with its fields.

### PAliasCDB

```haxe
PAliasCDB(k:hxbit.PropTypeDesc.PropType)
```

A CastleDB type (abstract with `@:cdb`), stored as its underlying type.

### PNoSave

```haxe
PNoSave(k:hxbit.PropTypeDesc.PropType)
```

A `@:noSave` value: not saved, only sent over the network.

### PStruct

```haxe
PStruct(name:String)
```

A `StructSerializable` value of the given class.

### PDouble

```haxe
PDouble
```

A `Double`, stored with 64 bits precision.

### PRPC

```haxe
PRPC(mode:RpcMode, args:Array<hxbit.PropTypeDesc.PropType>, ret:hxbit.PropTypeDesc.PropType)
```

A RPC, with its mode, arguments and return type.
