# hxbit.Operation

**enum abstract** · package [`hxbit`](README.md) · module `hxbit.NetworkSerializable` · source [`hxbit/NetworkSerializable.hx`](../../../../hxbit/NetworkSerializable.hx)

The operations a client can be allowed to do on an object, checked with `NetworkSerializable.networkAllow`.

Underlying type: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `RPC` | `0` | Allows initiating RPC on client side (only "normal" and "owner" rpc are checked against it). |
| `RPCServer` | `1` | Tells if the client is allowed to call a rpc(server) for this object |
| `RPCOwner` | `6` | Tells if the client is allowed to call a rpc(owner) for this object |
| `Ownership` | `2` | Tells if the client is to be the target of the rpc(owner) messages |
| `SetField` | `3` | Tells if the client is allowed to set fields for this object |
| `Register` | `4` | Tells if the client is allowed to enable replication for this object |
| `Unregister` | `5` | Tells if the client is allowed to disable replication for this object |
