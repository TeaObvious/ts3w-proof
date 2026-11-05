# Required instruction evidence at two registered enum entries

The [typed context sidecar](remaining-instruction-context-assertions.tsv) adds
two exact `needed_instruction_evidence` assertions: `[00D7CE10,00D7CE9C)`,
140 bytes / 44 whole instructions, and `[00D7CEA0,00D7CF4E)`, 174 bytes / 58
whole instructions. The original registration, original managed forwarding,
original bytes and independent instruction boundaries establish these finite
entry contexts. They are not current Ghidra definitions, canonical ASM/C pairs,
certified complete function extents or complete enum-operation contracts.

Original identity is the [central PC1.67 reference](../evidence/reference.json).
All stops are exclusive; RVA=VA minus `00400000`. The existing
[enum root contract](../guides/bridge/enum-native-roots.md) and
[lookup/producer contract](../guides/bridge/enum-lookup-contract.md) remain
qualified static findings. No old assertion or declared ownership is changed.

## Exact original registration and managed forwarding

The [ingress record](../evidence/native/data/enum-registered-roots-ingress.json)
retains the original binder byte sequences and two name strings. The original
host binder at D7E9F0 supplies D7CE10 with name pointer 108CEAC to E82820 at
D7EB06; it supplies D7CEA0 with name pointer 108CE74 at D7EB15. These are direct
binder arguments, rather than registration-table rows. The exact names and
MethodDef candidates resolve through the [registration index](../indexes/native-registrations.tsv).

| Original name | Original MethodDef declaration | Public wrapper |
|---|---|---|
| `ScriptCore.Simulator::MonoScriptHost_GetEnumSimpleName` | ScriptCore 06000548, `String(Type,UInt64)` | 06000586 |
| `ScriptCore.Simulator::MonoScriptHost_GetEnumSimpleHash` | ScriptCore 06000549, `UInt32(Type,UInt64)` | 06000587 |

The [identified original ScriptCore provenance](../evidence/managed/enum-roots/provenance.json)
connects the package S3SA resource, assembly version/MVID and selected DLL.
Original wrapper [06000586 IL](../evidence/managed/enum-roots/ScriptCore.Simulator.GetEnumSimpleName.il.txt)
([C#](../evidence/managed/enum-roots/ScriptCore.Simulator.GetEnumSimpleName.cs))
and [06000587 IL](../evidence/managed/enum-roots/ScriptCore.Simulator.GetEnumSimpleHash.il.txt)
([C#](../evidence/managed/enum-roots/ScriptCore.Simulator.GetEnumSimpleHash.cs))
are eight bytes each: load Type and UInt64, call the exact private P/Invoke,
return. Their raw code was freshly read at DLL RVAs 750A/7513 and matches the
retained IL. The selected assembly and original scripts.package hashes match
their existing provenance. This is original retail assembly evidence; no
reconstructed source-tree equivalence or runtime marshaling is assumed.

## Finite context and physical behavior

The [instruction data](../evidence/native/data/enum-registered-roots.context.tsv)
retain all 102 original anchors, complete byte strings, decoded instructions,
parent intersections and direct CFG successors. Existing independently produced
GNU/LLVM boundary/byte partitions agree, and every byte freshly matches the
original PE. Local edges and direct call destinations were rederived from the
original opcode/displacement bytes. Every context start is structurally reachable
from its registered entry. Calls contribute their assumed normal return only;
external callee CFGs and nonlocal exits remain separate dependencies.

D7CE10 branches at D7CE46 to D7CE81; the fallback rejoins at D7CE85 and returns
at D7CE9B. D7CEA0 branches at D7CED6 to D7CF24; the found-text scan loops from
D7CF37 to D7CF30 and the two paths return at D7CF23/D7CF4D. Neither finite
context has an indirect jump or falls through its candidate end. The returns,
entry registrations and direct CFG support these exact instruction contexts;
they do not certify database ownership or absence of other/interior entries.

Both entries physically read the pointer at entry ESP+4 and its field+4 without
a local null guard, and use ESP+8/+C as the UInt64 low/high words. They preserve
ESI/EDI, reserve 90h local bytes, and restore before plain C3 returns. The Winapi
P/Invoke label does not prove native callee-pop behavior. E71040 produces the
class-like argument to D7CC60, whose captured dispatcher pops 0Ch and replaces
incoming ECX before its typed calls. Each root consumes a found field+0C name
pointer or formats the original full UInt64 words with `%I64x` through 930FA0.
D7CE10 obtains TLS through E75550 and forwards EAX from EA43B0(TLS,text).
D7CEA0 calls 7CFE50 with found text excluding NUL or formatter current-minus-begin
length, then forwards full EAX. The downstream
[lookup contract](../guides/bridge/enum-lookup-contract.md) retains cache reads,
cold field/constant producers, temporary slot writes and cache publication.
No independent persistence writer is introduced by these contexts.

## Historical owner distinction and exact parent split

The complete retained [40,854-entry census](native-function-census.tsv) has no
exact definition at either entry. Independently, none of the 44,903
[stored owned ranges](native-owned-ranges.tsv) contains either entry or overlaps
any of these 314 candidate bytes. This historical **no-containing-owner** result
is stronger than no-exact-definition; neither result is a current DB query.
Current function/code-unit/data-unit ownership and incoming references remain
explicit next reads. No synthetic NoFunction response or target C is supplied.

Both assertions lie entirely in one unchanged 334-byte baseline parent,
`ts3w-pc-1.67:0097ce02:0097cf50:20261104`. The existing 118 data, 1,690 instruction
and 31 context assertion bytes have no intersection with either candidate.
There is no already-owned byte or split instruction fragment in these contexts.

| Parent part | Bytes | Disposition |
|---|---:|---|
| `[00D7CE02,00D7CE10)` |14| unresolved |
| `[00D7CE10,00D7CE9C)` |140| required instruction evidence |
| `[00D7CE9C,00D7CEA0)` |4| unresolved |
| `[00D7CEA0,00D7CF4E)` |174| required instruction evidence |
| `[00D7CF4E,00D7CF50)` |2| unresolved |

The [parent residual data](../evidence/native/data/enum-registered-roots-parent-rest.tsv)
retain all 20 remaining original bytes as three intervals. Their CC values
do not establish padding, irrelevance or a neighboring function extent.
The whole parent stays unresolved. The combined assertion sources now contain
2,153 disjoint complement bytes: 118 data, 1,690 singleton-root instruction bytes,
and 345 context bytes. Source-scoped subtraction yields 42,721 unresolved successor
intervals / 1,402,502 bytes; [the disposition join](function-disposition-source.json)
retains every unchanged assertion and baseline parent.

## Acceptance boundary and next questions

`complete-registered-entry-context` denotes complete instructions in these
finite direct CFG contexts. `associated_root_*` and original binder/IL links
identify the relevant entry; they assign no exclusive function, class or lifetime
owner. Empty canonical ASM/C fields mean no applicable function pair. The two
registered/no-definition rows remain open in the [function disposition inventory](function-disposition.tsv).

Next reads are current exact/containing ownership, code/data units through both
spans, incoming references at entries/internal blocks and neighboring-owner
boundaries. Formatter error/length behavior, TLS/string encoding/allocation/
ownership, exact managed/native types, marshaling, cache count/aliases/lifetime/
concurrency and downstream callee closure remain open. No original function was
executed; runtime, whole-operation semantics, exclusion and comprehensive
reference completion remain unclaimed.
