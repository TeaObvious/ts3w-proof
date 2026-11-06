# Reusing the historical native evidence

This page retains the earlier audit and its original adoption boundary. The subsequent [complete proof import](../guides/reference/retained-proof-snapshot.md) now adopts canonical paths for the old corpus, with maintained successors for overlaps. The historical audit tables below are not silently recalculated or promoted into current semantic acceptance. Use the [current native index](../indexes/native-evidence.tsv) and [path map](../indexes/retained-proof-paths.tsv) for the adopted files.

The historical PC 1.67 collection contains substantial original evidence worth preserving. Its 5,054 indexed pairs can support further research without recapturing every function. This catalog establishes byte provenance, inclusion of retained stored body ranges and a bounded symbol-freshness search. It does **not** adopt those pairs as this repository's current canonical exports or accept their real function extents, complete contracts or runtime behavior.

The executable identity is centralized in [the original reference](../evidence/reference.json). Historical artifacts come from [JJCodes90/OpenTS3-Playtest, commit cf6f60a42fe8c5bd181495a32161217972cefebc](https://github.com/JJCodes90/OpenTS3-Playtest/tree/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof). All `legacy_asm` and immediately following `legacy_c` paths in the tables are relative to that commit's `tools/ts3w-proof/` root. They are historical paired path references, not missing local Research files. [Source and field conventions](legacy-reuse-source.json) retain the exact source commit, reference/RVA identity and snapshot definitions.

## Search the retained evidence

| Table | Rows | Purpose |
| --- | ---: | --- |
| [Historical native catalog](../indexes/legacy-native-reuse.tsv) | 5,054 | Historical name, paired source paths, boundary rule, verified saved bytes, stored half-open union, absent envelope bytes and existing Research successor paths. |
| [Bounded name-freshness candidates](../indexes/legacy-name-freshness-candidates.tsv) | 90 | Grouped C entries containing old symbols from the finite reviewed 113-target name set; includes target names and occurrence counts. |
| [Original relative-transfer witnesses](../indexes/legacy-name-transfer-witnesses.tsv) | 112 | Source/site/target, original E8/E9 bytes and old paired paths for 65 candidate source entries. |

Search by eight-digit VA, RVA, historical name or old symbol. Names and paths may change; the stable key is reference identity plus RVA. `research_75_*` cells identify an existing successor in the separate 75-entry Research snapshot. Empty cells mean no exact-entry pair in that snapshot, not missing game behavior or an excluded function.

For example, the historical [CountedReference_Retain ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0040a300.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0040a300.c)) preserves eight original bytes. The historical [Frame bridge ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0077d320.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0077d320.c)) instead preserves a bounded original window with a jump table and explicit database-boundary limitations. Byte equality is useful in both cases; it does not make their extent claims equivalent. The [current Frame guide](../guides/ui/frame-drawable-consumer.md) retains that qualification.

## What has been checked

Every indexed ASM and C artifact exists at the historical source commit. All 5,054 ASM artifacts contain parseable saved bytes. Independently implemented readers compared all **1,559,292 saved byte positions** with the identified original executable and found no mismatch. This sum counts an address again when another artifact contains it; it is neither unique executable coverage nor a semantic measurement. Saved nonowned byte rows remain bytes, without being promoted to instructions.

Exactly 5,052 historical entries have an exact definition in the retained [stored-range inventory](native-owned-ranges.tsv). Every byte of each such declared union is present in its corresponding historical ASM artifact. This does not prove that the declared body is correct or complete. In particular, 1,022 of these entries have singleton one-address metadata. A valid original byte at a singleton is not a complete one-byte operation.

The catalog keeps all union ranges with exclusive stops. Its count is based on the retained 20261104 ownership inventory, whose [scope and limits](full-body-coverage.md) remain in force. Metadata inclusion does not close outlined continuations, shared tails, indirect targets, data dependencies, initialization, error paths or destruction.

Fifty-eight indexed envelopes omit a total of 410 address bytes from their saved ASM bytes. Every omitted address lies outside that entry's stored union. These are envelope-versus-union differences, **not newly established missing owned-body bytes**. Existing local contracts must determine whether a gap is padding, data or other code before any filling, trimming or ownership change.

