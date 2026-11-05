# Wall-mounted objects and lowered walls

Static original PC 1.67 evidence. Binary identity is recorded in the
[collection overview](../../references/retained-proof-overview.md). Names below are analyst-assigned.
No gameplay, rendering or persistence test was executed for this contract.

## Producer and message contract

The wall renderer applies its mode over the inclusive signed level range.
Every nonactive level receives visibility `1`. The active level receives `1`
when numeric mode is `1` or `3`, otherwise `0`. The separate cutaway update
receives `(renderer byte +0x24 != 0 && mode == 3)`. Numeric mode names and their
managed UI mappings are not established by this routine alone.
Source: [level-mode application ASM](../../evidence/native/functions/00C4D4B0_WallRender_ApplyWallModeToLevels.asm) ([pseudocode](../../evidence/native/functions/00C4D4B0_WallRender_ApplyWallModeToLevels.c)).

The level setter bounds-checks the signed level against segmented storage,
updates wall groups `0..6` excluding `1` and `4` with the inverse visibility
Boolean, then emits message `0x04ADF667`. Its payload carries the lot's full
64-bit identity at `+0x08/+0x0C`, signed 32-bit level at `+0x10` and visibility
byte at `+0x14`. Container capacity arithmetic is not a plain vector count.
Source: [level setter ASM](../../evidence/native/functions/00C4D110_WallRender_SetLevelVisibility.asm) ([pseudocode](../../evidence/native/functions/00C4D110_WallRender_SetLevelVisibility.c)).

Cutaway endpoint transitions instead emit `0x04A06E68`. The `0x18`-byte
message contains the same lot identity, six locator bytes at `+0x10..+0x15`
and endpoint state bytes at `+0x16/+0x17`. Both endpoint orientations are
posted by the reviewed commit path. This establishes transition publication,
not the complete preceding camera/room selection algorithm.
Sources: [cutaway commit ASM](../../evidence/native/functions/00C34000_WallCutaway_CommitEndpointTransitions.asm) ([pseudocode](../../evidence/native/functions/00C34000_WallCutaway_CommitEndpointTransitions.c)),
[endpoint message producer ASM](../../evidence/native/functions/00C4BF90_WallRender_PostEndpointVisibility.asm) ([pseudocode](../../evidence/native/functions/00C4BF90_WallRender_PostEndpointVisibility.c)).

The lot message receiver is a subobject: subtract `0xA0` from its receiver to
obtain the lot base. It compares both identity words before forwarding either
message. Endpoint states are taken from their low bytes; surrounding stack
word contents do not define additional flags. The level message forwards its
signed integer and one state byte.
Source: [lot message dispatcher ASM](../../evidence/native/functions/00AC70B0_LotMessageHandler_Dispatch.asm) ([pseudocode](../../evidence/native/functions/00AC70B0_LotMessageHandler_Dispatch.c)).

## Object enumeration and signed locators

The level consumer enumerates wall locators and compares their **sign-extended
level byte** with the requested level. It first checks `0x00C5BDC0`, then uses
`0x00C5BDF0` for nonnegative levels and `0x00C5BFA0` below zero. Their complete
wall-class semantics remain open. Accepted walls invoke the attachment
consumer twice in reverse orientations, with both endpoint bytes set to the
same requested state.
Source: [level attachment consumer ASM](../../evidence/native/functions/00AC5940_Lot_UpdateWallMountedObjectsAtLevel.asm) ([pseudocode](../../evidence/native/functions/00AC5940_Lot_UpdateWallMountedObjectsAtLevel.c)).

For one wall, the primary cell's requested visibility is the Boolean AND of
the endpoint bytes. An endpoint byte of zero therefore requests hiding.
Object GUIDs come from the lot's tile occupancy storage and are resolved by
the original borrowed registry lookup. A sorted GUID set is populated, but
the primary loop still processes duplicate IDs. It is incorrect to describe
this routine as globally once per object.

Only when **both** planar endpoint coordinates differ does it enumerate three
neighbor indices. It skips the other endpoint's full four-byte tile locator,
checks signed bounds and suppresses GUIDs already in the set. When endpoint
bytes differ, `0x00AF7B70` selects a state; this is not established as a nearest
endpoint calculation. Source: [wall attachment enumeration ASM](../../evidence/native/functions/00AC2890_Lot_UpdateObjectsAttachedToWall.asm) ([pseudocode](../../evidence/native/functions/00AC2890_Lot_UpdateObjectsAttachedToWall.c)).

