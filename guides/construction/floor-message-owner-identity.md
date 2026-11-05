# Floor-message owner identity and the renderer snapshot

The floor receiver's compared owner words are produced by a direct copy from
its bound core lot. `BindLotRendererToLot` stores the supplied core pointer at
renderer `+18`, copies core `+48` into renderer `+10` and core `+4C` into
renderer `+14`. A concrete common initialization caller binds the floor manager
and optionally creates the renderer using that same core pointer. The staged
renderer initializer later attaches its floor receiver to that renderer.

This closes the physical producer relationship left open in the earlier
[bounded message-delivery contract](floor-pattern-message-delivery.md).
The renderer stores a **bind-time snapshot**; the message producer reads the
core pair again when producing a message. Equality is established for the
same core object while its pair remains unchanged after binding. Pair
uniqueness, changes after binding and the complete outer broadcast remain
separate questions. No original runtime execution or delivery timing was
observed. Reference: [TS3W PC 1.67](../../evidence/reference.json).

## Bodies and concrete data

The [canonical index](../../indexes/floor-owner-identity.tsv) resolves seven
complete stored body unions: **6,246 owned original bytes and 1,688 instruction
starts**. `ACDC90` has two owned ranges; its envelope gap
`ACDF8D..ACDF8F = 8d 49 00` is an alignment no-op, excluded from those counts.
Stored ownership does not prove all actual functions or indirect incoming
paths have been discovered. [Source mapping](../../indexes/floor-owner-identity-sources.tsv)
keeps the reused full `AE8AA0` capture and immutable legacy witness distinct
from the newly captured functions. Names are analyst-assigned.

| Operation | Canonical evidence |
| --- | --- |
| Bind floor manager to core lot | `A8DD00`: [ASM](../../evidence/native/construction/owner-records/00A8DD00_BindFloorManagerToLot.asm) ([C](../../evidence/native/construction/owner-records/00A8DD00_BindFloorManagerToLot.c)) |
| Initialize selected lot state and owners | `ACDC90`: [ASM](../../evidence/native/construction/owner-records/00ACDC90_InitializeLotStateAndOwners.asm) ([C](../../evidence/native/construction/owner-records/00ACDC90_InitializeLotStateAndOwners.c)) |
| Create and bind a missing renderer | `AB3130`: [ASM](../../evidence/native/construction/owner-records/00AB3130_CreateLotRendererIfMissing.asm) ([C](../../evidence/native/construction/owner-records/00AB3130_CreateLotRendererIfMissing.c)) |
| Construct renderer defaults | `AE5360`: [ASM](../../evidence/native/construction/owner-records/00AE5360_InitializeLotRenderer.asm) ([C](../../evidence/native/construction/owner-records/00AE5360_InitializeLotRenderer.c)) |
| Copy the core owner and identity into renderer | `AE4790`: [ASM](../../evidence/native/construction/owner-records/00AE4790_BindLotRendererToLot.asm) ([C](../../evidence/native/construction/owner-records/00AE4790_BindLotRendererToLot.c)) |
| Update the renderer and admit staged initialization | `AE9700`: [ASM](../../evidence/native/construction/owner-records/00AE9700_UpdateLotRenderer.asm) ([C](../../evidence/native/construction/owner-records/00AE9700_UpdateLotRenderer.c)) |
| Advance staged detailed-view initialization | `AE8AA0`: [ASM](../../evidence/native/construction/owner-records/00AE8AA0_AdvanceLotRendererDetailInitialization.asm) ([C](../../evidence/native/construction/owner-records/00AE8AA0_AdvanceLotRendererDetailInitialization.c)) |

The [binding data](../../evidence/native/construction/owner-records/owner-bindings.tsv)
records original renderer-table cells, allocation labels, all 21 stage jump
targets and the corresponding 21 lock-gate bytes, rather than a live object
snapshot. The [field-flow table](../../evidence/native/construction/owner-records/owner-field-flow.tsv)
separates actual pointer assignments from copied identity words.

## Same-core creation and binding

Use `L` for the core object, `M` for its floor manager, `R` for its renderer and
`F` for the floor receiver. These labels describe the proven call relationships;
they do not assign recovered C++ types.

