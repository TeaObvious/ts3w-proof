# Required instruction evidence outside two singleton definitions

Four exact assertions in [the instruction sidecar](remaining-instruction-evidence.tsv)
identify **1,690 bytes of required instruction evidence** inside two unresolved
regions of the [baseline complement](remaining-executable-regions.tsv).
They are static evidence for the registered Route smoothing and World attachment
operations. They do not enlarge a declared function, dispose a whole parent, or
establish either operation's complete semantics or runtime behavior.

The original identity is the [central reference](../evidence/reference.json).
VA intervals have exclusive stops; RVA = VA minus `00400000`. Baseline inventory
version `20261104` and all 42,715 original complement rows remain unchanged.
The [existing four dispatch-data assertions](remaining-region-dispositions.md)
remain separate, byte-identical facts for 118 bytes. They intersect neither
parent below. No canonical ASM/C pair is added; the native index retains 75 pairs.

## Original evidence and declared boundaries

| Registered original operation | Published original evidence | Retained declared body | Independently decoded original context |
| --- | --- | --- | --- |
| `ScriptCore.Route::Route_SmoothenSubPathConnections`, entry `007619E0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007619e0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007619e0.c)) | `[007619E0,007619E1)`, one byte `8b` | `[007619E0,00761E70)`, 1,168 bytes |
| `ScriptCore.World::World_WinAttachToObjImpl`, entry `0078DCF0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0078dcf0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0078dcf0.c)) | `[0078DCF0,0078DCF1)`, one byte `e8` | `[0078DCF0,0078DF10)`, 544 bytes |

Each linked pair is an immutable historical artifact at commit
`cf6f60a42fe8c5bd181495a32161217972cefebc`, relative to `tools/ts3w-proof/`.
The old ASM retains the longer original context; its linear decoding does not
by itself assign every byte to the registered operation. The C is a qualified
decompiler projection, not an ownership or physical-ABI receipt. Current retained
metadata still has the singleton boundaries above, and its Listing contains zero
instructions for each singleton. Longer original memory contexts and rich C do
not silently repair those declarations. The baseline ownership union has no
other declared owner in either context.

GNU and NDISASM instruction boundaries agree across all 414 Route and 203 World
linear starts in the finite contexts. Every decoded byte was checked against the
original PE and retained context memory. A separate review rebuilt the connected
graph from original opcode, displacement and ModRM bytes. The resulting graph
has 409 Route starts and 188 World starts. Direct branches connect only to exact
decoded starts; calls connect their fallthrough **assuming they return**;
conditional branches retain both successors without proving their predicates;
indirect jumps end the local graph. Structural entry connection is not observed
execution, input feasibility, installed-target identity or global reachability.

## Four finite assertions

| Assertion interval | Bytes | Complete starts within the assertion | Exact meaning |
| --- | ---: | ---: | --- |
| `[007619E1,007619E6)` | 5 | 0 | Remaining bytes of the six-byte entry instruction `8b0dc4501d01`, `MOV ECX,[011D50C4]`, anchored at `007619E0`. |
| `[007619E6,00761E6B)` | 1,157 | 408 | Complete instructions in the bounded Route continuation graph. |
| `[0078DCF1,0078DCF5)` | 4 | 0 | Remaining bytes of entry `CALL 00769390`, `e89bb6fdff`, anchored at `0078DCF0`. |
| `[0078DCF5,0078DF01)` | 524 | 187 | Complete instructions in the bounded World continuation graph. |

The five/four-byte pieces are **instruction fragments**, not invented instruction
starts at `007619E1` or `0078DCF1`. The
[instruction evidence table](../evidence/native/data/remaining-instruction-evidence.tsv)
retains all 597 connected original instruction anchors, their whole bytes,
decoded instructions, bounded successors and exact intersections with the two
baseline parents. Those whole instructions total 1,692 bytes, including the two
already-owned entry bytes. Their parent intersections total exactly 1,690 bytes:
595 complete continuation starts plus the two split entry fragments.