The bounds helper uses `MOVSX` for X, Y and level. Planar coordinates must be
nonnegative and less than the lot dimensions. Level is inclusive within the
lot's signed minimum/maximum. Basement bytes must not become unsigned values.
Source: [signed tile bounds ASM](../../evidence/native/functions/00868970_Lot_IsSignedTileInBounds.asm) ([pseudocode](../../evidence/native/functions/00868970_Lot_IsSignedTileInBounds.c)).

## Catalog and required-wall gates

The per-object consumer requires a nonzero lot field `+0x364`, nonnull object,
valid tile, catalog lookup result and a matching required wall. The lookup
forms the object's resource key at `object +0x18` and calls the catalog index;
the catalog file parser/populator is outside this review.
Source: [catalog lookup adapter ASM](../../evidence/native/functions/00AFFDB0_Object_FindCatalogInfo.asm) ([pseudocode](../../evidence/native/functions/00AFFDB0_Object_FindCatalogInfo.c)).

| Catalog field | Exact reader | Required result |
| --- | --- | --- |
| Word `+0x98`, mask `0x40` | [HideWhenWallDown reader ASM](../../evidence/native/functions/00C97860_ObjectCatalog_HideWhenWallDown.asm) ([pseudocode](../../evidence/native/functions/00C97860_ObjectCatalog_HideWhenWallDown.c)) | Nonzero |
| Word `+0xA4`, mask `0x1000` | [FlagsApplyToFences reader ASM](../../evidence/native/functions/00C97750_ObjectCatalog_FlagsApplyToFences.asm) ([pseudocode](../../evidence/native/functions/00C97750_ObjectCatalog_FlagsApplyToFences.c)) | Zero |

Both readers load a 32-bit word, shift logically and mask with `1`, yielding
unsigned `0/1`. The field/flag labels are analyst interpretations of this
gate; they are not recovered native symbols. Unrelated high bits do not affect
these two tests. Passing them alone does not establish final visibility.

The required-wall helper builds required/prohibited lists, then searches the
**required** list for an exact six-byte locator match in either complete
endpoint order. Each triple includes its level. Sharing an endpoint,
collinearity or segment overlap is insufficient. The visible pointer-depth
and cleanup `extraout_EAX` expressions in the decompilation are artifacts;
callers test the Boolean in `AL`.
Source: [required locator match ASM](../../evidence/native/functions/00B0ACE0_Object_RequiresWallLocator.asm) ([pseudocode](../../evidence/native/functions/00B0ACE0_Object_RequiresWallLocator.c)).

## Final per-object decision and exceptions

The receiver is passed in `ECX`; six arguments occupy stack slots and the
callee returns with `RET 0x18`. The visibility argument is tested by its low
byte and its stack slot is later reused as scratch storage. Locator bytes are
sign-extended when converted to integer/float coordinates.

The ordinary branch dispatches object event **13** with value `0` or `1`, but
the complete decision has these additional gates:

- Numeric modes `0xC9`, `0xCA`, `0xCC` have exceptions. In `0xC9`, a true
  `0x00C97A00` result preserves the object. All three modes preserve the object
  returned by `0x00CFE370`.
- Other modes can enter room logic under `0x00C97790`. Membership of either
  adjacent room in the first inspected set preserves visibility. Another set,
  lot byte `+0x3A4` and GUID predicate `0x00791710` add conditional exclusions.
  The semantic roles of these sets and predicates are unresolved.
- With a partial wall, at least one endpoint state nonzero, a true catalog
  trait predicate and a true endpoint predicate `0x00B48B80`, a clear catalog
  `+0xD0` mask `0x4` changes the result to **visible**, even when the ordinary
  request was hidden (`0x00AC0550` jumps to `0x00AC0382`). With that mask set,
  `0x00B0C120` runs before the hidden notification instead. The complementary
  visible branch can invoke `0x00B0BC60`.

