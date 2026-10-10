# hxbit.Convert

**class** · package [`hxbit`](README.md) · source [`hxbit/Convert.hx`](../../../../hxbit/Convert.hx)

The conversion of the data of a class saved with an older schema: removed fields are skipped, added fields get a default value, and fields whose type changed are converted (see `registerConverter`). The values of the removed fields are stored in the `oldHxBitFields` field of the object, if it has one.

## Constructor

### new

```haxe
function new(classPath:String, ourSchema:Schema, schema:Schema):Void
```

Creates the conversion from the saved `schema` to the current schema `ourSchema` of the class.

## Static methods

### sameType

```haxe
static function sameType(a:FieldType, b:FieldType):Bool
```

Tells if two field types are compatible without conversion.

### getDefault

```haxe
static function getDefault(t:FieldType, defValue:Dynamic):Dynamic
```

Returns the default value of an added field: `defValue` if not `null` (the initial value of the field), or `0`, `false`, an empty array, map or vector.

### registerConverter

```haxe
static function registerConverter(path:String, f:() -> Dynamic):Void
```

Registers a function converting the saved value of the field `path` (`ClassName.fieldName`) when its type changed.

## Variables

### read

```haxe
var read:Array<ConvertField>
```

The fields of the saved data, in order.

### write

```haxe
var write:Array<ConvertField>
```

The fields of the current schema, in order.

### hasCID

```haxe
var hasCID:Bool
```

Tells if the current class has serializable sub classes (a class identifier is stored).

### hadCID

```haxe
var hadCID:Bool
```

Tells if the saved class had serializable sub classes.
