# hxbit.TypeConvert

**class** · package [`hxbit`](README.md) · module `hxbit.Convert` · source [`hxbit/Convert.hx`](../../../../hxbit/Convert.hx)

The conversion of the values of an enum or a structure saved with an older schema.

## Constructor

### new

```haxe
function new(classPath:String, classValue:Dynamic, ourSchema:Schema, schema:Schema, isStruct:Bool):Void
```

Creates the conversion from the saved `schema` to the current schema `ourSchema`.

## Variables

### classValue

```haxe
var classValue:Dynamic
```

The enum or class of the values.

### constructs

```haxe
var constructs:Array<Convert>
```

The conversion of each saved constructor or field (`null` when unchanged).

### reindex

```haxe
var reindex:Array<Int>
```

The current index of each saved constructor or field (`-1` if removed).

### isStruct

```haxe
var isStruct:Bool
```

Tells if the values are structures.
