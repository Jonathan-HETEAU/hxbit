# hxbit.RpcMode

**enum** · package [`hxbit`](README.md) · module `hxbit.Macros` · source [`hxbit/Macros.hx`](../../../../hxbit/Macros.hx)

The modes of the `@:rpc(mode)` methods of a `NetworkSerializable`.

## Constructors

### All

```haxe
All
```

When called on the client: will forward the call on the server (if networkAllows(RPC) allows it), but not execute locally.
When called on the server: will forward the call to the clients (and force its execution), then execute.
This is the default behavior.

### Clients

```haxe
Clients
```

When called on the server: will forward the call to the clients, but not execute locally.
When called on the client: will execute locally.

### Server

```haxe
Server
```

When called on the client: will forward the call the server (if networkAllow(RPCServer) allows it), but not execute locally.
When called on the server: will execute locally.

### Owner

```haxe
Owner
```

When called on the client: will forward the call to the server (if networkAllow(RPC) allows it), but not execute locally.
When called on the server: will forward the call to the owners as defined by networkAllow(Ownership).

### Immediate

```haxe
Immediate
```

When called on the client: will forward the call to the server and other clients (if networkAllows(RPC) allows it) and execute locally immediately.
When called on the server: will forward the call to the clients (and force its execution), then execute.

### Checked

```haxe
Checked
```

Variant of @:rpc(server) that also generates check{Name} and can{Name} functions that skip execution of code within @:do { } blocks.
