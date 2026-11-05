# Callback word storage and shared reference-count operations

Three complete existing native bodies establish a small physical contract:
one stores an opaque callback word; two update a shared counter and conditionally
dispatch a table slot. They do not establish callback delivery, successful
deallocation, whole-object lifetime or runtime behavior. Original identity is
the [central reference](../../evidence/reference.json). All intervals below
have exclusive stops.

| Current function | Actual owned interval / starts | Canonical evidence |
| --- | --- | --- |
| StoreSimSavedCallbackWord | `[009C8AD0,009C8ADC)`, 12 bytes /3 | [ASM](../../evidence/native/bridge/callback-reference-words/009C8AD0_StoreSimSavedCallbackWord.asm) ([C](../../evidence/native/bridge/callback-reference-words/009C8AD0_StoreSimSavedCallbackWord.c)) |
| IncrementReferenceCount | `[00B31790,00B3179A)`, 10 bytes /4 | [ASM](../../evidence/native/bridge/callback-reference-words/00B31790_IncrementReferenceCount.asm) ([C](../../evidence/native/bridge/callback-reference-words/00B31790_IncrementReferenceCount.c)) |
| DecrementReferenceCountAndDispatchAtZero | `[00EC7190,00EC71AE)`, 30 bytes /11 | [ASM](../../evidence/native/bridge/callback-reference-words/00EC7190_DecrementReferenceCountAndDispatchAtZero.asm) ([C](../../evidence/native/bridge/callback-reference-words/00EC7190_DecrementReferenceCountAndDispatchAtZero.c)) |

These are exactly 52 original bytes and 18 instruction starts. Current names,
DB heads and four actual parameter/local names are present in genuine saved
Ghidra exports. The complete C suffixes are unchanged, including generated
types and return/convention projections. Original instructions govern the
physical effects. Project save was acknowledged; no reopen test or original
runtime observation is claimed. No canonical or Legacy EC7190 pair is invented
as a predecessor; these are the first adopted canonical pairs for the entries.

## Opaque SimSaved callback word

StoreSimSavedCallbackWord loads the entry stack word at `ESP+4` into EAX, stores
it to global `011EA958` at `009C8AD4`, then uses `RET4`. Its actual parameter
name is `callbackWord`, with the original `undefined4` type. The body performs
no validation, lock, add-reference, release or callback invocation. Although the
word remains physically in EAX, the retained metadata return is undefined and
the C projection is void. No caller-consumed API result is proved from that
register fact.

The [original managed chain](event-queue-and-sim-saved-callback-frontier.md)
connects DownloadContent's constructor-held delegate to the registered frontend
`009956F0`, whose call at `00995708` reaches this sink. That frontend retains
one-byte singleton metadata; its real E8 is established by a separate 30-byte
original context, not by expanding the owned byte. The genuine current caller
renders `StoreSimSavedCallbackWord(param_1)` after a conditional owner query.
Its current pointer/callee projection also differs from the historical C; this
is not a whole-C rename-only equivalence claim.

The existing `009CB0D0` consumer compares/loads the global at `009CB5C4` and
`009CB661` and forwards it to host slot `+134h` at `009CB66F`. This is an
original forwarding relationship. The stored word remains opaque: code pointer,
CLR-object pointer, handle encoding, marshaling ABI, retention/replacement policy,
delivery, error translation and callback-side reentrancy remain unresolved.

## Shared counter operations

IncrementReferenceCount receives the counter owner physically in ECX. It reads
the DWORD at byte offset `+4`, adds1 modulo2^32, stores the updated word, and
returns through plain RET. The updated word is physically in EAX; current
undefined/void return metadata/projection is preserved without inventing an
API return contract. The actual `counterOwner` formal remains the original
generated `int` type; it is a name for a proven machine role, not a complete
structure definition. There is no local null/count validation or LOCK prefix.

DecrementReferenceCountAndDispatchAtZero uses the same physical receiver and
offset. It stores the modulo2^32 decrement result before testing it:

| Incoming DWORD | Stored decrement | Normal path / result |
| --- | --- | --- |
| `00000000` | `FFFFFFFF` | Nonzero path, returns that raw DWORD in EAX. |
| `00000001` | `00000000` | Resets field to1, invokes table slot+8 with stack word1, then returns full EAX0 if the call returns. |
| `00000002` | `00000001` | Nonzero path, returns raw DWORD1. |

