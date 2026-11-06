# Bounded data assertions inside remaining regions

The [remaining-region baseline](remaining-executable-regions.tsv) remains
unchanged at 42,715 unresolved rows from inventory version `20261104`. This pilot
adds four separate, exact subinterval assertions in
[remaining-region-dispositions.tsv](remaining-region-dispositions.tsv): 118 bytes
are required dispatch data for specific retained operations. It does not
reclassify their whole parent regions, alter declared Ghidra ownership, or
exclude any bytes as padding or irrelevant code.

The baseline is the published
[2ab2fa2a80e5ee1ea95622558bf2fcb7ee600944 snapshot](https://github.com/TeaObvious/TS3W-Research/tree/2ab2fa2a80e5ee1ea95622558bf2fcb7ee600944/inventory).
Original identity and address conventions are in the
[central reference](../references/pc-167.md). VA intervals here use exclusive
stops. The [original data excerpt](../evidence/native/data/remaining-region-pilot.tsv)
retains exact bytes, decoded little-endian targets, selector bytes and consumer
instruction addresses. Those facts were independently checked against the
original PE and bounded instruction decoding, without Ghidra access or execution.

## Four data intervals

| Assertion and interval | Static consumer and concrete admission | Required data role |
| --- | --- | --- |
| `fast-fields-nonnull-dispatch`: `[00D831EC,00D8320E)`, 34 bytes | D83038 nonnull-object continuation; D8307D/80/83 reduce the type code by 2 and require unsigned result <= 13; D83089 loads the byte selector and D83090 performs the indexed jump. | Five DWORD targets at D831EC, then fourteen selector bytes at D83200. |
| `fast-fields-null-dispatch`: `[00D83210,00D83232)`, 34 bytes | D83038 null-object path; D83158/5B/5E apply the same unsigned code guard; D83160 and D83167 select and jump. | Five distinct null-path DWORD targets at D83210, then fourteen selector bytes at D83224. |
| `primitive-array-dispatch`: `[00D83518,00D8353A)`, 34 bytes | Registered Serializer_WritePrimitiveArray entry D83470; D83494 reads the incoming type byte; D834A0/A3/A6 require unsigned(code - 2) <= 13; D834A8/AF load selector and jump. | Five DWORD targets at D83518 and fourteen selector bytes at D8352C. Only the data's dispatch role is established here. |
| `frame-drawable-dispatch`: `[0077D39C,0077D3AC)`, 16 bytes | Registered FrameDrawableGeneric entry 77D320; 77D35C loads function ID from its physical stack slot; 77D360/363 require unsigned ID <= 3; 77D365 jumps through the table. | Four DWORD targets for function IDs 0..3, with no selector map. |

The two fast-field assertions reuse the canonical
[ASM](https://github.com/TeaObvious/TS3W-Research/blob/2ab2fa2a80e5ee1ea95622558bf2fcb7ee600944/evidence/native/persistence/fast-fields/00D83038.asm.txt)
([annotated C](https://github.com/TeaObvious/TS3W-Research/blob/2ab2fa2a80e5ee1ea95622558bf2fcb7ee600944/evidence/native/persistence/fast-fields/00D83038.c))
and the [existing fast-field contract](../guides/persistence/fast-field-reading.md).
Each table has five targets, while the fourteen selector bytes range only 0..4.
Every target is an actual instruction start in the independently decoded
consumer's bounded CFG. The maps match one another, but their target tables are
different; they are two required data intervals, not one duplicated owner record.
Their adjacent two-byte gap is deliberately outside both assertions.

The primitive-array assertion uses the retained original
[ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00d83470.asm.txt)
([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00d83470.c)).
The C switch corroborates the selected branch families, while original
instructions establish the guard, selector/table addresses and destinations.
The five target values are D834B6,D834E6,D834C6,D834D6,D83509; the last is the
default path. Retained selector bytes establish the reachable table domain.
The original registration name is not used to infer unreviewed stream behavior,
endianness, error handling, lifetime or complete array semantics.

The FrameDrawable assertion uses the retained original
[ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0077d320.asm.txt)
([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0077d320.c)).
The four little-endian values are 77D36C,77D375,77D384,77D38D, the exact four case
starts. The C rendering's inherited/unaffiliated parameter names remain qualified;
the physical stack load and unsigned guard govern this table-role claim.
This does not establish safety of arbitrary state indices or handle/interface
ownership. The intended table address is `0077D39C`, not `0777D39C`.

The old linear ASM windows decode these table bytes into apparent instructions
as well. That rendering is not the reason they are data: the guarded indexed
JMPs, bounded selector domains, original DWORD values and actual case targets
establish their role. No opcode-pattern or filename heuristic was used to
classify neighboring bytes.

## Parents and explicitly unasserted pieces

| Baseline parent VA interval | Parent bytes | Asserted data bytes | Remaining pieces and status |
| --- | ---: | ---: | --- |
| `[00D831EC,00D83240)` | 84 | 68 | `[00D8320E,00D83210)` and`[00D83232,00D83240)`: 16 bytes remain unresolved. |
| `[00D83471,00D83540)` | 207 | 34 | `[00D83471,00D83518)` and`[00D8353A,00D83540)`: 173 bytes remain unresolved. |
| `[0077D321,0077D3B0)` | 143 | 16 | `[0077D321,0077D39C)` and`[0077D3AC,0077D3B0)`: 127 bytes remain unresolved. |
| Total of three touched parents | 434 | 118 | 316 bytes remain outside this pilot's assertions. |

Each assertion row retains the baseline parent ID and the parent's exact
unasserted interval set **after all four assertions**. The two fast-field rows
share a parent; its residual set is the same on both rows. A consumer must union
assertion intervals before accounting for a parent, not subtract the shared
parent twice. Untouched baseline rows are unchanged. This pilot makes no
overall remainder-percentage or completion claim.

`needed_data` means the bytes are required by the proved static dispatch of the
identified relevant operation. `consumer_function_rva` records that actual
consumer association; it does not establish an exclusive allocator, initializer,
writer, lifetime owner or required runtime invocation. Original bytes, data-role
acceptance, function-body completeness, semantics, Ghidra annotation/persistence
and runtime remain separate dimensions. This inventory does not add these data
bytes to Ghidra body ownership or fabricate a new canonical ASM/C pair.

## Cross-section declaration 00519010 remains unresolved

The complete ownership snapshot declares `[01020100,01020338)` as a second range
of function 00519010. This 568-byte range is original file-backed `.rdata`, outside
the remaining `.text` domain, so it is **not** silently added to the four residual
data assertions.

Independent original-byte inspection establishes that the range contains a
mixture of literal ASCII and UTF-16 text sequences, including `SACS/fromStr` and
`NamespaceMap%dTo`. This is a bounded statement about those stored byte sequences,
not proof of their complete object format, ownership or active use. In particular,
568/4 must not be read as evidence of a 142-entry branch table.

Within independently decoded`[00519010,0051A43D)`, no direct literal operand into
that `.rdata` interval was found. The range contains other indirect control flow;
at 519124/51912B it uses a selector at 51A450 and a target table at 51A440 instead.
This is a bounded direct-operand search, not a complete xref, caller, computed
pointer or runtime reachability proof. Existing legacy-guide searches found no
retained 00519010 contract/pair that resolves the relationship. Child functions
and synthesized addresses were not exhaustively followed.

The declared association may involve a boundary/analysis problem or some
unresolved relationship; this review does not choose a cause. No function name,
body, table label, annotation, database save or original byte was changed.
Determining why this function owns these text addresses, and whether any actual
consumer relationship exists, remains an explicit question. The full declared
range stays in the ownership inventory until a separately reviewed decision.

## Bounded acceptance

The four assertions have exact original bytes, guarded consumer instructions,
decoded table values, case-start checks and source ASM/C links. They are useful
static disposition facts for 118 bytes; they do not close whole parent regions,
all dispatch data, the residual corpus, logical function bodies, ABI questions,
original runtime behavior or the comprehensive reference. No padding or bloat
exclusion is made, and no earlier unknown is silently converted into such an
exclusion.