Route has a plain `RET` at `00761A36` and an unresolved indirect tail `JMP EDX`
at `00761E69` (`ffe2`). The final path loads a virtual target at slot `+14`,
restores its saved registers and `158h` local stack, and transfers with ECX holding
the route pointer. This establishes a physical tail transfer, not its installed
target, cleanup policy or calling convention from a registration/decompiler name.
World has a plain `RET` at `0078DF00` and restored indirect `JMP EAX` tails at
`0078DE4E` and `0078DEF9` (`ffe0`), selected from virtual slot `+4`. The initial
host query physically loads the handle at `0078DCF5` and pushes it at `0078DD01`
before the virtual `+CC` call at `0078DD04`; the retained C omits that argument.
That omission does not prove an argument-free callee ABI.

## Parent accounting and unresolved bytes

| Exact baseline parent ID | Parent bytes | Required instruction evidence | Explicit unresolved remainder |
| --- | ---: | ---: | --- |
| `ts3w-pc-1.67:003619e1:00361e70:20261104` | 1,167 | 1,162 | `[00761E6B,00761E70)`: five original `cc` bytes |
| `ts3w-pc-1.67:0038dcf1:0038df10:20261104` | 543 | 528 | `[0078DF01,0078DF10)`: fifteen original `cc` bytes |
| Total of two touched parents | 1,710 | 1,690 | 20 bytes remain unresolved |

Union the two assertions for each parent once before subtracting; their shared
parent is not counted twice. Neither remainder is reached from its selected
entry under this bounded call-return model. That does not establish padding,
harmless traps, debug-only use, absence of other incoming edges, global
unreachability or irrelevance. No `cc` pattern is used as an exclusion rule.
Neither whole parent is disposed. There is no new missing-original-byte finding
inside these two already-retained contexts; actual ownership and full function
extent remain unresolved.

## Reuse and dependency boundary

The connected instructions contain 29 direct calls, 41 indirect calls and three
indirect tails. They retain external/shared dependencies rather than closing them:
Route resolver `0074B4B0` is also called by GetPoint entry `00751E90`; acquisition
helper `00769390` is shared with Group `007649A0`, Thumbnail `00778F70` and
PickInfo `0077DA20`. World calls the existing canonical allocator `005050B0`
at `0078DD95` and `0078DE60`. Its existing pair is resolved by the
[native index](../indexes/native-evidence.tsv); no duplicate pair is created.

Equal virtual offsets do not establish equal objects or lifetime protocols.
The reviewed effect-construction path has table `0101BB90`, whose `+4` entry
leads to `00539560` and then `00504BC0`; the renderer table `0101BD10` instead
has `+4` target `007DC920`, outside that reviewed helper set. External calls may
affect the dynamic table before either World tail. Installed component/route
targets, host/secondary-query ownership, provider lifetime, geometric helpers,
allocation-failure behavior and complete downstream effects remain open.

## Sidecar contract and acceptance

`needed_instruction_evidence` is a separate **evidence disposition**, distinct
from `needed_data`, declared ownership and semantic completion. It means that
the exact bytes are required to retain the proved structural continuation of
the associated relevant entry. `associated_entry_*` is a qualified CFG/root
association, not an exclusive body, writer, allocator or lifetime owner.

The four-row sidecar uses the same reference/inventory/parent identity convention
as the baseline. It records exclusive VA/RVA limits, byte count, split/whole
instruction relation, complete-start count, original pair links and parent
residual intervals/bytes. Parent totals and residuals are repeated for the two
rows sharing each parent and must be deduplicated by `parent_region_id`.

In the instruction table, `instruction_*` delimits the **whole original anchor**;
`parent_intersection_*` delimits only its bytes in the complement. Each row has
one unique `(associated_entry_va,instruction_start_va)` identity.
`successors_call_return_model` is a semicolon-separated list of `kind:VA` edges
within the finite graph. Empty successors identify its plain-return or indirect
tail exits, not a proof of no outgoing behavior. Call targets are not traversed
as local graph successors. The two split anchors have intersection lengths five
and four while their complete byte strings have lengths six and five.

Original bytes, two-decoder boundaries, graph edges, all four intersections,
baseline IDs and residual accounting were independently checked. This accepts
these bounded static instruction-evidence facts only. No Ghidra definition,
name, type, annotation, save or ownership change is part of the supplement;
runtime was not observed. Complete operation semantics, physical ABI, lifetime,
all remaining code and comprehensive-reference completion remain unclaimed.