Thus “either endpoint lowered always hides an attached eligible object” is
too broad. Skipping notification also preserves prior state rather than
necessarily making the object visible. These branches are retained in the
full [per-object decision ASM](../../evidence/native/functions/00AC0250_Lot_UpdateWallMountedObjectVisibility.asm) ([annotated pseudocode](../../evidence/native/functions/00AC0250_Lot_UpdateWallMountedObjectVisibility.c)).

## VisualState update and downstream consumers

The [VisualState registration ASM](../../evidence/native/functions/0095FCB0_VisualState_RegisterObjectEventListeners.asm) ([pseudocode](../../evidence/native/functions/0095FCB0_VisualState_RegisterObjectEventListeners.c))
binds event 13 to the [wall visibility listener ASM](../../evidence/native/functions/0095F5F0_VisualState_OnWallVisibility.asm) ([pseudocode](../../evidence/native/functions/0095F5F0_VisualState_OnWallVisibility.c)).
This listener uses the **entire second DWORD != 0**, resolves VisualState
through its assigned component mask, and updates mask `0x8` (**bit 3**).
Null object/missing component is an accepted no-op. Only `AL=1` is defined at
return. The callback does not itself substitute a cutaway mesh.

The [flag writer ASM](../../evidence/native/functions/0095E5F0_VisualState_SetOneBitFlag.asm) ([pseudocode](../../evidence/native/functions/0095E5F0_VisualState_SetOneBitFlag.c))
compares the current masked value with the requested all-zero/all-one value.
On mismatch it **XORs the supplied mask**. This implements a one-bit change
for the caller's `0x8`; it is not a generic multibit replacement operation.
Unchanged state emits no notification. A change dispatches object event **24**
with a temporary three-byte summary:

| Byte | Value |
| ---: | --- |
| 0 | New flags bit 0 |
| 1 | New flags bit 2 |
| 2 | `(newFlags & 0x39) == 0x39` |

[Object event dispatch ASM](../../evidence/native/functions/009356C0_ObjectEvents_Dispatch.asm) ([pseudocode](../../evidence/native/functions/009356C0_ObjectEvents_Dispatch.c))
invokes listeners synchronously, stopping at an `AL=false` result. Consumers
cannot retain the stack summary pointer after the call returns.

| Event 24 consumer | Immediate action |
| --- | --- |
| [Model ASM](../../evidence/native/functions/009490C0_Model_OnVisualStateChanged.asm) ([pseudocode](../../evidence/native/functions/009490C0_Model_OnVisualStateChanged.c)) | Resolve Model, recompute owner state |
| [Effect ASM](../../evidence/native/functions/00943B90_Effect_OnVisualStateChanged.asm) ([pseudocode](../../evidence/native/functions/00943B90_Effect_OnVisualStateChanged.c)) | Resolve Effect, recompute owner state |
| [Tree ASM](../../evidence/native/functions/0095A3A0_Tree_OnVisualStateChanged.asm) ([pseudocode](../../evidence/native/functions/0095A3A0_Tree_OnVisualStateChanged.c)) | Resolve Tree, recompute owner state |
| [Physics ASM](../../evidence/native/functions/0094C740_Physics_OnVisualStateChanged.asm) ([pseudocode](../../evidence/native/functions/0094C740_Physics_OnVisualStateChanged.c)) | Under service/body gates, copy summary byte 0 into body mask `0x10000` |
| [Slot ASM](../../evidence/native/functions/00951AB0_Slot_OnVisualStateChanged.asm) ([pseudocode](../../evidence/native/functions/00951AB0_Slot_OnVisualStateChanged.c)) | Forward summary to the slot propagation helper |

The [derived-state publisher ASM](../../evidence/native/functions/0095EFF0_VisualState_PublishDerivedObjectState.asm) ([pseudocode](../../evidence/native/functions/0095EFF0_VisualState_PublishDerivedObjectState.c))
rereads current VisualState. Its channels include the aggregate `0x39` test
combined with bit 11, bit 2 combined with inverted bit 12, bit 6 under a
bit-7/global override, bit 3, bit 14 and bit 0. It calls `0x0095E9F0` and posts
messages `0x04878BC4` / `0xE128229B`. A wall-mask change can affect aggregate
and wall channels without changing every channel or physics flag bit 0.
Full message schemas and downstream renderer processing remain open.

