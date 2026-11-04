# Legacy windows joined to retained live body metadata

[Entry-level TSV](legacy-live-body-audit.tsv) and [structured JSON](legacy-live-body-audit.json) join **1,746 existing legacy windows** to the coordinator's retained `get_function_info` responses for `/TS3W.exe`, collected on 2026-11-04. The separate [offline artifact audit](legacy-window-audit.md) retains its original provenance and status. This join made no native requests and does not upgrade that offline audit to native verification.

The historical source remains **[JJCodes90/OpenTS3-Playtest, cf6f60a42fe8c5bd181495a32161217972cefebc](https://github.com/JJCodes90/OpenTS3-Playtest/tree/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof)**. Original reference identity is centralized in the source [README](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/README.md). This is an audit of selected existing exports, not a whole-executable inventory.

## Source and parser checks

The retained collection `20261104-start` contains 18 `legacy-body-metadata-*.json` chunks: seventeen hold 100 records each, and the final chunk holds 46. Every response identifies `TS3W.exe` as its context; the retained capture intent explicitly specifies `/TS3W.exe`. The intent still says `planned`; completion is evidenced by the separate returned records, not that intent label. The collection's response text does not independently hash the loaded program.

The parser requires exactly the historical window VA set, validates each result and body range, and retains source chunk plus one-based record ordinal for every output row. It reports:

| Check | Result |
| --- | ---: |
| Input records / unique requested VAs | 1,746 / 1,746 |
| Duplicate, missing or unexpected VAs | 0 / 0 / 0 |
| Error results or unparsed records | 0 / 0 |
| Resolved entry equals requested VA | 1,746 |
| Different containing-function resolutions | 0 |
| One stored range | 1,730 |
| Two stored ranges | 15 |
| Three stored ranges | 1 |
| Singleton stored metadata | 998 |

Every stored range is retained. Source ranges have inclusive ends; derived ranges, envelopes and set differences use exclusive stops. Counts denote byte addresses, **not instructions**. The parser normalizes interval unions, rejects reversed or overlapping input ranges, and checks the intersection/difference arithmetic. The 16 noncontiguous cases retain their actual gaps rather than treating envelopes as contiguous owned code.

## Stored-boundary comparison

| Historical window versus current stored union | Records |
| --- | ---: |
| Exactly equals stored union | 35 |
| Contains stored union and additional addresses | 1,711 |
| Misses any address in stored union | 0 |

These are **database-metadata relationships**. They do not establish real function-body completeness, complete operation paths, correct stored ownership, or byte accuracy. In particular, 998 returned bodies are singleton annotations. None is certified here as a complete one-byte function.

`legacy_window_bytes_outside_stored_union` measures the historical window minus the stored body union. Its addresses can include padding, referenced tables, unrelated routines, or genuine operation blocks missing from the stored definition. Calling these bytes automatically nonowned, waste, or irrelevant would be unsupported. The TSV provides their exact interval differences for review.

For example, `00765760` has stored ranges `[00765760,00765E4D)` and `[00765E50,00766DB0)`, with a three-byte internal envelope gap. Its 5,712-byte historical window contains both ranges and additional addresses. The join keeps that distinction without certifying the original function's complete ownership.

## Five operation-path gaps remain open

The prior offline audit identifies conditional destinations absent from the historical raw window. All five remain open even though the window contains the entire current stored union:

| Entry | Current stored union | Historical window relationship | Operation-path evidence still unresolved |
| --- | --- | --- | --- |
| `00777F30` | `[00777F30,00777F31)`; singleton metadata | Contains 1 stored address plus 67 others | `00777F43 JNE -> 00777F74`; `00777F47 JE -> 0077808D` |
| `007780A0` | `[007780A0,007780E9)`; 73 addresses | Exactly equals stored union | `007780B3 JNE -> 007780E9`; `007780B7 JE -> 0077820B` |
| `00778210` | `[00778210,00778211)`; singleton metadata | Contains 1 stored address plus 67 others | `00778223 JNE -> 00778254`; `00778227 JE -> 0077836D` |
| `00778A00` | `[00778A00,00778A5D)`; 93 addresses | Exactly equals stored union | `00778A13 JNE -> 00778A5D`; `00778A17 JE -> 00778B93` |
| `00D83020` | `[00D83020,00D83038)`; 24 addresses | Exactly equals stored union | `00D83032 JNE -> 00D83038` |

Thus three known raw-path gaps coexist with exact equality between the window and stored body. The missing conditional destinations require their own complete capture, pristine-byte comparison and ownership explanation. A stored definition can represent only a prefix or depend on separately defined/shared/outlined continuation blocks.

Two other useful counterexamples are `00D84E80` and `00D744E0`. Both responses give singleton body metadata. The historical raw getter at `00D84E80` reaches `RET 4` well before its 8 KiB cap; the raw descriptor-appending routine at `00D744E0` contains instructions through `00D74511 RET 4`. The join reports the singletons without changing metadata, treating those functions as one byte, or claiming to have repaired their definitions. `00D77820` instead has stored `[00D77820,00D77B3D)` with 797 addresses; its historical 800-byte window includes three additional addresses. A less alarming boundary relationship still does not establish all startup/package behavior.

## Interpretation and continuation

Each row keeps `real_function_body_completeness=unverified`. The five concrete omitted conditional paths additionally carry `operation_path_status=confirmed_conditional_raw_path_gap_open`; all other rows retain unverified whole-operation status. No semantic or runtime acceptance is inferred from the number of stored addresses, cap flags, exact entry resolution, a terminal RET in an archived window, or agreement with a current stored union.

The next native work should use the representative pilots and exact interval differences to distinguish stored-boundary defects, shared continuations, required data and genuinely complete tiny wrappers. Complete Listing and original-byte agreement are separate evidence obligations. This join did not request Listing, decompilation, native inventory, database repair, saving or runtime execution. Its parser, retained input hashes, validation record and resume instructions are preserved locally with the research collection.
