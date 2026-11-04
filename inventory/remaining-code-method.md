# Remaining executable-region disposition

This method extends the [coverage model](coverage-model.md). It separates the
original PE layout, the current database's declared function ownership, captured
instruction/data evidence, and actual semantic disposition. Neither an owned
range nor its complement establishes complete real code, required behavior or an
exclusion. The scope is the original PC1.67 reference, centrally identified by
[reference documentation](../references/pc-167.md), with `reference_id=ts3w-pc-1.67`
and image base `00400000`. All derived ranges below have exclusive stops.

The PE structures were parsed directly from the identified original file using
bounded static reads, independently of Ghidra and earlier inventory values.
GNU objdump's PE headers/sections, full import-slot order and original export
directory were cross-checked. No image loading, execution, Ghidra request or
database mutation was part of this audit.

## Original image boundaries

The image is PE32/i386 with five sections, section and file alignment `0x1000`,
SizeOfImage `0x00E5B000` and AddressOfEntryPoint RVA `00B7FD51` / VA `00F7FD51`.
Only `.text` has the executable section characteristic. Its declared virtual
size and raw-file size differ:

| Region | VA interval | Bytes | Meaning |
| --- | --- | ---: | --- |
| `.text` file-backed declared virtual extent | `[00401000,00F95351)` | 12,141,393 | Original raw bytes cover every address in this declared extent. This is not proof all addresses are instructions. |
| `.text` excess raw/alignment tail | `[00F95351,00F96000)` | 3,247 | Physical bytes beyond `.text` VirtualSize and inside its aligned RawSize; retain as a distinct unresolved zone. |
| Combined initial `.text` audit domain | `[00401000,00F96000)` | 12,144,640 | Agrees with the captured Ghidra RX block's inclusive `00401000..00F95FFF`; its two PE zones stay distinct. |

[Executable-region TSV](pe-executable-regions.tsv) retains exact VA/RVA, physical
offset and zone identity. The PE alignment-tail label describes header geometry,
not proof that the bytes are harmless padding, unused, or safe to discard.
Do not expand raw-file decoding into virtual zero-fill, map an RVA as a file
offset, or infer runtime page permissions solely from original section flags.

The export directory contains one nonzero EAT slot, ordinal1/name `SecuROM`,
target RVA `00DCF378` / VA `011CF378`. It lies in the virtual zero-fill portion
of original RW `.data`, beyond that section's raw bytes. It is not a forwarder
and is not in the initially executable `.text` domain. These are structural
facts, not an implementation or DRM exclusion. Retain it as a separately recorded
root/target with unresolved code/data and initialization provenance. This audit
does not decode it or investigate protection behavior.

The TLS directory is present, with template `[01236000,01236008)` and callback
table VA `00F98EC8`. The first callback pointer is zero: zero original TLS
callbacks are enumerated. This does not prove there are no other initialization,
thread, static-constructor or runtime-generated roots. Delay-import, CLR, base
relocation and exception directories are zero in this original PE header; absence
of those directories does not establish absence of equivalent code mechanisms.
The certificate directory uses physical file offsets, not RVA coordinates.

## Imports and database count scopes

The original import directory has 24 nonempty descriptors plus the terminal
zero descriptor. Original ILT/IAT traversal yields 665 distinct `(DLL,name or
ordinal)` slots: 627 name imports and38 ordinal imports. Every thunk read was
bounded to raw-backed data, both ILT/IAT terminators were checked, and all665
IAT slot RVAs agree in order with independent objdump output. An import slot is
a pointer/table record, not a native function body or an automatically excluded
dependency.

The captured database import response also lists665 EXTERNAL identities,
classified651 Function and14 Label. That reconciles the separate reported
Function Count relation `41,505 = 40,854 internal definitions + 651 external
Function locations`. The665 PE slots are independently measured; the651 split
comes from database metadata. A Label kind does not prove an imported target is
data, and the statistic's internal `External functions:0` does not erase imports.
Do not divide exported pairs by either count and call it semantic coverage.

The database response's display text `from` may report a demangled C++ namespace,
not a PE DLL: for example `operator<< from basic_ostream<...>` corresponds to a
candidate decorated MSVCP80 import. Of665 sequence positions,638 match PE DLL
and name/ordinal directly;27 differ by demangling/display namespace. Sequence
agreement is a useful bounded cross-check, not a proven EXTERNAL-to-IAT mapping.
Use `observed_namespace_or_library` for the tool text. A final import relation
needs actual IAT/reference or documented demangling evidence; do not manufacture
an RVA from an EXTERNAL-space address or silently call a namespace a library.

## Exact ownership snapshot

The initial function-definition census is a stable set of40,854 entries. A full
body-range snapshot must join every one of these entries to its exact retained
`get_function_info` result, never to `next_entry`. The serial capture may reuse
already verified records, including final annotated captures, with explicit
source selection. A metadata refresh is a new snapshot; retain the predecessor
and explain changed ownership instead of overwriting its history.

For inventory version `20261104`, the parser must:

1. Freeze the input census, queue/reuse selection and complete file list before
   parsing. Record exact input hashes locally. Accept only real numeric metadata
   chunk filenames, not an intent/status filename matching a broad prefix.