`InitializeLotStateAndOwners` retains `L` in ESI. If `L+290` is null it allocates
`230h` bytes, calls the existing floor-manager constructor, stores the result
at `L+290`, and passes **that same ESI** as the sole stack argument to
`BindFloorManagerToLot` at `ACDDA7`. The binder stores `L` at `M+4` at `A8DD0D`.
It also copies four dimension words from `L+174..183`, resets selected fields
and obtains two complete 64-byte default key quads through the original key
helpers. Those child catalog/key contracts remain separate; no retail semantic
identity is inferred solely from their names.

The already reviewed `LotDataLayers_CreateMissingOwners` supplies another
concrete creation route: it stores a missing manager at `L+290` and calls
`A8DD00(M,L)` with the same core argument at `AC8CC1`. Its **1,348 bytes and
425 instruction starts** were independently rechecked against the original PE:
[immutable ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00ac8c80.asm.txt) ([immutable C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00ac8c80.c)).

Later in `ACDC90`, only a nonzero **low byte of the seventh stack word** reaches `AB3130` at
`ACE020`, again with unchanged ESI as ECX. `CreateLotRendererIfMissing` skips
its entire body when `L+364` is already nonnull. Otherwise it allocates `400h`
bytes with original label `Lot/LotRenderer`, constructs `R`, applies its
original virtual-reference operations, stores `R` at `L+364`, then invokes
`BindLotRendererToLot(R,L)`. The entry guard is not an atomic create-once
operation, and no locking or concurrency guarantee is supplied by this wrapper.

Allocation failure does not establish graceful recovery: a null result is
stored or left null, but the binder call is still made. The binder immediately
dereferences its renderer/core inputs. Existing renderers are not rebound here,
so this wrapper does not refresh an old snapshot after a core pair change.

`ACDC90` performs other operations before and between these ownership edges:
optional `7CFE00` output passed to core virtual `+60`, child core setup,
conditional admission/failure through `ABCBE0`, missing layer creation and
selected floor-level/height setup. The original code retains a guarded
per-cell/per-level height loop, a bit selector derived from the sign bit of a
Float32 subtraction and a `3.0f` level increment. No stronger NaN, geometry,
level-insertion or virtual identity-setter contract is inferred from the C
expression. Its 11 stack words are cleaned by `RET2Ch`; the successful tail
writes AL1, while the early failure returns the child's result.

## Renderer snapshot and ownership boundary

`InitializeLotRenderer` installs primary table `01069F3C` and secondary table
`01069F30`. Atomic `XCHG` initializes reference count `+4` to zero. Identity
words `+10/+14`, owner pointer `+18` and stage fields `+24/+28/+2C` start at
zero; the function also initializes the original retained renderer defaults,
embedded owners and configuration-dependent shader flag. It returns the
supplied pointer in EAX. This is construction of existing storage, not
allocation or a proof that all renderer fields are zero.

`AB3130` invokes primary virtual `+8` before storing a new renderer. The
installed table resolves that slot to the existing
[atomic increment](../../evidence/native/memory/references/00EC1C10_AddAtomicReference.asm)
([C](../../evidence/native/memory/references/00EC1C10_AddAtomicReference.c)); renderer `+4` becomes
one on that ordinary constructed path. Its generic old-pointer release is a
separate virtual `+0C`. Complete teardown, failed construction and races remain
outside this creation result.

`BindLotRendererToLot` performs these exact writes:

| Original instruction | Destination | Source |
| --- | --- | --- |
| `AE4816` | `R+18` | supplied `L` pointer |
| `AE481C` | `R+10` | UInt32 at `L+48` |
| `AE4829` | `R+14` | UInt32 at `L+4C` |

There is no transformation, lookup or generated identity between these loads
and stores. No direct owner-reference increment appears in this binder. It also copies
selected core flags and two 16-byte vectors, initializes embedded state `+370`,
and conditionally calls `C7D2C0` with copied word0, word1 and `R` when global
`011EDE58` is nonnull. The optional service's uniqueness, allocation and
removal rules remain with its own body. The binder writes **AL1**, cleans one
stack word with `RET4`, and leaves EAX upper bytes inherited from previous work.

## Receiver attachment and producer comparison

