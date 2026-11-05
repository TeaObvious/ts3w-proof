# Original managed service registration and retained factories

## Scope and authority

Selected complete PC1.67 methods from the original ScriptCore.dll and SimIFace.dll
S3SA resources. Existing central assembly/resource identities remain authoritative.
These are actual original ILSpy C# members paired with complete original CIL;
not rebuilt/prepared assemblies or executed observations. Eight reviewed bodies total305
CIL bytes: seven new complete bodies retain284 bytes, while the existing complete
21-byte FlushLookAtQueue body is reused from the caller collection. Original method tokens, RVAs and full typed declarations are in the
[member index](../../evidence/managed/selected/service-registration/method-index.tsv);
[direct call/delegate edges](../../evidence/managed/selected/service-registration/call-edges.tsv)
include their actual IL offsets. Native backing, original startup schedule and
runtime callback acceptance are outside this selected set.

## EventQueue constructor producer and consumer

[EventQueueInitializer C#](../../evidence/managed/types/ScriptCore.EventQueueInitializer.cs)
and [complete ScriptCore IL](../../evidence/managed/selected/service-registration/ScriptCore.il.txt)
show060005E4 building an empty Type array, obtaining public ScriptCore.EventQueue()
and publishing that ConstructorInfo under EventQueueCtor. There is no null check,
native allocation or exception handler in this initializer.

[EventQueueHost C#](../../evidence/managed/types/Sims3.SimIFace.EventQueueHost.cs)
and [complete SimIFace IL](../../evidence/managed/selected/service-registration/SimIFace.il.txt)
show06000BCA's lazy cache. When sCtorInfo is null it reads EventQueueCtor and casts
it; while still null it returns null. A nonnull cached constructor is invoked
with a zero-length Object array and cast to IEventQueue. The body does not clear
or reacquire a nonnull cache when the AppDomain slot changes. Wrong cast,
constructor arity/creation exceptions are not caught locally.

Reuse existing [EventQueue implementation](../../evidence/managed/types/ScriptCore.EventQueue.cs)
and its complete constructor060005F2 in [retained caller IL](../../evidence/managed/callers.il.txt).
That constructor retains OnNativeEvent and a native EventQueueHandle; the original
class retains disposal. Publishing a constructor and creating a backed queue are
separate operations. This selection does not establish native queue creation,
callback/wake order or whether a particular bootstrap first caches a stale value.

## Persistence-dependent SACS and stream factories

Reuse [original SACS C#](../../evidence/managed/types/ScriptCore.SACS.cs), paired with
06000D79 in [complete ScriptCore IL](../../evidence/managed/selected/service-registration/ScriptCore.il.txt).
Its order is base CallbackObject constructor, AppDomain SacsProxy publication,
then subscription to the current original LoadSaveManager.Instance's
ObjectGroupSaving. There is no local catch or rollback. A later failed subscription
does not locally undo earlier publication. This establishes the local persistence
dependency, not whole initializer scheduling or native JAZZ completion.

Reuse [original StreamHost C#](../../evidence/managed/types/ScriptCore.StreamHost.cs),
paired with06001040 in the same IL selection. It creates retained instance delegates
for CreateFastBaseStreamWriter then CreateFastBaseStreamReader and assigns the
original factory fields in that order. It does not register an AppDomain service
slot. Reader/writer use and load completion are distinct contracts; see
[object-table preparation](../objects/managed-object-table-preparation.md).

## Look-at delegation

[Actual LookAtMgr C#](../../evidence/managed/types/ScriptCore.LookAtMgr.cs), paired
with06000FF5/FF6 in the ScriptCore IL selection and complete06000FF7 in
[retained caller IL](../../evidence/managed/callers.il.txt), establishes:

- Constructor publishes this instance under LookAtMgr.
- CreateLookAtTask directly invokes the original LookAtTask constructor with
  IScriptProxy, signed Int32 priority and LookAtJointFilter.
- Flush obtains the proxy's ObjectGuid.Value and forwards its full UInt64 bits
  plus signed priority into LookAt_FlushLookAtQueueImpl, returning its Int32.

Reuse existing LookAtTask constructor06000FCF in
[retained caller IL](../../evidence/managed/callers.il.txt). Native task lifetime,
callback ownership and the full look-at manager consumer remain separate.

## Random facade's lazy cache

[Actual complete NextDouble member](../../evidence/managed/types/Sims3.SimIFace.RandomGen.service.cs)
and06000BD9 in the SimIFace IL selection establish a lazy gRandomGen cache. A
missing value is read from the RandomGen AppDomain slot; still missing returns
Double0. Otherwise the retained IRandom.NextDouble is called. This is not an
AppDomain read in a static initializer, and slot replacement does not refresh an
already nonnull service here. Reuse [ScriptCore.Random](../../evidence/managed/types/ScriptCore.Random.cs)
for its distinct concrete service and native random import. No native sequence
or whole-runtime caching claim follows from this facade.

## Existing RouteSlot registration limit

Reuse the complete original [RouteManager C#](../../evidence/managed/types/ScriptCore.RouteManager.cs)
([typed IL](../../evidence/managed/types/ScriptCore.RouteManager.il.txt)). Its
initializer performs a public constructor lookup on ScriptCore.Route with
IScriptProxy, UInt32, IScriptProxy and UInt32[] and publishes the returned value
under RouteSlotCtor without a null guard.

The original ScriptCore.Route TypeDef02000089 constructor declarations are only
0600114F(),06001150(IScriptProxy,UInt32), and
06001151(IScriptProxy,UInt32,UInt32). Existing complete
[Route C#](../../evidence/managed/types/ScriptCore.Route.cs) retains those members;
no four-argument constructor is declared. Original ScriptCore/SimIFace TypeDef
inventories contain no Sims3.SimIFace.RouteSlot. Thus this original lookup returns
null; a distinct RouteSlot implementation must not be invented from the slot name.
The actual consumer, whether/when the slot is used, and later registration remain
unestablished. No missing-route runtime defect is concluded from the null lookup.
