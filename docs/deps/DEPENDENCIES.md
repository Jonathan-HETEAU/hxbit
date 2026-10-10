# HxBit — carte des dépendances

> Généré par `tools/docgen/deps.py` (analyse statique, sans compilateur Haxe). Ne pas éditer à la main.

- Modules (fichiers `.hx`) : **22** — lignes : **9550** — packages : **1**
- Dépendances module→module : **64**
- Cycles de modules (SCC > 1) : **1**

Légende des types d'arêtes : `import`, `using`, `extends`, `implements`, `use` (référence dans le code).

## Packages

| Package | Modules | Lignes | Blocs doc `/** */` | Dépend de (packages) | Utilisé par |
|---|---:|---:|---:|---|---|
| [`hxbit`](modules/hxbit.md) | 22 | 9550 | 439 | — | 0 |

## Graphe des packages (niveau 2)

```mermaid
flowchart LR
```

## Cycles entre packages

Aucun.

## Ordre de documentation suggéré

Ordre topologique (les dépendances d'abord). Les modules entre crochets forment un cycle et doivent être documentés ensemble.

1. [`hxbit.UID`](modules/hxbit.md#hxbituid)
2. [[`hxbit.Convert`](modules/hxbit.md#hxbitconvert), [`hxbit.CustomSerializable`](modules/hxbit.md#hxbitcustomserializable), [`hxbit.EnumFlagsProxy`](modules/hxbit.md#hxbitenumflagsproxy), [`hxbit.Macros`](modules/hxbit.md#hxbitmacros), [`hxbit.NetworkHost`](modules/hxbit.md#hxbitnetworkhost), [`hxbit.NetworkSerializable`](modules/hxbit.md#hxbitnetworkserializable), [`hxbit.NetworkStats`](modules/hxbit.md#hxbitnetworkstats), [`hxbit.Proxy`](modules/hxbit.md#hxbitproxy), [`hxbit.ReadOnly`](modules/hxbit.md#hxbitreadonly), [`hxbit.Schema`](modules/hxbit.md#hxbitschema), [`hxbit.Serializable`](modules/hxbit.md#hxbitserializable), [`hxbit.Serializer`](modules/hxbit.md#hxbitserializer), [`hxbit.StructSerializable`](modules/hxbit.md#hxbitstructserializable), [`hxbit.VisibilityGroup`](modules/hxbit.md#hxbitvisibilitygroup)]
3. [`hxbit.ArrayProxy`](modules/hxbit.md#hxbitarrayproxy)
4. [`hxbit.Closure`](modules/hxbit.md#hxbitclosure)
5. [`hxbit.Double`](modules/hxbit.md#hxbitdouble)
6. [`hxbit.Dump`](modules/hxbit.md#hxbitdump)
7. [`hxbit.MapProxy`](modules/hxbit.md#hxbitmapproxy)
8. [`hxbit.VectorProxy`](modules/hxbit.md#hxbitvectorproxy)
9. [`hxbit.Weak`](modules/hxbit.md#hxbitweak)

## Modules les plus centraux (les plus utilisés)

| Module | Utilisé par | Dépend de | Lignes |
|---|---:|---:|---:|
| [`hxbit.Serializable`](modules/hxbit.md#hxbitserializable) | 11 | 5 | 122 |
| [`hxbit.NetworkSerializable`](modules/hxbit.md#hxbitnetworkserializable) | 10 | 6 | 406 |
| [`hxbit.Macros`](modules/hxbit.md#hxbitmacros) | 8 | 11 | 3360 |
| [`hxbit.Serializer`](modules/hxbit.md#hxbitserializer) | 8 | 7 | 1716 |
| [`hxbit.Schema`](modules/hxbit.md#hxbitschema) | 7 | 3 | 73 |
| [`hxbit.UID`](modules/hxbit.md#hxbituid) | 6 | 0 | 28 |
| [`hxbit.NetworkHost`](modules/hxbit.md#hxbitnetworkhost) | 3 | 5 | 1613 |
| [`hxbit.StructSerializable`](modules/hxbit.md#hxbitstructserializable) | 3 | 2 | 37 |
| [`hxbit.VisibilityGroup`](modules/hxbit.md#hxbitvisibilitygroup) | 2 | 1 | 14 |
| [`hxbit.Convert`](modules/hxbit.md#hxbitconvert) | 1 | 2 | 292 |
| [`hxbit.CustomSerializable`](modules/hxbit.md#hxbitcustomserializable) | 1 | 2 | 11 |
| [`hxbit.EnumFlagsProxy`](modules/hxbit.md#hxbitenumflagsproxy) | 1 | 1 | 100 |
| [`hxbit.NetworkStats`](modules/hxbit.md#hxbitnetworkstats) | 1 | 6 | 332 |
| [`hxbit.Proxy`](modules/hxbit.md#hxbitproxy) | 1 | 1 | 30 |
| [`hxbit.ReadOnly`](modules/hxbit.md#hxbitreadonly) | 1 | 1 | 49 |
| [`hxbit.ArrayProxy`](modules/hxbit.md#hxbitarrayproxy) | 0 | 1 | 538 |
| [`hxbit.Closure`](modules/hxbit.md#hxbitclosure) | 0 | 2 | 228 |
| [`hxbit.Double`](modules/hxbit.md#hxbitdouble) | 0 | 0 | 28 |
| [`hxbit.Dump`](modules/hxbit.md#hxbitdump) | 0 | 3 | 168 |
| [`hxbit.MapProxy`](modules/hxbit.md#hxbitmapproxy) | 0 | 1 | 256 |
| [`hxbit.VectorProxy`](modules/hxbit.md#hxbitvectorproxy) | 0 | 1 | 115 |
| [`hxbit.Weak`](modules/hxbit.md#hxbitweak) | 0 | 3 | 34 |