Two entries have no exact definition in the retained census: `0095F620` and `00C99950`. Their historical artifacts are explicitly qualified original code contexts. Reusing their bytes does not invent a current Ghidra function or successful full decompilation. The catalog preserves the distinction through `exact_census_definition=false`, an empty range list and an empty missing-union field.

The separate [older-window audit](legacy-window-audit.md) covers 1,746 next-entry/8 KiB windows and 25 specially qualified cases. Its historical observations remain unchanged. Later [fast-field](../guides/persistence/fast-field-reading.md) and [thumbnail](../guides/rendering/thumbnail-generation-callbacks.md) pairs supply the five concrete omitted branch paths without pretending the original prefixes were complete. A window cap, `cap_applied=false`, last RET or outside jump is insufficient to decide whole-operation completeness.

## A bounded freshness signal

The name search uses 113 retained actual successful analyst-name changes with matching exact-address/name readbacks. It is a finite historical observation set, not a fresh whole-database name scan. Comments and string/character literals do not contribute to its symbol counts.

The 90 candidate C entries contain 163 old qualified-symbol sequences. A sequence can be an old function definition or a noncall use; the table does not call all 90 entries direct callers. Nine own historical index names differ from this observation set: `00774EF0` and the eight Platform entries `00AF6640`, `00AF6650`, `00AF6660`, `00AF67C0`, `00AF6C40`, `00AF7730`, `00AFED60`, `00AFF160`.

For 65 candidate source entries, the retained direct-call index also supplies 112 sites whose original five-byte E8/E9 instruction-form operands resolve to the stated target. The table preserves the exact bytes. A valid relative operand and an archived linear-decoder site do not independently certify instruction ownership, call-versus-tail semantics or indirect caller closure.

These are candidates for checking existing final receipts before requesting missing current C. Ninety is **not a mandatory 90-read queue**, and absence from this search is not a freshness guarantee. Parameter/local-name changes, type/signature projections, PLATE/EOL comments and decompiler name propagation require their own actual-source check. A C file can already display current callee names and still predate its last annotation or projection change. Old symbols must not be patched by hand to simulate a fresh export.

## Existing successors and adoption boundary

The recomputed join uses the [75-entry Research snapshot](https://github.com/TeaObvious/TS3W-Research/blob/27699f4e4f37ec5103463a5f7e619ffe294f1f45/indexes/native-evidence.tsv). Its exact-entry intersection with the historical index is 17. The earlier reviewed 69-entry snapshot also intersected at 17; that remains a separate historical result. Recomputing the join against 75 happens to preserve the same intersection because the six additional UI pairs were outside this historical code index.

Existing canonical successors take priority. Do not create another pair under an old name or give a second public body to the same reference/RVA. Their snapshot paired paths are recorded in the catalog; a successor can still retain explicit ABI, ownership, data or runtime questions. This catalog adds no native canonical pair: **5,054 catalog rows are not 5,054 newly adopted canonical pairs**.

Reuse proceeds along separate evidence axes:

1. Preserve valid original ASM, necessary data and still-supported contract statements with their fixed-commit provenance.
2. Select the latest completed actual C/info/comments/Listing sources already available after relevant database changes. Preserve genuine C and original bytes; render missing EOL transport with instruction addresses. Keep analyst assignments, generated types and physical ABI evidence distinct.
3. Resolve paths and names against the canonical index and update references together. Choose responsibility groups from the existing contracts and reader/writer relationships; do not invent semantic names from filenames.
4. Ask only the remaining concrete questions: absent current C, an actual missing block/data dependency, ambiguous ownership or an unresolved contract. Correct byte provenance alone neither requires a full recapture nor permits semantic acceptance.

Relevance, real body/CFG completeness, data closure, semantics, annotation/export synchronization and runtime observation remain separate dispositions. Unknown functions are not excluded. This catalog provides preserved inputs and a bounded search result; individual final adoption still requires the applicable contract, naming, dependency and independent-review checks. No runtime behavior or whole-reference completion follows from its row counts.