The current names are `counterOwner` (`int *` formal) and `decrementResult`
(`int` local). The zero path resets receiver+4 to1 **before** loading the table
and target, pushes immediate1, calls the selected slot, then XORs EAX,EAX.
It does not dereference the receiver after that call. Return0 does not mean
the field remains0/1 or the receiver survives the call. These ordinary
load/add/store bodies are not atomic operations; external synchronization,
reference-count invariants, underflow prevention and concurrency remain open.

Both helpers are shared across several original tables. Neither is an
EventQueue-specific event dispatcher or a complete allocation/lifetime policy.
The metadata's fastcall and C type spellings remain preserved projections;
full custom/compound physical parameter-storage and source-language ABI are not
proved by the API variable inventories.

## Selected tables and the unowned slot+8 target

The [original data](../../evidence/native/bridge/callback-reference-words/selected-original-data.json)
retain 29 literal `.rdata` words: 23 target IncrementReferenceCount and six
target DecrementReferenceCountAndDispatchAtZero. Four selected twelve-byte
prefixes place them at slots0 and+4:

| Table prefix | +0 | +4 | +8 |
| --- | --- | --- | --- |
| `010022D0` | `00B31790` | `00EC7190` | `0051A720` |
| `01021018` | `00B31790` | `00EC7190` | `00800500` |
| `010F5778` | `00B31790` | `00EC7190` | `00EC7200` |
| `010F5794` | `00B31790` | `00EC7190` | `0051A720` |

These values establish selected static table relationships, not 29 complete
vtables, full table extents or installed runtime state. A separate eight-byte
unowned context at `009B0240` subtracts8 from ECX and jumps at `009B0243` to
IncrementReferenceCount. It has no adopted C owner, definition or canonical
pair; the data record preserves its bytes without promoting it.

The [unowned slot-target contract](../../inventory/remaining-instruction-context-evidence.md)
retains the explicit NoFunction observation at `0051A720`, its 31 original
instruction bytes and conditional ingress. If the actual receiver uses the
selected table, EC7190's pushed1 selects that target's helper path and its
`RET4` consumes the word on normal return. This is not callback dispatch:
object+8 and vtable+8 are distinct. The remaining 66 bytes of its 97-byte parent
remain unresolved, and neither a new function nor an artificial target C is
created. Allocator/backend effects and receiver liveness remain open.

## Eight genuine captured-reference projections

The [qualified caller data](../../evidence/native/bridge/callback-reference-words/captured-caller-projections.json)
retain the complete genuine current C for exactly eight previously captured
owners, their actual metadata ranges and selected original operand sites.
These are reference-refresh projections, **not eight new canonical pairs or
independently accepted complete caller bodies**. Existing generated DB heads
are preserved in those C strings; no manual identifier substitution was made.

| Owner | Concrete reference | Projection boundary |
| --- | --- | --- |
| `00742890` | `010022D0` table store at `007428C5` | One-byte singleton; separate 96-byte original window includes padding. |
| `00803500` | `01021018` store at `00803530` | Current real C; further historical block/callee projection changes. |
| `009956F0` | E8 `00995708` to `009C8AD0` | One-byte singleton; separate 30-byte context; owner-pointer/callee projection differs. |
| `00EC71B0` | `010F5794` store at `00EC71DC` | Further historical conditional/block projection changes. |
| `00EC7650` | `010F5778` store at `00EC767C` | Further historical conditional/block projection changes. |
| `00802690` | `01021018` stores at `008026E7` and `0080273F` | Two table-symbol occurrences in one captured owner. |
| `00804FE0` | `01021018` store at `00805083` | Further historical block/callee projection changes. |
| `00805120` | `01021018` store at `008051EF` | Current table-symbol projection. |

Seven owners show genuine `PTR_IncrementReferenceCount_*` data symbols. Those
are table-source impacts, not seven direct calls to the helpers. Only the
`009956F0` reference is the selected direct E8. The eight were bounded by a
retained 75-Main-C/5,054-Legacy-C source search and original operand corroboration;
that is not a whole-census, computed-alias, indirect-call or runtime closure.
No current canonical predecessor was displaced by these qualified contexts.

## Acceptance boundary

The three target bodies have original-byte/Listing agreement, current full
names, DB heads, actual variables and independent actual afterimage checks.
The current C and inventories preserve all nonselected types/storage/ordinals;
comments, complete ownership and original bytes remain unchanged. Save and
lease release were independently checked without a reopen test. The three
bodies' exact finite contract and the eight current reference bindings are
accepted; broad historical caller-C equivalence is not.

Host `+118h`/`+C8h`/`+134h` implementations, callback marshalling and delivery,
actual table selection, allocation/reclamation, reference ownership and full
lifetime/error/concurrency behavior remain open. Static evidence is separate
from runtime observation and from comprehensive-reference completion.
