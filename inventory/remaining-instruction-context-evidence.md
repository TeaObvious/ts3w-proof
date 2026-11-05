# Required instruction evidence at an unowned slot target

The [typed context sidecar](remaining-instruction-context-assertions.tsv)
records one exact `needed_instruction_evidence` assertion:
**`[0051A720,0051A73F)`, 31 bytes and eleven whole instruction starts**.
Original table values and the existing caller's selected slot path establish
why these bytes are required evidence. The target has a retained NoFunction
observation and no selected baseline owner. This is not a new function,
canonical ASM/C pair, whole-function extent or lifetime guarantee.

The original identity is the [central reference](../evidence/reference.json).
All VA intervals have exclusive stops; RVA = VA minus `00400000`. The stable
parent is `ts3w-pc-1.67:0011a71f:0011a780:20261104`, originally unresolved in
the [42,715-row complement](remaining-executable-regions.tsv). That baseline
stays unchanged. The separate [four singleton-root assertions](remaining-instruction-evidence.md)
remain four /1,690 complement bytes and 597 whole anchors /1,692 bytes. The
[four data assertions](remaining-region-dispositions.md) remain 118 bytes.
The [native pair index](../indexes/native-evidence.tsv) remains at 75 pairs.

## Original instruction context

The [context data](../evidence/native/data/0051A720-slot8.context.tsv) retain
all eleven original starts, byte strings, decoded instructions, exact parent
intersections and local successors. The original PE, retained GNU/NDISASM and
independent GNU/LLVM boundaries agree. No decoder-generated C is substituted
for an actual function decompilation.

| Start VA | Original bytes | Bounded physical role |
| --- | --- | --- |
| 0051A720 | `f644240401` | Test bit0 of the low byte of the stack argument. |
| 0051A725 | `56` | Preserve ESI. |
| 0051A726 | `8bf1` | Preserve the ECX receiver word in ESI. |
| 0051A728 | `c706802bfa00` | Write table pointer 00FA2B80 through the receiver on both paths. |
| 0051A72E | `7409` | If bit0 was clear, branch to 0051A739; intervening PUSH/MOVs preserve TEST flags. |
| 0051A730 | `56` | Push receiver as the conditional helper argument. |
| 0051A731 | `e8aa9dfcff` | Call 004E44E0. |
| 0051A736 | `83c404` | Remove that helper argument on normal return. |
| 0051A739 | `8bc6` | Copy the original receiver word to EAX. |
| 0051A73B | `5e` | Restore ESI. |
| 0051A73C | `c20400` | RET4 removes the entry's single physical stack argument. |

The finite graph contains eleven edges. Conditional branching keeps both
successors. The external CALL contributes only its **assumed-normal-return**
fallthrough; its callee CFG, exception behavior and effects are not closed.
All eleven starts are structurally connected from 0051A720. No following CC
byte is included. A valid writable receiver is needed for the first-DWORD store;
the context has no receiver-null guard. The returned receiver word is not a
Boolean or evidence that its storage remains allocated/readable. The shape is
consistent with a deleting-destructor entry, but that interpretation does not
authorize a function/class/type definition or complete teardown claim.

## Concrete conditional ingress

The [ingress data](../evidence/native/data/0051A720-slot8-ingress.json) retain
the two original twelve-byte table views, the caller's 30 original bytes/eleven
starts, three selected creator stores and the exact conditional ingress rows.
Only the selected table prefixes are established, not full table lengths or
installed runtime state.

| Selected original table | +0 | +4 | +8 |
| --- | --- | --- | --- |
| 010022D0 | 00B31790 | 00EC7190 | 0051A720 |
| 00FA2B80 | 00F7F28C | 00F7F28C | 0051A720 |

EC7190 loads receiver+4, decrements modulo2^32 and stores without a LOCK prefix.
On a nonzero result it returns that raw word; zero input underflows to FFFFFFFF.
On a zero decrement result, it writes 1 back at 00EC719B, loads the receiver's
table at 00EC71A2 and its slot+8 at 00EC71A4, pushes DWORD 1 at 00EC71A7, and calls
the loaded target at 00EC71A9 with the receiver still in ECX. Thus each selected
slot resolves to 0051A720 **if the actual receiver table equals that selected
original table**. The static values do not prove that a runtime invocation
took this branch or retained either table.