The [slot propagation ASM](../../evidence/native/functions/00951A20_Slot_PropagateAggregateVisibility.asm) ([pseudocode](../../evidence/native/functions/00951A20_Slot_PropagateAggregateVisibility.c))
reads summary byte 2 and dispatches event 25 for objects yielded by its slot
iterator. The pointer-looking `CONCAT31` in its pseudocode comes from reusing
the argument slot's low byte as temporary payload storage; it is not a new
valid pointer. The complete slot graph policy and event-25 consequences are
outside this bounded contract.

## Limits

This proves original selection gates, signed fields, notification order and
selected immediate consumers. It does not prove every catalog bit name,
upstream cutaway selection, mode/room exception meaning, GPU pass result,
asynchronous staging strategy or runtime timing. Original bytes were checked
for all retained function envelopes. Ghidra annotations and prototypes do not
modify the original executable bytes.

The separate [opacity and color transition contract](../objects/opacity-and-color-transitions.md) distinguishes requested VisualState targets from renderer interpolation and effective alpha.


## Upstream room-camera and focus-tile selection

Original PC1.67 static input/state and instruction facts. Physical ABI qualifies
stored prototypes; no runtime, all-helper or safe-parallelization claim.

| Entry | Boundary | Evidence |
| --- | --- | --- |
| 00C339D0 | 1575 owned bytes / 380 instructions. ECX cutaway owner, RET0. Iterates six-byte locators after C4F060 admission; reads oriented definition0 rooms through C5C2C0, selected room set membership and owner+D branch before camera cross/dot tests. Separate lot2F8/2FC/300..31C rectangle/radius branch uses squared radius25 and calls C33390 with endpoint classifications. Current ordinary nonzero-room projection is not complete override/room-set/special-camera policy. CallerC34F10 and insertionC33390 ordering/winner semantics remain separate. | [ASM](../../evidence/native/functions/00C339D0_FUN_00c339d0.asm) ([actual C](../../evidence/native/functions/00C339D0_FUN_00c339d0.c)) |
| 00C422D0 | 2294 owned bytes / 578 instructions. ECX graph plus four physical stack words, RET10 and lowbyte result. Source vector-range, camera, signed level byte and output edge set govern tile allocation/rasterization. DeltaY is capped3; original x87 conversion and sign-bit correction form tile floors before major/minor stepping. Reads actual wall-grid bits, inserts diagonals or axial edges when adjacent selected, then frees tile storage. Pseudocode float integer/pointer aliases and casts are representation artifacts. Two-byte nonowned gap excluded. Allocation failure, native set insertion and full caller/source semantics remain open. | [ASM](../../evidence/native/functions/00C422D0_FUN_00c422d0.asm) ([actual C](../../evidence/native/functions/00C422D0_FUN_00c422d0.c)) |

C339D0 reads actual oriented rooms from C5C2C0(definition0), consults a retained
room set and owner+D policy before ordinary cross/dot camera tests. The retained
lot rectangle, nonzero2F8/2FC, byte31C and center/radius branch add another
selection path with squared radius25. It then supplies endpoint classifications
to C33390. These fields' semantic producers, set insertion/winner and full
C34F10 caller order must be read independently; nonzero room alone is not every
native override case. No current renderer-side marker Boolean is inferred.

C422D0 allocates width*depth tile bytes for a vector of points, clips focus-to-
camera deltaY at3 and traverses major/minor planar coordinates. Apparent float
integer/pointer aliases in C are representation artifacts; the actual x87
conversion and sign-bit adjustments govern floors and negative directions.
Selected tiles admit stored grid diagonal bits directly and axial bits when
adjacent tiles are selected or at the lower boundary. A56040 receives packed
locators in the output set. Actual low-byte result records whether an admitted grid edge reached the
output-set helper; it does not report newly inserted cardinality. Complete allocation-failure, grid construction, ordered-set insertion,
multiple focus-point producers and callback/commit lifetime remain open.

These two bodies add ordinary selection and focus-grid producers to the existing
transition/visibility chain. They do not close the preceding C4F060 gate,
C33390 first-classification policy, special room/camera owners or every current
cutaway/GPU behavior. Their complete owned bytes exclude C4237E..7F alignment;
D016D0 in the related opening guide separately excludes D01AE7..EF. The nine
newly connected functions together contain2147instructions8002ownedbytes;
pristine image comparisons do not imply original execution.
