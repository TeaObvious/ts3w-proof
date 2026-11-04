# Legacy native window audit

This audits existing PC 1.67 proof artifacts at **[JJCodes90/OpenTS3-Playtest, commit cf6f60a42fe8c5bd181495a32161217972cefebc](https://github.com/JJCodes90/OpenTS3-Playtest/tree/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof)**. Original executable identity remains centralized in that source's [README](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/README.md). Image base is `0x00400000`; records carry VA and RVA. This is an offline artifact audit, not a new inventory of executable functions, a current Ghidra readback, or observed execution.

[Entry-level TSV](legacy-window-audit.tsv) contains all 1,746 canonical exports whose recorded rule is `min(next_ghidra_entry,entry_plus_8192)`. [Structured JSON](legacy-window-audit.json) contains the same records, counts, 25 exceptional nonlegacy exports, 106 code-index entries absent from the annotation index, and the 19 negative availability flags described below. All source paths in these files are relative to the pinned proof root. Historical `next_ghidra_entry` values are preserved without promoting them to current ownership boundaries.

## What the artifacts establish

| Check | Observed result | Limit |
| --- | --- | --- |
| Existing canonical pair inventory | 5,054 code-index records; no duplicate VAs; every indexed ASM and C path exists | Existence is not completeness or semantic review |
| Boundary representations | 20 distinct recorded boundary rules | Envelopes, exact ranges, table extensions and qualified CFG windows are different claims |
| Legacy boundary math | All 1,746 satisfy their recorded minimum formula, window length, raw header and cap flag | A correct formula can omit real paths |
| Legacy raw/listing structure | Every recorded window has contiguous raw bytes; the linear instruction records reproduce those exact bytes without gaps | This compares two archived representations; no fresh pristine-PE comparison was performed |
| Cap flags | 1 true, 1,745 false | Neither value establishes a complete function body |
| Direct jumps leaving a window | 239 windows | These include tail calls and linearly decoded data; no blanket truncation conclusion |
| Conditional direct jumps leaving a window | 5 windows | All five have a concrete omitted branch destination, discussed below; actual ownership still needs current readback |
| Linear decoder hazards | 2 windows with `(bad)` records | Both contain local switch data; a bad linear decode is not inherently missing code |
| Existing annotation index | 4,948 unique records; 106 code entries have no annotation record | All 1,746 legacy windows do have annotation records |
| Legacy annotation sizes | 7 recorded C byte counts differ from current C file size | Stale size metadata does not prove loss of C or original bytes |
| Legacy C warnings | 159 files contain literal `WARNING:` lines; 2 contain explicit stored-body caveats | Text may describe old analysis state; it is not a fresh database observation |
| Address-named alternative artifacts | 186 legacy addresses have candidate files outside the canonical directories | Discovery only; these are not certified replacement pairs or complete terminal receipts |

The seven C-size mismatches are `0076E650`, `0077B4F0`, `0078CF10`, `0078D700`, `00797E90`, `00998900` and `00EC0FC0`. The TSV records both the annotated byte count and actual file size. Resolve their metadata against preserved content; do not rewrite the originals automatically.

The JSON retains 25 existing exceptional nonlegacy entries explicitly qualified as zero-Listing/one-byte metadata, incomplete body or instruction-qualified CFG. Their `cap_applied=false` values and nonlegacy rule labels must not silently upgrade them to complete owned bodies. Other nonlegacy envelope/union/table variants are counted without being reclassified by this legacy audit.

## Concrete missing raw paths

The following five windows end before reachable conditional destinations. This is a concrete raw-export path gap, although whether the destinations are shared tails, outlined blocks or incorrect stored function splits remains a current-native question. Paired C includes work beyond the retained raw prefix. No automatic database repair follows.

| Entry / historical role | Retained window | Omitted direct path | Required pilot question |
| --- | --- | --- | --- |
| `00777F30` GenerateLotThumbnails | 68 bytes, stop `00777F74` | `00777F43 JNE -> 00777F74`; `00777F47 JE -> 0077808D` | Recover callback/notifier and null-manager paths; identify actual owned ranges |
| `007780A0` GenerateLotThumbnailsForGroup | 73 bytes, stop `007780E9` | `007780B3 JNE -> 007780E9`; `007780B7 JE -> 0077820B` | Compare group-specific callback input and continuation ownership |
| `00778210` GenerateHouseholdThumbnail | 68 bytes, stop `00778254` | `00778223 JNE -> 00778254`; `00778227 JE -> 0077836D` | Recover household continuation and real terminal paths |
| `00778A00` GenerateHouseholdSimThumbnail | 93 bytes, stop `00778A5D` | `00778A13 JNE -> 00778A5D`; `00778A17 JE -> 00778B93` | Recover Sim notifier/context branches and exact ranges |
| `00D83020` Serializer_ReadFastFields | 24 bytes, stop `00D83038` | `00D83032 JNE -> 00D83038` | Follow non-null stream path into field decoding; reconcile C's `switchD_00d83167` with the omitted ASM |

All five have `cap_applied=false`. For `00D83020`, the additional guide disassembly ends at the same `00D83037 RET`, so it does not fill this gap. A preserved historical original-byte comparison also describes only these 24 bytes and explicitly records `00D83038` as open non-call flow; it is not a complete-body receipt. The four thumbnail entries have no alternative artifact found by the bounded address-in-filename search.

## Representative pilot selection and counterexamples

The five concrete path gaps above are high-priority pilots. The following cases exercise distinct failure modes before any bulk re-export or layout change:

| Entry / role | Offline observation | What the pilot must distinguish |
| --- | --- | --- |
| `00D84E80` registration-table getter | Sole capped window is 8,192 bytes, but the getter reaches `RET 4` at `00D84E8A`. Subsequent wrapper-like instruction streams occur inside the same window, whose last record is `00D86E7F PUSH ESI` | A capped multi-routine window can already contain the whole tiny getter. Distinguish getter ownership from unrelated following code; do not call the getter truncated because a later routine is cut |
| `0077D320` FrameDrawableGenericImpl | Indirect jump at `0077D365` addresses the four-word table at `0077D39C`; `(bad)` at `0077D3A8` is inside that table | Preserve required table bytes as data rather than treating their linear decode as executable corruption |
| `00D83470` Serializer_WritePrimitiveArray | `(bad)` at `00D83520` lies in the post-RET switch-data region; indirect dispatch/table bounds require interpretation | Separate executable ownership, switch data and padding; do not discard required data or infer truncation from `(bad)` |
| `005A57B0` tattoo-template merge wrapper | 16-byte window starts with direct `JMP 005F67C0` and padding | A tiny complete wrapper can depend on a separate body; outside jump counts are not missing-wrapper counts |
| `007674D0` SACS_RequestStateImpl | 192-byte window has an early error RET and final RET at `00767584`, followed by padding; existing C explains indirect-call stack hazards | Exact owned-body completeness and ABI recovery remain separate from the apparently closed window |
| `00765760` Route_GetEstimatedTravelTime | Largest uncapped legacy window, 5,712 bytes; final nonpadding instruction recorded as RET at `00766DAF` | Review indirect control flow, referenced data and possible embedded/noncontiguous bodies; window size and terminal RET alone are insufficient |
| `00D744E0` AppendNativeClassDescriptor | C preamble says the stored body contains only PUSH ESI; raw shows 19 instructions through `00D74511 RET 4`, and the C body itself contains later operations | Determine whether the negative caveat is stale and retrieve the actual current ranges; a historical comment is not a current truncation proof |
| `00D77820` startup/package mounting | C explicitly says body boundaries may be incomplete; raw and guide disassembly extend through `00D77B3A RET 10` | Current ownership and complete call-path evidence, independent of the historical caveat |
| `00EC11B0` GetWorldName wrapper | 32-byte wrapper tail-jumps to `005A2A00` in one path; a separate existing complete getter is indexed at the target | Reuse the target's canonical pair; complete leaf evidence does not close wrapper marshaling/lifetime dependencies |

These are candidates for different reasons, not a reviewed complete set of relevant functions. No current Ghidra mutation, persistence claim, runtime claim or new whole-program inventory is made here.

## Negative availability flags

`direct-calls.tsv` contains **19** rows where `target_has_pseudocode=false` but the exact `destination` has an indexed existing C/ASM pair. The destination set is `004710C0`, `00471150`, `0058AF00`, `00594ED0`, `00713100`, `00B05870`. Only **10** of those rows also have an exported `target_function`; in the other nine, `target_function` is blank. These dimensions must be reconciled deliberately: destination-pair availability is observable, while populating a function-owner field requires actual ownership evidence. The JSON preserves source line, source function, instruction, destination and original flag; no source index was modified.

## Reproduction and limits

The audit parser reads the pinned code/annotation/call indexes, all 1,746 legacy ASM/C pairs, raw header bounds, byte lines, GNU objdump instruction records, warning text and address-named alternative `.txt`/`.c` artifacts. It checks archived bytes against archived listing bytes only. It does not infer ownership from linear decoding and does not call Ghidra. Candidate receipt search additionally covered retained JSON, text and Markdown handoff files for five selected addresses; no verified full owned-body terminal receipt was established by that bounded search.

TSV and JSON are searchable entry-level follow-up inventories. They intentionally leave all legacy evidence at `legacy_window_only_ownership_unverified`; local artifact consistency is not promoted into full-body capture. A later native pilot must preserve the original source commit, record exact current ranges, independently compare pristine bytes, account for referenced data, and resolve each observed gap before upgrading its status.
