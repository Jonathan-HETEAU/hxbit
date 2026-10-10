# hxbit.NetworkClient

**class** · package [`hxbit`](README.md) · module `hxbit.NetworkHost` · source [`hxbit/NetworkHost.hx`](../../../../hxbit/NetworkHost.hx)

A connection of a `NetworkHost`: on the server (authority), one for each connected client; on a client, the connection to the server. Extend it to send the data (override `send`) and call `processMessagesData` when data is received.

## Constructor

### new

```haxe
function new(h:NetworkHost):Void
```

Creates a connection of the host.

## Variables

### seqID

```haxe
var seqID:Int
```

The sequence number of the client, given by the server: the UIDs allocated by the client start with it, so they don't conflict with the other clients.

### ownerObject

```haxe
var ownerObject(default, set):NetworkSerializable
```

The object representing the client (its player), given to `NetworkSerializable.networkAllow` and `evalVisibility`.

### lastMessage

```haxe
var lastMessage:Float
```

The time (`haxe.Timer.stamp`) of the last data received, used for the `NetworkHost.clientTimeout`.

### lastSentMessage

```haxe
var lastSentMessage:Float
```

The time (`haxe.Timer.stamp`) of the last data sent, used for the `NetworkHost.autoPingTime`.

### ctx _(hl with -D hxbit_visibility only)_

```haxe
var ctx:NetworkSerializer
```

The serializer of the data sent to the client (with `-D hxbit_visibility`).

## Methods

### sync

```haxe
function sync():Void
```

Sends the full state to a newly connected client (pending client of the server): all the replicated objects. The client then receives `NetworkHost.onFullSync`.

### sendMessage

```haxe
function sendMessage(msg:Dynamic):Void
```

Sends a message to the other side, received by `NetworkHost.onMessage`.

### timeout

```haxe
function timeout():Void
```

Called when nothing was received for `NetworkHost.clientTimeout` seconds. Calls `stop` by default.

### stop

```haxe
function stop():Void
```

Closes the connection: removes the client from the host.