2. Validate successful terminal response, correct program context, exact requested
   entry, all body ranges, and one selected record per expected census entry.
   Reject duplicate, missing, unexpected, invalid or ambiguous containing-function
   resolutions. Reused chunk sources select the exact entry, not every old record.
3. Preserve the tool's inclusive range preimage and normalize each `[a,b]` once
   to `[a,b+1)`. Validate order and report overlaps within a body instead of
   quietly repairing them. A singleton definition remains metadata, never a
   certified one-byte instruction or complete function.
4. Compute a sweep over every actual range, retaining the active owner set for
   each segment. Adjacent segments may merge for the union only; shared ownership
   is not lost. Count unique union bytes, overlapping bytes and multiplicity
   separately. Never subtract a sum of per-function sizes from the text size.
5. Intersect the union with each PE zone and captured memory domain; keep any
   outside-domain ownership anomaly separately. Form the exact complement for
   each zone and verify `union intersection + complement = domain`, without gaps
   or duplicate address accounting. A region that crosses a zone boundary splits.
6. Require all40,854 selected records before labeling this the full database
   complement. Partial captures publish only `partial_metadata_snapshot` and
   missing-record counts; their provisional complements also contain uncaptured
   definitions. Never call those regions undiscovered code or final rest code.

These operations establish a partition of declared address ownership at one
snapshot. They do not establish real extent correctness, all instructions,
complete operation paths, or understood semantics. The separate tool statistic
`Total code size:10740553` is not assumed to be union bytes: compare its result
with range-sum/union/overlap values and retain any scoped disagreement.

## Region records and review

Each residual region has a stable identity containing reference, start/stop RVA
and inventory version, with predecessor/successor links when split or reclassified.
Keep at least: PE zone, captured Ghidra block, exact interval, reason it is in the
queue, incoming control/data references, candidate owner/root, evidence locators,
disposition, reviewer and remaining question. Initial disposition is `unresolved`.
Ownership overlaps need their own records even though they are inside the union.

| Candidate | Required distinction and evidence |
| --- | --- |
| Padding/alignment | Known adjacent instruction ends, incoming-reference search bounds and actual byte/decode context; repeated00/90/CC or alignment alone is insufficient. Preserve exception/debug/trap possibilities. |
| Referenced data in executable section | Producer/consumer/table role and exact bytes, including jump tables, constants, vtables and pointers. Retain necessary data as data and follow actual targets. |
| Unrecognized instruction range | Confirmed boundary or justified entry, original bytes and independent decode, roots/edges and unresolved ABI; do not fabricate an owned Ghidra function. |
| Branch continuation/outlined body | Exact branch site, target, inherited stack/register state, shared epilogue and actual declared owners. Preserve separately defined entries unless a separately authorized repair is proved. |
| Thunk/import adapter/shared helper | Concrete instruction target, ABI/ownership and real users; keep shared game use even when another caller is excluded. |
| Mixed code/data or overlapping owners | Split exact instruction/data segments, preserve legitimate shared tails or unresolved conflicting definitions. The lower-address owner does not automatically win. |
| Proven irrelevant external operation | State precise supported boundary and show that preceding game-data creation and shared helpers remain represented. Require dependency review; name or DLL filters do not justify exclusion. |
| Known semantic owner, incomplete evidence | Link the owner/guide and keep body/data/relation gaps open; prior guide coverage does not dispose of missing original evidence. |

Initial PE-nonexecutability is not proof that no relevant data/code target exists
there. Managed registrations, entrypoint/export roots, function pointers,
callbacks, constructors and concrete references may require a separate non-text
target investigation. Keep those roots pending rather than adding whole data
sections to a denominator or silently dropping them. This static method makes
no claim about runtime-created or transformed code.

## Existing counterexamples constrain acceptance

AFEB00 has disjoint declared ranges and a six-byte envelope gap; the union must
exclude that gap without declaring its contents irrelevant. D83020's24-byte
declared body branches into separately defined D83038 with a preallocated stack
frame. The thumbnail prefixes similarly branch to separately defined callback
continuations and shared epilogues. Thus a perfect union of declared bodies and
even complete raw capture of an entry do not close its logical operation paths.

Conversely, a declared singleton can sit at the start of a longer real byte/CFG
window. The original legacy-window audit found998 singleton metadata records in
its1746-entry selection. A complement adjoining such a singleton needs boundary
review; it cannot be classified as independent padding merely because the current
database does not claim it. New corpus counts must come from the new snapshot.

A concrete cross-section case in the ongoing full metadata capture is00519010:
the retained response declares `[00519010,0051A43D)` plus
`[01020100,01020338)`. The second range is568 addresses in `.rdata`, outside the
initial `.text` domain. Preserve both declarations and flag the nonexecuting
section relationship for code/data review. This observation does not certify
the second range as instructions, tables, a valid shared owner, or an erroneous
definition; silently dropping it would lose required disposition evidence.

For final disposition, each relevant region must resolve to complete original
code/data evidence and its understood required dependencies, or to a supported
exclusion/data/padding decision with exact boundaries. Keep captured instructions,
data closure, semantic acceptance, Ghidra annotation/persistence and runtime
observation distinct. A generated partition is useful inventory work; it does
not meet the overall completion requirement while relevant questions remain open.
