# Registered native capture frontier

[Target frontier](native-capture-frontier.tsv) contains **one row per 1,733 distinct original native target**, joining all 1,777 original registration records. This prepares focused evidence work; it is not a mass re-export queue, a relevance ranking or a semantic coverage measure. Every row retains `relevance_status=unassessed` and distinguishes stored body metadata from proven original code.

The frontier joins the current [registration index](../indexes/native-registrations.tsv), the 40,854-entry [definition census](native-function-census.md), all 44,903 [stored ranges](native-owned-ranges.tsv), the current 25-pair [canonical evidence index](../indexes/native-evidence.tsv), and the 5,054-pair historical source at **[JJCodes90/OpenTS3-Playtest, cf6f60a42fe8c5bd181495a32161217972cefebc](https://github.com/JJCodes90/OpenTS3-Playtest/tree/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof)**. Historical paths are relative to that repository; current paths are relative to this research repository. Reference identity plus RVA is the target key. Registration IDs retain their source kind and record/call VA; alias names and managed candidate tokens are preserved together without inventing exact managed-signature matches.

This frontier freezes the 25 canonical pairs and metadata available in the [2ab2fa2a80 input snapshot](https://github.com/TeaObvious/ts3w-proof/tree/2ab2fa2a80e5ee1ea95622558bf2fcb7ee600944). Later evidence and names are resolved through the [current canonical index](../indexes/native-evidence.tsv); new pairs do not silently rewrite these historical frontier rows.

## Evidence-first order

| Priority | Targets | Concrete next work |
| --- | ---: | --- |
| P0: no exact stored definition or existing pair | 2 | Establish original target entry/CFG/ownership and verify the registration before proposing a complete body |
| P1: unresolved singleton metadata | 936 | Obtain complete original-byte CFG, determine Listing availability and explain the singleton; any coordinated database correction needs independent bytes and reviewed boundaries |
| P2: old window with nonsingleton metadata, not one of the five captured omissions | 606 | Review every exact stored range, tables and exits against original bytes; reuse the existing ASM/C pair and expand only demonstrated gaps |
| P3: current captured omission or other nonlegacy evidence | 189 | Reuse existing qualified pairs and their boundaries; resolve concrete contract/dependency gaps before additional capture |

These counts describe acquisition order only. There are 938 singleton metadata entries among the registered targets; two belong to the five already captured omission cases and therefore fall into P3 for reuse. A singleton is not a certified one-byte function, and current evidence does not silently repair the stored boundary. An existing contract is not an exclusion from body/data/dependency review.

All 1,731 registered targets with historical pairs have matching definition metadata. Their historical windows contain the stored union: 211 exactly equal it, and 1,520 contain additional addresses. None of those relationships proves actual function or whole-operation completeness. Additional addresses can include padding, required tables, other routines or real blocks missing from stored ownership. The TSV retains exact ranges, source records, byte counts and the relationship for each root. Missing exact stored metadata is never treated as an empty complete function.

The two P0 targets are **`00D7CE10` and `00D7CEA0`**. They have original `.text` registration targets but neither an exact address in the 40,854-definition snapshot nor an exact historical/current pair. They remain explicit first-priority original-entry questions, not synthetic completed definitions or excluded code.

## Small pilots before broad capture

The nonsingleton old-window cases supply inspectable starting bodies; they do not already have independently certified complete bodies. Thirteen registered roots with the old next-entry/8 KiB window rule have multiple stored ranges (15 across the whole frontier). Useful contrasting pilots include:

- `00754000` Route_SelfIntersectionTest: three ranges and 546 stored addresses. Verify the union and two internal gaps rather than exporting its envelope as entirely owned code.
- `00765760` Route_GetEstimatedTravelTime: two ranges and 5,709 stored addresses inside the 5,712-byte old window. A terminal RET and near-equal size do not close indirect branches or data dependencies.
- `00D835D0` TaskControl_ResolveFieldReference: two ranges and 472 stored addresses. Check frame/field handling and shared dispatch data before interpreting generated signatures.
- `00CE64D0` and `00CE6620`: separate two-range, 320-address tool text/value entries. Compare ownership and reader/writer relationships without merging sibling contracts by name.

The frontier identifies 89 legacy windows whose first decoded instruction is a direct jump. All 89 destination addresses have an indexed historical pair. Review the existing target pair as a separate tail/thunk dependency; do not call the wrapper incomplete simply because it jumps outside its window or assign the target's ranges to the wrapper. This syntactic detection is limited to first instructions in the old GNU linear-window format; absence from this set is not a no-tail-call claim.

## Five old raw omissions are captured; contracts remain open

The historical snapshot correctly recorded missing conditional destinations. Current canonical frontend and continuation captures now close those **specific raw ASM omissions**. Their underlying stream, request/notifier, resource, indirect-target and lifetime questions remain open. The frontier records `concrete_legacy_asm_omission_closed_by_paired_continuation_capture;underlying_contract_open` for all five rather than either blindly re-exporting them or claiming complete operations.

| Registered frontend | Captured separate continuation | Current operation guide |
| --- | --- | --- |
| `00777F30` | [ASM](../evidence/native/rendering/thumbnails/00777F74.asm.txt) ([pseudocode](../evidence/native/rendering/thumbnails/00777F74.c)) | [Thumbnail generation](../guides/rendering/thumbnail-generation-callbacks.md) |
| `007780A0` | [ASM](../evidence/native/rendering/thumbnails/007780E9.asm.txt) ([pseudocode](../evidence/native/rendering/thumbnails/007780E9.c)) | [Thumbnail generation](../guides/rendering/thumbnail-generation-callbacks.md) |
| `00778210` | [ASM](../evidence/native/rendering/thumbnails/00778254.asm.txt) ([pseudocode](../evidence/native/rendering/thumbnails/00778254.c)) | [Thumbnail generation](../guides/rendering/thumbnail-generation-callbacks.md) |
| `00778A00` | [ASM](../evidence/native/rendering/thumbnails/00778A5D.asm.txt) ([pseudocode](../evidence/native/rendering/thumbnails/00778A5D.c)) | [Thumbnail generation](../guides/rendering/thumbnail-generation-callbacks.md) |
| `00D83020` | [ASM](../evidence/native/persistence/fast-fields/00D83038.asm.txt) ([pseudocode](../evidence/native/persistence/fast-fields/00D83038.c)) | [Fast-field reading](../guides/persistence/fast-field-reading.md) |

The row's `body_range_status` still preserves singleton/contiguous metadata observations. A closed capture omission does not upgrade that independent dimension or erase qualified frontend Listings. Each continuation keeps its own original RVA, exact owner and canonical pair.

## Selected dependency frontier

The historical `direct-calls.tsv` supplies selected statically resolved transfer edges, not complete native reachability. Its historical filename does not guarantee an E8 CALL: the 4,097 selected rows for registered roots contain 4,079 relative E8 CALLs, 17 relative E9 JMPs and one FF15 indirect IAT CALL. Original instruction bytes and all 4,096 relative destinations were independently checked. The new `selected_resolved_*` fields describe that mixed transfer set. **553 registered roots** have at least one selected statically resolved transfer destination without an exact historical/current pair. The TSV gives those destination VAs per root and a concrete follow-up instruction: identify the actual owner, inspect original instructions and only then expand the evidence package. A missing pair at the call destination may be an interior or shared entry; no full function is invented at every destination. Unresolved indirect calls and callbacks are not closed by this selected resolved-transfer inventory.

[External dependency rows](native-capture-frontier-external-dependencies.tsv) remain separate from image identities. This selected historical transfer set contains one external edge from a registered root: `00CEA960` at `00CEA9C6` to `EXTERNAL:00000215`. The original instruction is `FF 15 88 66 F9 00`, an indirect CALL through IAT slot `00F96688` (the import index identifies `memmove` in `MSVCR80.dll`); it is not a direct E8 CALL. The destination identifier is an EXTERNAL database-space identifier, with no image RVA. This count does not assert that other registered operations never call imports. Resolve its observed external namespace/library against the separate [import index](native-imports.tsv), preserving the documented distinction between a demangled scope and a DLL name. Pure backend/external work may eventually have a justified boundary; preceding game-data production and shared helpers remain relevant until separately assessed.

## Reproduction and acceptance boundary

The durable offline parser and source hashes are retained locally under the capture-frontier research package. It requires exactly 1,777 bindings, 1,733 targets, 5,054 historical pairs, 25 current pairs, the complete 40,854-definition metadata set and five explicit omission dispositions. It reads existing ASM only to detect first-entry jumps and the bounded historical conditional exits. It makes no Ghidra requests or mutations, generates no new code body, takes no Native lease and changes no existing canonical pair.

A next proof package must independently compare original bytes and complete Listing/CFG, explain all relevant stored/discovered ranges and referenced data, trace real inputs/outputs and indirect continuations, and keep runtime unobserved unless it was actually observed. The present frontier helps select that package. It does not certify function extent, relevance, whole dependency closure, semantic understanding or complete executable coverage.
