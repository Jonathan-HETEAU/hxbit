# hxbit.ConvertField

**class** · package [`hxbit`](README.md) · module `hxbit.Convert` · source [`hxbit/Convert.hx`](../../../../hxbit/Convert.hx)

How a field is converted from the saved schema to the current one.

## Constructor

### new

```haxe
function new(path:String, from:Null<FieldType>, to:Null<FieldType>):Void
```

Creates the conversion of a field.

## Variables

### path

```haxe
var path:String
```

The path of the field (`ClassName.fieldName`), or `null` for an added field.

### index

```haxe
var index:Int
```

The index of the field in the saved data.

### same

```haxe
var same:Bool
```

Tells if the field has the same type in both schemas.

### defaultValue

```haxe
var defaultValue:Dynamic
```

The value of an added field, or of a changed field with a `null` value.

### conv

```haxe
var conv:() -> Dynamic
```

The converter registered for the field with `Convert.registerConverter`, or `null`.

### written

```haxe
var written:Bool
```

Tells if the saved field still exists.
