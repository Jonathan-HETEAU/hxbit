# Package `hxbit`

[← retour](../DEPENDENCIES.md)

## hxbit.ArrayProxy

- Fichier : `hxbit/ArrayProxy.hx` — 538 lignes — 60 blocs doc
- Types : `class ArrayProxyData`, `class ArrayProxyIterator`, `abstract ArrayProxy`, `abstract ArrayProxy2`
- Héritage : `ArrayProxyData` extends `BaseProxy`
- Dépend de : `hxbit.NetworkSerializable` (extends/import/use)

## hxbit.Closure

- Fichier : `hxbit/Closure.hx` — 228 lignes — 3 blocs doc — contient du `#if`
- Types : `class Closure`
- Dépend de : `hxbit.Macros`, `hxbit.Serializable`

## hxbit.Convert

- Fichier : `hxbit/Convert.hx` — 292 lignes — 25 blocs doc
- Types : `class ConvertField`, `class Convert`, `class TypeConvert`
- Dépend de : `hxbit.Schema`, `hxbit.Serializable`
- Utilisé par : `hxbit.Serializer`

## hxbit.CustomSerializable

- Fichier : `hxbit/CustomSerializable.hx` — 11 lignes — 1 blocs doc
- Types : `interface CustomSerializable`
- Héritage : `CustomSerializable` extends `Serializable.AnySerializable`
- Dépend de : `hxbit.Serializable`, `hxbit.Serializer`
- Utilisé par : `hxbit.Serializer`

## hxbit.Double

- Fichier : `hxbit/Double.hx` — 28 lignes — 1 blocs doc
- Types : `abstract Double`

## hxbit.Dump

- Fichier : `hxbit/Dump.hx` — 168 lignes — 4 blocs doc
- Types : `class Dump`
- Héritage : `Dump` extends `Serializer`
- Dépend de : `hxbit.Schema`, `hxbit.Serializable`, `hxbit.Serializer` (extends/use)

## hxbit.EnumFlagsProxy

- Fichier : `hxbit/EnumFlagsProxy.hx` — 100 lignes — 11 blocs doc
- Types : `class EnumFlagsData`, `abstract EnumFlagsProxy`
- Héritage : `EnumFlagsData` extends `NetworkSerializable.BaseProxy`
- Dépend de : `hxbit.NetworkSerializable`
- Utilisé par : `hxbit.Macros`

## hxbit.Macros

- Fichier : `hxbit/Macros.hx` — 3360 lignes — 64 blocs doc — contient du `#if`
- Types : `enum RpcMode`, `enum PropTypeDesc`, `typedef PropType`, `enum Condition`, `class Macros`
- Dépend de : `hxbit.EnumFlagsProxy`, `hxbit.NetworkHost`, `hxbit.NetworkSerializable`, `hxbit.Proxy`, `hxbit.ReadOnly`, `hxbit.Schema`, `hxbit.Serializable`, `hxbit.Serializer`, `hxbit.StructSerializable`, `hxbit.UID`, `hxbit.VisibilityGroup`
- Utilisé par : `hxbit.Closure`, `hxbit.NetworkSerializable`, `hxbit.Proxy`, `hxbit.ReadOnly`, `hxbit.Schema`, `hxbit.Serializable`, `hxbit.StructSerializable`, `hxbit.VisibilityGroup`

## hxbit.MapProxy

- Fichier : `hxbit/MapProxy.hx` — 256 lignes — 26 blocs doc
- Types : `class MapData`, `abstract MapProxy`, `abstract MapProxy2`
- Héritage : `MapData` extends `BaseProxy`
- Dépend de : `hxbit.NetworkSerializable` (extends/import/use)

## hxbit.NetworkHost

- Fichier : `hxbit/NetworkHost.hx` — 1613 lignes — 57 blocs doc — contient du `#if`
- Types : `class NetworkClient`, `class NetworkHost`
- Dépend de : `hxbit.NetworkSerializable` (import/use), `hxbit.NetworkStats`, `hxbit.Serializable`, `hxbit.Serializer`, `hxbit.UID`
- Utilisé par : `hxbit.Macros`, `hxbit.NetworkSerializable`, `hxbit.Weak`

## hxbit.NetworkSerializable

- Fichier : `hxbit/NetworkSerializable.hx` — 406 lignes — 54 blocs doc — contient du `#if`
- Types : `interface ProxyHost`, `interface ProxyChild`, `interface NetworkNoReplication`, `enum_abstract Operation`, `interface NetworkSerializable`, `class BaseProxy`, `abstract NetworkProperty`, `class NetworkSerializer`
- Héritage : `NetworkSerializable` extends `Serializable`, `NetworkSerializable` extends `ProxyHost`, `BaseProxy` implements `ProxyHost`, `BaseProxy` implements `ProxyChild`, `NetworkSerializer` extends `Serializer`
- Dépend de : `hxbit.Macros`, `hxbit.NetworkHost`, `hxbit.Schema`, `hxbit.Serializable` (extends/use), `hxbit.Serializer` (extends/use), `hxbit.VisibilityGroup`
- Utilisé par : `hxbit.ArrayProxy`, `hxbit.EnumFlagsProxy`, `hxbit.Macros`, `hxbit.MapProxy`, `hxbit.NetworkHost`, `hxbit.NetworkStats`, `hxbit.Serializable`, `hxbit.Serializer`, `hxbit.VectorProxy`, `hxbit.Weak`

