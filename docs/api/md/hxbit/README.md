# Package `hxbit`

[← API index](../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AnySerializable`](AnySerializable.md) | interface | A value serialized by a `Serializer`: a `Serializable` object, or a `StructSerializable` structure. |
| [`ArrayProxy`](ArrayProxy.md) | abstract | The proxy of an `Array` stored in a property of a `NetworkSerializable`: the functions modifying the array mark the property as changed, which sends the whole array again. |
| [`ArrayProxy2`](ArrayProxy2.md) | abstract | The proxy of an `Array` of proxies (an array of mutable values): like `ArrayProxy`, and the values are bound to the array, so that their changes mark the property as changed. |
| [`ArrayProxyData`](ArrayProxyData.md) | class | The data of an `ArrayProxy`: the wrapped array, and the property of the host it is bound to. |
| [`ArrayProxyIterator`](ArrayProxyIterator.md) | class | An iterator over the values of an array. |
| [`BaseProxy`](BaseProxy.md) | class | The base class of the generated proxies. |
| [`Closure`](Closure.md) | class | A serializable function, returning `T`: create it with `Closure.make(function() ...)`. |
| [`Convert`](Convert.md) | class | The conversion of the data of a class saved with an older schema: removed fields are skipped, added fields get a default value, and fields whose type changed are converted (see `registerConverter`). |
| [`ConvertField`](ConvertField.md) | class | How a field is converted from the saved schema to the current one. |
| [`CustomSerializable`](CustomSerializable.md) | interface | Custom serializable are more lightweight (no versioning etc.) than normal Serializable but a bit larger when serializing. |
| [`Double`](Double.md) | abstract | A Float that is serialized with full 64 bits precision (instead of 32 bits for Float). |
| [`Dump`](Dump.md) | class | Converts versioned data (written by `Serializer.endSave`) to a structure that can be saved as JSON, for debugging. |
| [`EnumFlagsData`](EnumFlagsData.md) | class | The data of an `EnumFlagsProxy`: the wrapped flags, and the property of the host it is bound to. |
| [`EnumFlagsProxy`](EnumFlagsProxy.md) | abstract | The proxy of `haxe.EnumFlags` stored in a property of a `NetworkSerializable`: setting or unsetting a flag marks the property as changed. |
| [`FieldType`](FieldType.md) | typedef | The type of a serialized field, as stored in a `Schema`. |
| [`Macros`](Macros.md) | class | The macros generating the serialization and network code of `Serializable`, `StructSerializable` and `NetworkSerializable` classes, and helpers called by the generated code. |
| [`MapData`](MapData.md) | class | The data of a `MapProxy`: the wrapped map, and the property of the host it is bound to. |
| [`MapProxy`](MapProxy.md) | abstract | The proxy of a `Map` stored in a property of a `NetworkSerializable`: the functions modifying the map mark the property as changed, which sends the whole map again. |
| [`MapProxy2`](MapProxy2.md) | abstract | The proxy of a `Map` of proxies (a map of mutable values): like `MapProxy`, and the values are bound to the map, so that their changes mark the property as changed. |
| [`MarkInfo`](MarkInfo.md) | abstract | The marking parameters of `AnySerializable.markReferences`: `set` is the bits set on the marked objects (`__mark`), `mask` the bits kept. |
| [`MarkParam`](MarkParam.md) | abstract | The visibility groups of the objects, by UID, used when marking the references visible from a client (`null` for all the references). |
| [`NetworkClient`](NetworkClient.md) | class | A connection of a `NetworkHost`: on the server (authority), one for each connected client; on a client, the connection to the server. |
| [`NetworkHost`](NetworkHost.md) | class | Replicates `NetworkSerializable` objects between a server (the authority, `isAuth`) and its clients: sends the changed properties, the registered and unregistered objects and the RPCs. |
| [`NetworkNoReplication`](NetworkNoReplication.md) | interface | Classes implementing this will not be replicated over the network |
| [`NetworkProperty`](NetworkProperty.md) | abstract | A property of a `NetworkSerializable`, as the `networkProp<Name>` constants: they can be combined with `\|`. |
| [`NetworkSerializable`](NetworkSerializable.md) | interface | A `Serializable` object that can be replicated over the network by a `NetworkHost`: its `@:s` fields are synchronized from the authority to the clients, and its `@:rpc` methods are remote procedure calls (see the READ... |
| [`NetworkSerializer`](NetworkSerializer.md) | class | The `Serializer` of a `NetworkHost` and of its clients: it writes the `@:noSave` fields (`forSave` is `false`), shares the objects with `enableAutoReplication` when they are sent, and checks that the referenced object... |
| [`NetworkStats`](NetworkStats.md) | class | Collects the number of times each property and RPC is sent and the number of bytes used, by class (see `NetworkHost.setStats`). |
| [`Operation`](Operation.md) | enum abstract | The operations a client can be allowed to do on an object, checked with `NetworkSerializable.networkAllow`. |
| [`PropType`](PropType.md) | typedef | A serialized type, with the options given by the field metadata. |
| [`PropTypeDesc`](PropTypeDesc.md) | enum | The type of a serialized value, as used by the macros and stored in the schemas (see `Schema.FieldType`). |
| [`Proxy`](Proxy.md) | class | The proxy type generated for the mutable type `T` (`Array`, `Map`, `haxe.ds.Vector`, structure): wraps a value to mark the network property changed when the value is modified (see `ArrayProxy`, `MapProxy`, `VectorProx... |
| [`ProxyChild`](ProxyChild.md) | interface | A proxy, wrapping a mutable value stored in a property of a `ProxyHost`. |
| [`ProxyHost`](ProxyHost.md) | interface | An object notified when a value it contains is modified: a `NetworkSerializable`, or a proxy containing other proxies. |
| [`ReadOnly`](ReadOnly.md) | class | The read-only version of the type `T`, generated by a macro: arrays, maps, vectors and structures are replaced by read-only types, recursively. |
| [`ReadOnlyArray`](ReadOnlyArray.md) | typedef | A read-only array. |
| [`ReadOnlyMap`](ReadOnlyMap.md) | abstract | A read-only `Map`. |
| [`ReadOnlyVector`](ReadOnlyVector.md) | abstract | A read-only `haxe.ds.Vector`. |
| [`RpcMode`](RpcMode.md) | enum | The modes of the `@:rpc(mode)` methods of a `NetworkSerializable`. |
| [`Schema`](Schema.md) | class | The description of the serialized fields of a class, an enum or a structure: stored with the data by `Serializer.endSave`, and compared with the current schema by `Serializer.beginLoad` to convert data saved with olde... |
| [`Serializable`](Serializable.md) | interface | An object serialized by a `Serializer`: its fields marked with `@:s` are serialized, by code generated at compile time (`hxbit.Macros.buildSerializable`). |
| [`SerializableEnum`](SerializableEnum.md) | class | The serializer generated for the enum `T` (in the `hxbit.enumSer` package), with static methods to serialize, unserialize and get the schema of its values. |
| [`Serializer`](Serializer.md) | class | Reads and writes the binary data of `Serializable` objects and of the basic values. |
| [`Stat`](Stat.md) | typedef | The statistics of a property or of a RPC. |
| [`StatClass`](StatClass.md) | typedef | The statistics of a class. |
| [`StructSerializable`](StructSerializable.md) | interface | StructSerializable is a slighlty more compact version of Serializable, but doesn't have a unique id so it shouldn't be referenced multiple times. |
| [`TypeConvert`](TypeConvert.md) | class | The conversion of the values of an enum or a structure saved with an older schema. |
| [`UID`](UID.md) | typedef | The unique identifier of a `Serializable` object: an `Int`, or an `haxe.Int64` with `-D hxbit64`. |
| [`UIDMap`](UIDMap.md) | typedef | A map of values by object UID. |
| [`VectorProxy`](VectorProxy.md) | abstract | The proxy of a `haxe.ds.Vector` stored in a property of a `NetworkSerializable`: setting a value or sorting marks the property as changed, which sends the whole vector again. |
| [`VectorProxyData`](VectorProxyData.md) | class | The data of a `VectorProxy`: the wrapped vector, and the property of the host it is bound to. |
| [`VisibilityGroup`](VisibilityGroup.md) | enum | The visibility groups of the `@:visible(group)` fields, set with `hxbit.Macros.initVisibility` (with `-D hxbit_visibility`). |
| [`VisibilityGroupDef`](VisibilityGroupDef.md) | enum | The visibility groups set with `hxbit.Macros.initVisibility`. |
| [`Weak`](Weak.md) | abstract | A weak reference to a `NetworkSerializable` object: stores its UID only, and resolves it from the current `NetworkHost`. |
