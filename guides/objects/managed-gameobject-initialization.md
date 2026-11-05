# Original managed GameObject initialization and placement

## Scope and evidence

This is static original PC1.67 `Sims3GameplaySystems.dll` evidence. The
[central original assembly identity](../../evidence/managed/README.md#matching-original-assembly-identities)
is authoritative. The [method index](../../evidence/managed/selected/gameobject-initialization/method-index.tsv)
selects19 complete original bodies,959 CIL bytes, with exact original tokens/RVAs.
C# is actual annotated ILSpy11.1 selected-member rendering; complete typed
original CIL controls types, instructions, branches and constants. A selected
getter can be rendered as a body fragment; constructor `base..ctor()` text is
retained as emitted. These files are evidence, not a compilable reconstructed
class. The shipped raw-signature reader reports unsupported generic element
`0x15` for some List fields/getters. Their generic declarations here come from
actual complete ILSpy IL declarations and typed newobj/field operands carrying
original tokens; independent full generic-signature decoding is not claimed.
The paired GameObject IL also retains all9 relevant original field declarations
and the complete original FlagField enum (`TypeDef0x020000E5`), including
`uint16 value__` and literal InWorld4/IsUsed8, which produce constructor value12.
No assembly/gameplay code, original interaction or new test was executed.

The [call/function-pointer index](../../evidence/managed/selected/gameobject-initialization/call-edges.tsv)
retains original IL offsets, metadata tokens and typed operands. `callvirt`
does not establish a runtime subclass target. The
[field index](../../evidence/managed/selected/gameobject-initialization/field-access.tsv)
records selected original field readers/writers; it is not an exhaustive
whole-assembly writer census.

## Construction owns initial managed fields

[Complete GameObject CIL](../../evidence/managed/selected/gameobject-initialization/GameObject.il.txt)
([annotated original C#](../../evidence/managed/selected/gameobject-initialization/GameObject.cs))
contains constructor `0600097F`,105 bytes. Its exact writes include:

| Field | Original constructor value |
| --- | --- |
| `mLevel` | Int32 maximum (`2147483647`) |
| `mRoomId` | Int32 `-1` |
| `mIntPrice`, `mPurchasedPrice` | Int32 `-1` |
| `mMinValueModifier` | Int32 `1` |
| `mReferenceList`, `mActorsUsingMe` | Two actual independently constructed `List<Sim>` objects |
| `mFlags` | Original FlagField value12 |
| `kMaxDeviationFromCircle` | Single `2.0` |

These writes precede the base constructor call in original CIL. The constructor
then binds `TypeCompareDelegate` to the original method. The selected base
[ScriptObject constructor/Init CIL](../../evidence/managed/selected/gameobject-initialization/ScriptObject.il.txt)
([annotated original C#](../../evidence/managed/selected/gameobject-initialization/ScriptObject.cs))
calls `System.Object..ctor`; its `Init` returns original `ScriptExecuteType.None`
(raw immediate1). None is not assumed to be zero.

The GameObject constructor contains no write to `mInteractions`,
`mRoutingReferenceList`, `mObjComponents` or `mbInited`. Other constructors,
persistence restoration and later consumers remain distinct producers.

## Lazy collections and readers

The retained complete `get_Interactions` (`06000901`) tests its field and only
on null constructs/stores `List<InteractionObjectPair>` before returning it.
`AddToRoutingReferenceList` (`060008F3`) similarly creates its actual Sim list
only on null, then appends the supplied Sim. Existing lists are not cleared.
The retained routing/reference/actor getters return their actual field values.
`get_InUse` (`06000917`) walks Parent links first, returning true for a Sim
ancestor; otherwise its final result uses `mActorsUsingMe.Count > 0`. Its parent
producer and arbitrary subclass behavior are outside this selection.

An empty list, a null lazy field, a preserved persisted collection and the
constructor-owned actor/reference lists are distinct managed states. Creating
one empty object cannot stand in for the complete original initialization flow.

## Init guard and original hook order

Original `GameObject.Init(bool)` (`06000A57`,348 bytes), retained in the same
[complete CIL](../../evidence/managed/selected/gameobject-initialization/GameObject.il.txt)
([annotated original C#](../../evidence/managed/selected/gameobject-initialization/GameObject.cs)),
first reads `mbInited`. When true, it immediately returns virtual
`GetScriptExecuteType()`. Otherwise it stores true before:

1. Calling original base Init.
2. Resolving the original build/buy product and conditionally setting its
   product-initialized flag.
3. Removing null actor references. In post-load mode, pruning null or invalid
   routing references, then calling `OnLoad`; otherwise calling `OnCreation`.
4. Calling virtual `AddToLot`; true requests original `LotManager.PlaceObjectOnLot`.
5. Calling virtual `OnStartup`, then processing the actual object-component list.
   Nonnull components receive `OnLoad` only in post-load mode and always receive
   `OnStartup`; null elements are removed and a final empty list becomes null.
6. For a fresh build/buy-mode object, setting its owner lot to ActiveLot.
7. Updating owner-lot state and returning virtual GetScriptExecuteType.

This complete member has no local handler that resets `mbInited` after a later
exception. Original ScriptProxy lifecycle binding remains the selected existing
[ScriptProxy C#](../../evidence/managed/types/ScriptCore.ScriptProxy.cs) and
[managed caller CIL](../../evidence/managed/callers.il.txt); this guide does not
replace CreateLogic, class substitution, saved target identity or PostLoad.

## Native location input and managed placement callbacks

[Complete LotManager placement CIL](../../evidence/managed/selected/gameobject-initialization/LotManager.il.txt)
([annotated original C#](../../evidence/managed/selected/gameobject-initialization/LotManager.cs))
retains `PlaceObjectOnLot` (`06009944`,35 bytes). It initializes the lot output to UInt64 zero, the level to
Int32.MaxValue and the room to Int32 zero, calls original `Objects.GetLocation` with the supplied ObjectGuid,
and passes those outputs to original `AddObjectToLot` with previousLot null.
This is a native data producer consumed by managed placement, not a managed
field-reflection initialization rule.

`AddObjectToLot` (`0600997A`,195 bytes) obtains previous lot/room/level from the
supplied object where available. It resolves the requested lot. A missing lot
uses `sWorldLot` and resets requested level and room to zero. A nonnull object
whose InternalLotCurrent resolves to a known non-world lot returns before the
remaining placement work. That guard repeatedly calls the virtual
InternalLotCurrent getter; it does not cache one reference or compare it to the
requested target lot. Otherwise it calls `Lot.AddObjectToLot` with the object
argument by reference; later work uses that possibly changed or null reference.

A remaining Sim enters the original actor list only if absent and its original
ObjectGuid is valid. A remaining object then receives virtual
`InternalOnSetRoomAndLevel(room,level,previousRoom,previousLot)` and virtual
`LotChanged(previousLot,previousLevel,previousRoom)`.

Original `InternalOnSetRoomAndLevel` (`06000A42`,80 bytes), in the paired
[GameObject CIL](../../evidence/managed/selected/gameobject-initialization/GameObject.il.txt)
([annotated original C#](../../evidence/managed/selected/gameobject-initialization/GameObject.cs)),
captures LotCurrent BEFORE calling virtual `InternalOnSetLevel`. It compares
that captured lot with the supplied previousLot and compares supplied
previousRoom with requested room, rather than reading its own old room field
for that decision. On a difference, look-at ownership can be removed/added,
the room field is stored,
virtual RoomChanged runs and the commodity map is updated. The selected base
`InternalOnSetLevel` (`06000A41`,8 bytes) stores the supplied level. Direct
private field writes do not execute these original virtual hooks.

## Limits

The selected methods establish managed ownership/order, not every subclass
OnLoad/OnCreation/OnStartup, a complete ObjectComponent factory, actual native
location validity, full `Lot.AddObjectToLot` internals, scheduling, callback
reentrancy or rollback. Runtime reachability remains separate from the presence
of a static call. Original constructors/field initializers and original managed
hooks must be considered together with their actual native inputs and consumers.