## hxbit.NetworkStats

- Fichier : `hxbit/NetworkStats.hx` — 332 lignes — 20 blocs doc — contient du `#if`
- Types : `typedef StatClass`, `typedef Stat`, `enum EmptyEnum`, `class NetworkStats`
- Dépend de : `hxbit.NetworkSerializable`, `hxbit.Schema`, `hxbit.Serializable`, `hxbit.Serializer`, `hxbit.StructSerializable`, `hxbit.UID`
- Utilisé par : `hxbit.NetworkHost`

## hxbit.Proxy

- Fichier : `hxbit/Proxy.hx` — 30 lignes — 1 blocs doc
- Types : `class Proxy`
- Dépend de : `hxbit.Macros`
- Utilisé par : `hxbit.Macros`

## hxbit.ReadOnly

- Fichier : `hxbit/ReadOnly.hx` — 49 lignes — 4 blocs doc
- Types : `class ReadOnly`, `typedef ReadOnlyArray`, `abstract ReadOnlyVector`, `abstract ReadOnlyMap`
- Dépend de : `hxbit.Macros`
- Utilisé par : `hxbit.Macros`

## hxbit.Schema

- Fichier : `hxbit/Schema.hx` — 73 lignes — 7 blocs doc — contient du `#if`
- Types : `typedef FieldType`, `class Schema`
- Héritage : `Schema` implements `Serializable`
- Dépend de : `hxbit.Macros`, `hxbit.Serializable` (implements/use), `hxbit.Serializer`
- Utilisé par : `hxbit.Convert`, `hxbit.Dump`, `hxbit.Macros`, `hxbit.NetworkSerializable`, `hxbit.NetworkStats`, `hxbit.Serializable`, `hxbit.Serializer`

## hxbit.Serializable

- Fichier : `hxbit/Serializable.hx` — 122 lignes — 19 blocs doc — contient du `#if`
- Types : `abstract MarkInfo`, `abstract MarkParam`, `interface AnySerializable`, `interface Serializable`, `class SerializableEnum`
- Héritage : `Serializable` extends `AnySerializable`
- Dépend de : `hxbit.Macros`, `hxbit.NetworkSerializable`, `hxbit.Schema`, `hxbit.Serializer`, `hxbit.UID`
- Utilisé par : `hxbit.Closure`, `hxbit.Convert`, `hxbit.CustomSerializable`, `hxbit.Dump`, `hxbit.Macros`, `hxbit.NetworkHost`, `hxbit.NetworkSerializable`, `hxbit.NetworkStats`, `hxbit.Schema`, `hxbit.Serializer`, `hxbit.StructSerializable`

## hxbit.Serializer

- Fichier : `hxbit/Serializer.hx` — 1716 lignes — 67 blocs doc — contient du `#if`
- Types : `class NativeKeyValueIterator`, `abstract UIDMap`, `typedef UIDMap`, `class Serializer`
- Dépend de : `hxbit.Convert`, `hxbit.CustomSerializable`, `hxbit.NetworkSerializable`, `hxbit.Schema`, `hxbit.Serializable`, `hxbit.StructSerializable`, `hxbit.UID`
- Utilisé par : `hxbit.CustomSerializable`, `hxbit.Dump`, `hxbit.Macros`, `hxbit.NetworkHost`, `hxbit.NetworkSerializable`, `hxbit.NetworkStats`, `hxbit.Schema`, `hxbit.Serializable`

## hxbit.StructSerializable

- Fichier : `hxbit/StructSerializable.hx` — 37 lignes — 1 blocs doc — contient du `#if`
- Types : `interface StructSerializable`
- Héritage : `StructSerializable` extends `Serializable.AnySerializable`
- Dépend de : `hxbit.Macros`, `hxbit.Serializable`
- Utilisé par : `hxbit.Macros`, `hxbit.NetworkStats`, `hxbit.Serializer`

## hxbit.UID

- Fichier : `hxbit/UID.hx` — 28 lignes — 1 blocs doc — contient du `#if`
- Types : `typedef UID`
- Utilisé par : `hxbit.Macros`, `hxbit.NetworkHost`, `hxbit.NetworkStats`, `hxbit.Serializable`, `hxbit.Serializer`, `hxbit.Weak`

## hxbit.VectorProxy

- Fichier : `hxbit/VectorProxy.hx` — 115 lignes — 9 blocs doc
- Types : `class VectorProxyData`, `abstract VectorProxy`
- Héritage : `VectorProxyData` extends `BaseProxy`
- Dépend de : `hxbit.NetworkSerializable` (extends/import/use)

## hxbit.VisibilityGroup

- Fichier : `hxbit/VisibilityGroup.hx` — 14 lignes — 2 blocs doc — contient du `#if`
- Types : `typedef VisibilityGroup`, `enum VisibilityGroup`
- Dépend de : `hxbit.Macros`
- Utilisé par : `hxbit.Macros`, `hxbit.NetworkSerializable`

## hxbit.Weak

- Fichier : `hxbit/Weak.hx` — 34 lignes — 2 blocs doc
- Types : `abstract Weak`
- Dépend de : `hxbit.NetworkHost`, `hxbit.NetworkSerializable`, `hxbit.UID`
