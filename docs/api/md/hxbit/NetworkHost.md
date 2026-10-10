# hxbit.NetworkHost

**class** · package [`hxbit`](README.md) · source [`hxbit/NetworkHost.hx`](../../../../hxbit/NetworkHost.hx)

Replicates `NetworkSerializable` objects between a server (the authority, `isAuth`) and its clients: sends the changed properties, the registered and unregistered objects and the RPCs.

The transport is not implemented here: extend `NetworkHost` and `NetworkClient` (see `hxd.net.SocketHost` in Heaps). Call `flush` regularly (every frame) to send the changes. The objects with `enableReplication` set are registered on the `current` host.

## Constructor

### new

```haxe
function new():Void
```

Creates the host, as the authority, and makes it the `current` one.

## Static variables

### current

```haxe
static var current:NetworkHost
```

The host on which objects are registered by `NetworkSerializable.enableReplication`. Set by the constructor.

### VERSION

```haxe
static var VERSION:Int
```

A version number included in the signature: increase it to make older clients incompatible.

## Static methods

### getSignature

```haxe
static function getSignature():Bytes
```

Returns the signature of the serializable classes and their RPCs, compared by the clients with the server's (see `onInvalidSignature`).

## Variables

### checkEOM

```haxe
var checkEOM(get, null):Bool
```

Tells if each message ends with an end of message byte, checked when reading.

### isAuth

```haxe
var isAuth(default, null):Bool
```

Tells if this side is the authority (the server): only the authority can change the properties and call the RPCs freely.

### rpcClient

```haxe
var rpcClient(get, null):NetworkClient
```

When a RPC of type Server is performed, this will tell the originating client from the RPC.

### rpcObject

```haxe
var rpcObject:NetworkSerializable
```

When a RPC is being called, this is the object which received the RPC.

### sendRate

```haxe
var sendRate:Float
```

The average number of bytes sent per second, updated by `flush`.

### totalSentBytes

```haxe
var totalSentBytes:Int
```

The total number of bytes sent, including an estimation of the packet headers.

### syncingProperties

```haxe
var syncingProperties:Bool
```

Tells if received properties are being set (in the property setters).

### autoPingTime

```haxe
var autoPingTime:Float
```

Set a regular ping if no other data was sent during this time. Prevent clientTimeout from occuring.
(default : 10s)

### clientTimeout

```haxe
var clientTimeout:Float
```

How much time before a client that didn't sent any data is automaticaly disconnected (default : 60s)

### fullSyncExtraTime

```haxe
var fullSyncExtraTime:Float
```

Gives additional timeout delay after sending a fullSync to a client. (default: 5min)
The client can call ping(true) to indicate that its ready and cancel the extra time.

### clients

```haxe
var clients:Array<NetworkClient>
```

The connected clients (on the server), or the connection to the server (on a client).

### self

```haxe
var self(default, null):NetworkClient
```

The client representing this side.

### lateRegistration

```haxe
var lateRegistration:Bool
```

Delays the registration of the objects to the next `flush`, so that their properties can be set before they are sent.

### rootObject _(hl with -D hxbit_visibility only)_

```haxe
var rootObject:NetworkSerializable
```

The object from which the objects visible by a client are found by `checkReferences` (with `-D hxbit_visibility`).

## Methods

### dispose

```haxe
function dispose():Void
```

Unsets the `current` host if it is this one.

### isConnected

```haxe
function isConnected(owner:NetworkSerializable):Bool
```

Tells if a client has the given owner object.

### resolveClient

```haxe
function resolveClient(owner:NetworkSerializable):NetworkClient
```

Returns the client having the given owner object, or `null`.

### resetState

```haxe
function resetState():Void
```

Forgets all the replicated objects and resets the UIDs.

### saveState

```haxe
function saveState():Bytes
```

Returns the replicated objects as versioned data (see `Serializer.beginSave`).

### loadSave

```haxe
function loadSave(bytes:Bytes):Void
```

Loads the objects saved by `saveState`. Call `makeAlive` after loading.

### ping

```haxe
function ping(?ready:Bool = false):Void
```

This can be used to manually ping the other side.
If you set ready to true, it will also reset the extra time that was set for fullsync

### logError

```haxe
dynamic function logError(msg:String, ?objectId:Null<UID>):Void
```

Called on network errors (for example a not allowed operation of a client). Throws by default.

### onInvalidSignature

```haxe
dynamic function onInvalidSignature():Void
```

Called on a client when the signature of the server is different (see `getSignature`): the classes don't match.

### onMessageFlood

```haxe
dynamic function onMessageFlood(from:NetworkClient, bytes:Bytes, pos:Int, length:Int):Void
```

Called on the server when a client sends too much data at once (more than 1MB, or more than 100 messages).

### onMessage

```haxe
dynamic function onMessage(from:NetworkClient, msg:Dynamic):Void
```

Called when a message sent with `sendMessage` is received.

### onUnregister

```haxe
dynamic function onUnregister(o:NetworkSerializable):Void
```

Called when an object is unregistered by the other side.

### onFullSync

```haxe
dynamic function onFullSync(firstObject:Serializable):Void
```

Called on a client when the full state of the server was received, with the first object.

### onSync

```haxe
dynamic function onSync(obj:NetworkSerializable, bits1:Int, bits2:Int):Void
```

Called when changed properties of the object were received: `bits1` and `bits2` are the changed properties (see `NetworkSerializable.__bits1`).

### onPong

```haxe
dynamic function onPong(from:NetworkClient):Void
```

Called when the answer to a `ping` is received.

### sendMessage

```haxe
function sendMessage(msg:Dynamic, ?to:NetworkClient):Void
```

Sends a message (any value serialized with `haxe.Serializer`, or bytes) to a client, or to all the clients if `to` is `null`. It is received by `onMessage`.

### defaultLogger

```haxe
function defaultLogger(?filter:() -> Bool):Void
```

Logs the network activity with `Sys.println` (or `trace`), for the messages accepted by `filter`.

### addAliveEvent

```haxe
inline function addAliveEvent(f:() -> Void):Void
```

Adds a function called by `makeAlive`, after the `alive` calls.

### isAliveComplete

```haxe
function isAliveComplete():Bool
```

Tells if all the received objects are alive and the alive events were called.

### makeAlive

```haxe
function makeAlive():Void
```

Calls `alive` on the received objects, in order of creation, then the alive events.

### setLogger

```haxe
function setLogger(log:() -> Void):Void
```

Sets the function logging the network activity, or `null`.

### setStats

```haxe
function setStats(stats:NetworkStats):Void
```

Sets the `NetworkStats` collecting the statistics of the data sent, or `null`.

### isPendingRegistration

```haxe
function isPendingRegistration(o:NetworkSerializable):Bool
```

Tells if the registration of the object is delayed to the next `flush` (see `lateRegistration`).

### flush

```haxe
function flush():Void
```

Sends the pending registrations and the changed properties, updates `sendRate`, and handles the client timeouts and automatic pings.

### matchClient _(hl with -D hxbit_visibility only)_

```haxe
function matchClient(obj:NetworkSerializable, from:MarkParam):Bool
```

Tells if the visibility data `from` is the one of the client having the owner object `obj`.

### checkReferences _(hl with -D hxbit_visibility only)_

```haxe
function checkReferences(?client:NetworkClient):Void
```

Unregisters, on the client (or all the clients), the objects which are not visible anymore from the `rootObject` (with `-D hxbit_visibility`).