For that exact target on normal return, the pushed 1 selects its conditional
helper path and RET4 consumes that word. EC7190 then XORs EAX,EAX at 00EC71AB
and uses plain RET at 00EC71AD. The target's receiver-word return is discarded;
the caller's zero result does not prove free, liveness, callback delivery,
cancellation, count invariants or race/reentrancy safety. Object field+8 holds
an opaque callback word; it is distinct from **vtable slot+8**. This target
does not read that callback word.

## Reused original sources and external limits

The creator's retained historical [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00742890.asm.txt)
([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00742890.c))
has a 96-byte window including padding; it is not promoted to a complete body.
Original stores007428C2/C5/CB initialize wrapper+4 to zero, install010022D0,
and store the incoming opaque callback word at wrapper+8. They support the
selected original wrapper/table relationship; host ownership and later table
changes remain outside this assertion.

The conditional helper has a real retained historical [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x004e44e0.asm.txt)
([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x004e44e0.c)).
Its 21 original bytes read a stack pointer; null returns, nonnull loads the
receiver from 011CC864 and forwards to 004E5E70 without testing an outcome.
The latter helper's bounded conditional critical-section bracket forwards to
004E5700. Allocator/backend effects, successful reclamation, allocation
provenance, global receiver lifetime and exception/reentrancy behavior remain
open. No helper body is added to the 31-byte assertion. The legacy C signatures
and analyst names remain qualified projections; original instructions govern
the physical relation. All links refer to immutable commit
`cf6f60a42fe8c5bd181495a32161217972cefebc`, relative to `tools/ts3w-proof/`.

## Parent and negative metadata

| Exact part of parent `[0051A71F,0051A780)` | Bytes | Disposition |
| --- | ---: | --- |
| `[0051A71F,0051A720)` | 1 | unresolved |
| `[0051A720,0051A73F)` | 31 | required instruction evidence only |
| `[0051A73F,0051A780)` | 65 | unresolved |
| Total | 97 | 31 asserted +66 unresolved |

The [residual data](../evidence/native/data/0051A720-slot8-parent-rest.tsv)
preserve all 66 original bytes. Some are CC and some are other byte sequences;
none is classified as padding, irrelevant, globally unreachable or a complete
neighboring body. The whole parent remains unresolved.

The retained TS3W query explicitly returned `Function not found: 0x0051A720`.
This is a captured negative observation, not successful function metadata or
authority to create a 31-byte definition. The selected baseline ownership has
no overlap with this context. The selected function census and retained
1,733-target registration frontier have no exact entry there; this bounded join
is not global function/registration absence. No target C is invented.

## Typed sidecar contract and bounded acceptance

The new parallel sidecar shares `reference_id`, inventory version, assertion ID,
stable parent identity, exclusive addresses and evidence disposition with the
older sidecars. It explicitly sets `root_kind=unowned_static_indirect_table_target`,
retained-NoFunction state, bounded registration scope, an original-context
source kind and unresolved owner. Empty `canonical_asm`/`canonical_c` fields
mean **no applicable function pair**, never a successful capture. Its context,
ingress and residual links provide the actual evidence instead.

`complete-unowned-entry-context` means complete **instructions within the finite
31-byte context**, not certified whole-function extent. All context intersections
are whole instructions; there is no split fragment or already-owned entry byte.
The local successor syntax is `kind:VA`, separated by semicolons; the empty
successor at RET4 terminates the local graph, not all behavior. External callees
are not traversed. Consumers must union assertions by parent before subtracting
and keep this root/source kind distinct from registered singleton entries and
needed data. No executable consumer/schema migration is implied by publishing
the declarative records.

The 31-byte instruction/slot/caller facts and unchanged 97-byte parent have
independent static checks. They support this bounded additional assertion only.
No function ownership, DB definition/name/type/annotation, canonical index or
original byte is changed. Runtime was not observed. Physical source-language
ABI, complete operation semantics, allocator/lifetime outcomes and the full
remaining-code/reference goal remain open.
