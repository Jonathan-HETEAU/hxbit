# hxbit.Macros

**class** · package [`hxbit`](README.md) · source [`hxbit/Macros.hx`](../../../../hxbit/Macros.hx)

The macros generating the serialization and network code of `Serializable`, `StructSerializable` and `NetworkSerializable` classes, and helpers called by the generated code.

## Static variables

### IGNORED_META

```haxe
static var IGNORED_META:Map<String, Bool>
```

Metadata names (without `:`) allowed on serialized fields: other unknown metadata cause an error.

### VISIBILITY_VALUES

```haxe
static var VISIBILITY_VALUES:Array<Dynamic>
```

The names of the visibility groups (set with `initVisibility`).

### CUSTOM_GETTERS

```haxe
static var CUSTOM_GETTERS:Array<{ ret:ComplexType, name:String, func:() -> Dynamic }>
```

Generate game-specific property getters, mostly to be used in networkAllow()

## Static methods

### initVisibility

```haxe
static function initVisibility(vis:Array<Dynamic>):Void
```

Sets the names of the visibility groups, used by `@:visible(group)` with `-D hxbit_visibility`. Call it from an initialization macro: `--macro hxbit.Macros.initVisibility(["team","owner"])`.

### makeEnumPath

```haxe
static function makeEnumPath(name:String):String
```

Returns the path of the serializer class generated for an enum (in the `hxbit.enumSer` package).

### serializeValue

```haxe
static function serializeValue(ctx:Dynamic, v:Dynamic):Dynamic
```

Writes the value `v` with the serializer `ctx`, with code generated for its type.

### unserializeValue

```haxe
static function unserializeValue(ctx:Dynamic, v:Dynamic, depth:Dynamic, conds:Dynamic):Dynamic
```

Reads a value with the serializer `ctx` and stores it in `v`, with code generated for its type.

### markValue

```haxe
static function markValue(v:Dynamic):Dynamic
```

Marks the objects referenced by the value (see `AnySerializable.markReferences`).

### clearValue

```haxe
static function clearValue(v:Dynamic, ?isEnum:Dynamic):Dynamic
```

Clears the references to marked objects in the value (see `AnySerializable.clearReferences`).

### getFieldType

```haxe
static function getFieldType(v:Dynamic):Dynamic
```

Returns the `Schema.FieldType` of the value.

### getRPCFieldType

```haxe
static function getRPCFieldType(v:Dynamic, rpcMode:Dynamic):Dynamic
```

Returns the `Schema.FieldType` of a RPC function.

### iterType

```haxe
static function iterType(t:PropTypeDesc<iterType.T>, f:() -> Void):Void
```

Calls `f` for each type contained in the type (keys and values of maps, values of arrays, fields of structures...).

### checkSuccess

```haxe
static function checkSuccess(e:Dynamic):Dynamic
```

Tells if the result of a `@:rpc(checked)` method is a success: a `Bool`, or the value given by `@:rpcSuccess` for an enum (`null` is the success otherwise).
