# Initial native function-definition census

[Function TSV](native-function-census.tsv) records the **40,854 unique entries returned by the retained `list_functions` sequence** for `/TS3W.exe` on 2026-11-04. [Metadata JSON](native-function-census.json) gives page boundaries, scoped counts, source joins and exceptions. This is the initial database-definition baseline. It does not claim all real functions, all executable code, complete bodies, understood semantics or justified exclusions.

The stable identity is `reference_id=ts3w-pc-1.67` plus RVA, with image base `0x00400000`. VA and observed name are retained as lookup aids. Original executable identity remains centralized in the [reference documentation](../references/pc-167.md). Names and parameter counts are observed database metadata: neither a recovered original symbol nor a proven ABI follows from their presence.

## Capture and sequence validation

The coordinator captured 41 sequential pages with a page size of 1,000 in collection `20261104-start`. The first page uses offset zero; subsequent offsets increase by exactly 1,000 through 40,000. Each response reports a total of 40,854 functions. The first 40 pages contain 1,000 parsed records each; the final page contains 854.

The offline parser validates response context `TS3W.exe`, terminal non-error result, exact line format, page offsets, reported totals, per-page counts and strictly increasing VAs across every page boundary. All 40,854 entries are unique; no duplicate, missing page, out-of-order VA or unparsed function line was found. The TSV retains page filename, page offset and one-based record ordinal for each entry. It does not derive a function extent from the next entry.

| Source or join | Observed count | Meaning |
| --- | ---: | --- |
| Sequential `list_functions` entries | 40,854 | Verified size of this listing sequence |
| `get_program_info` Function Count | 41,505 | Separately reported database count |
| Program-count minus internal-listing count | 651 | Reconciled by the separate 651 EXTERNAL locations marked Function |
| Historical code-index exports | 5,054 | Address-keyed legacy pairs at the pinned historical commit |
| Historical exports with exact listed VA | 5,052 | Exact address match, independent of body or semantic completeness |
| Historical exports without listed VA | 2 | Qualified windows listed explicitly below |
| Selected current canonical pairs | 25 | Exact joins to the coordinator's current draft indexes; both files exist |
| Listed entries in captured `.text` block | 40,854 | Descriptive block membership, not a body or code/data classification |

The count relation is now reconciled from the separately retained statistics and imports:

`41,505 program-info Function Count = 40,854 internal listing definitions + 651 EXTERNAL Function locations`.

The function-statistics response enumerates 40,854 internal definitions: 5,013 named plus 35,841 auto-generated names, with 223 thunks. Its `External functions: 0` is scoped to that enumeration; it does not mean the program has no imports. The separate import-location response contains 665 unique EXTERNAL locations: 651 marked Function and 14 marked Label. The 14 labels are not added to the function count.

[Imported-symbol TSV](native-imports.tsv) retains all 665 external locations with observed name root, `observed_namespace_or_library` and symbol kind. The source tool's `from` field can contain a demangled C++ namespace/class scope such as `basic_ostream`, rather than a DLL name. It is preserved as observed text and is not a DLL identity or a join to an original PE import descriptor. A DLL mapping requires separate original-table evidence. EXTERNAL locations are database-space identifiers, not image VAs; no image base is subtracted and no RVA is invented. A label's kind alone does not establish that its runtime target is data: imported API-like labels such as `ShowCursor` require separate target/ABI interpretation. These counts reconcile observed tool scopes without proving complete original import-table correspondence, indirect target closure or semantic coverage.

The tool named exports reports 40,321 symbols in its own enumeration; that observation is not treated as the PE export directory. Its retained first page does not justify 40,321 PE-exported functions, and the census does not merge that number into the function denominator. A PE export-table claim requires its own original-byte directory inspection. All counts remain scoped to their sources.

## Historical and current evidence joins

The historical source is **[JJCodes90/OpenTS3-Playtest, commit cf6f60a42fe8c5bd181495a32161217972cefebc](https://github.com/JJCodes90/OpenTS3-Playtest/tree/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof)**. The TSV's legacy paths are repository-relative to that repository. Source commit is recorded centrally in the JSON. Every legacy entry is joined by exact VA, not by a name comparison.

Two historical entries have no exact VA in the function listing:

| Legacy VA | Historical name | Recorded evidence boundary |
| --- | --- | --- |
| `0095F620` | VisualState_ParentVisibility_QualifiedWindow | `instruction_qualified_cfg_window_no_owned_body_claim` |
| `00C99950` | CWAL_QueryInterface_QualifiedWindow | `instruction_qualified_cfg_window_no_ghidra_function` |

Their absent definition does not discard the qualified raw/CFG evidence and does not prove that the operation is absent. They remain explicit exceptions in the JSON. Entries with `no_exact_va_in_legacy_code_index` likewise mean only that no exact address appears in the selected index; this is not a search of every guide, table or alternative artifact.

The current snapshot selects 25 canonical pairs from the authoritative `indexes/native-evidence.tsv`. All 25 exact VAs appear in the listing and all indexed ASM/C files exist. `observed_name` remains the original name in the captured function-list response; `current_canonical_alias` separately records the current evidence-index name, including later confirmed names. The six additional floor pairs change this selected evidence lookup only; the 40,854-entry definition baseline and its captured names remain unchanged. Their paths are relative to the new research repository. These are coordinator-owned, uncommitted draft files at capture time, so the TSV marks them `indexed_files_present_publisher_review_pending`; file presence and index agreement do not replace evidence review or publication. This parser does not mutate those indexes or pairs.

## Memory blocks, entry points and remaining scope

The captured memory-block response lists seven blocks. Every function entry in this sequence lies in `.text`, recorded as RX at inclusive `00401000..00F95FFF`. The census reports entry membership only; it neither unions function bodies nor infers that addresses between entries are unclaimed code, padding or data.

The entry-point response lists `00F7FD51 entry (function, 0 params)` and `011CF378 SecuROM`. The former has an exact function-list match; `011CF378 SecuROM` lies in the RW `.data` block outside the returned function-entry set. Both are retained as recorded roots with pending path and boundary review. A data-address entry-point mark is not promoted into a native function definition. These observations alone supply no DRM exclusion, decoder boundary or executable-area disposition.

The next inventory stage requires separately captured body/ownership and remaining-code evidence. This baseline supplies stable keys for that join and preserves the two qualified legacy windows and the reconciled distinction between internal definitions, external function locations and external labels. It performs no body capture, re-export, database mutation, runtime observation, ABI recovery or semantic assignment. The earlier [legacy-window audit](legacy-window-audit.md) and [live body-metadata join](legacy-live-body-audit.md) retain their narrower, separate provenance.