`UpdateLotRenderer` first calls `AE8860` even before checking renderer byte
`+0C`. In the admitted branch it calls `AdvanceLotRendererDetailInitialization`
only when `+2C != 0`, `+1E == 0` and `+1F == 0`, preserving the same `R` pointer
in ECX. This gives a concrete static caller, not the producers of those state
fields or a guarantee of runtime scheduling.

`AE8AA0` can return AL1 for an already initialized renderer, AL0 when `+1C`
rejects admission, or continue through stage `+24` and substate `+28`. The
original elapsed-clock budget and stage-selected `TryEnterCriticalSection` on
core `+D0` permit yielding; a failed admission or child can leave work pending
or mark failure. One invocation need not finish all stages, and the upper
EAX bytes are not a normalized Boolean.

The unsigned dispatch bound at `AE8BC4/AE8BD5` admits stage indices0..20
into the original 21-DWORD jump table at `AE96A0`. Entry3 is `AE8D94`.
The separate byte table `01069BC0` controls the conditional core lock for
those documented stage indices; the terminal stage21 is handled separately.

At stage3/substate0, it allocates and constructs a floor receiver through the
already canonical
[constructor](../../evidence/native/construction/floor-patterns/00AA3080_InitializeFloorRenderManager.asm)
([C](../../evidence/native/construction/floor-patterns/00AA3080_InitializeFloorRenderManager.c)), stores `F`
at `R+230`, then invokes the already canonical
[binder](../../evidence/native/construction/floor-patterns/00AA0640_BindFloorMessageOwnerAndRegister.asm)
([C](../../evidence/native/construction/floor-patterns/00AA0640_BindFloorMessageOwnerAndRegister.c)) as
`AA0640(F,R)` at `AE8DC9`. That binder stores `R` at `F+8` and registers that
exact `F` pointer for the listed 18 IDs, including `0431BFC9`; it does not set
receiver enabled byte `+70`. Further staged calls retain their actual order
and gates. The terminal stage writes renderer `+1E` and calls child-state
handlers with argument1; the separate receiver-state producers are not proved
by field-name similarity.

The existing [upper-quarter producer](floor-pattern-quarter-bit-rebuild.md)
reads `L` from `M+4` and writes current `L+48/+4C` into payload `+8/+C` at
`A91582/A91588`:
[ASM](../../evidence/native/construction/floor-patterns/00A913D0_RefreshFloorUpperQuarterFlags.asm) ([C](../../evidence/native/construction/floor-patterns/00A913D0_RefreshFloorUpperQuarterFlags.c)).
The existing [receiver](../../evidence/native/construction/floor-patterns/00AA4350_FloorRenderEvents_HandleOrQueue.asm)
([C](../../evidence/native/construction/floor-patterns/00AA4350_FloorRenderEvents_HandleOrQueue.c)) compares
those words with `F+8` renderer `+10/+14`. The new binder evidence establishes
where the renderer words came from. It does not establish that they stay equal
to later live core reads under an arbitrary identity update.

## Remaining questions

Core pair creation/setters, uniqueness and changes after binding, rebind under
callbacks, enabled-state producers, complete renderer teardown and all child
geometry/configuration contracts remain explicit boundaries. The complete
outer broadcast body is still missing from the earlier delivery chain. The
[direct-call index](../../indexes/floor-owner-identity-calls.tsv) records the
selected concrete original rel32 edges; it does not enumerate every indirect
caller or prove successful original-game execution.

## Acceptance and persistence

The existing Ghidra session received seven analyst names, seven function plates
and 20 instruction comments for this package. Final live readbacks matched all
seven names, all comment texts, unchanged signature types and stored body
unions. The C exporter omits instruction EOL comments, so the paired C retains
their exact verified texts in separately addressed comment blocks. The actual
decompiled bodies remain unchanged by that comment transport. Original
PE/independent objdump checks matched
all 6,246 owned bytes and 1,688 instruction starts; 52 selected original-data
records retain another170 bytes, and the three nonowned alignment bytes are
documented above.

The explicit existing-project save reported `saved_files=1`. No database
close/reopen test and no original runtime observation were performed. The
previous message-delivery package remains unchanged. This bounded copy/binding
result does not assert stable identities, complete outer delivery or complete
Building coverage.
