# Function evidence and open disposition join

The [joined inventory](function-disposition.tsv) resolves every entry in the retained **40,854-definition census** against the **5,131 currently adopted evidence entries**, original registration targets, declared ownership ranges and selected resolved transfers. It also preserves the two qualified nondefinition windows and two original registered targets without an exact definition. This is an evidence lookup and a concrete open frontier, not a semantic coverage percentage or comprehensive acceptance.

The inherited census, ownership, registration and executable-region inputs retain their [34315bfd snapshot](https://github.com/TeaObvious/TS3W-Research/tree/34315bfd1e3f0978b3595c576f954cf1f9d0495e). The current canonical/transfer join additionally includes three Resource3 pairs and the eleven f915 retained pairs, with recomputed canonical and selected-transfer line anchors; it is not an unchanged 34315bfd canonical snapshot. The [source and schema record](function-disposition-source.json) names each table, its snapshot scope and exact counts. Reference identity and image base are defined in the [central reference](../references/pc-167.md). No target execution, Native request, annotation, save or new decompilation was performed to construct this join.

| Identity or relationship | Exact inventory result |
| --- | ---: |
| Internal definitions in the retained census | 40,854 |
| Definitions with an exact adopted ASM/C evidence entry | 5,129 |
| Definitions without an exact pair in the selected canonical index | 35,725 |
| Additional qualified windows, not definitions | 2 |
| Original registered targets without an exact definition or pair | 2 |
| Joined image-entry rows | 40,858 |
| Original registration records / distinct native targets | 1,777 / 1,733 |
| Registered targets with an exact pair | 1,731 |

`0095F620` and `00C99950` retain qualified windows and comment-only C, not successful function decompilations. `00D7CE10` and `00D7CEA0` now resolve to [qualified original instruction contexts](remaining-enum-root-context-evidence.md), 140/174 bytes with original binder/retail-IL provenance and no historical containing owner. Their current database definitions, canonical pairs, dependency closure and comprehensive entry dispositions remain open. Neither absence from the definition snapshot nor a missing canonical pair proves that no useful evidence exists elsewhere. Unknowns are not excluded.

## Reading a row

The key is reference identity plus RVA. `census_observed_name` preserves the November 4 observation; `canonical_name` and `canonical_name_source` retain separately observed names without rewriting history. For example, `005E3980` remains `FUN_005e3980` in the census and resolves to `SimBuilder_SetFacialBlend` from the original bd11 publication readback. `005E4E80` similarly resolves to `SimBuilder_ApplyOutfitAppearance`. Their [bounded original contract](../guides/cas/facial-blend-resource-admission.md) and canonical pairs are linked through the current evidence index.

`*_line` and `*_rows` fields are physical, **1-based TSV file lines including the header**. Inclusive ranges such as `2-4;8` mean lines 2, 3, 4 and 8. The schema maps each field to its source table. This keeps all 44,903 declared range records, all registration aliases and all selected transfer relations recoverable without duplicating the existing tables. The declared address sum is metadata per entry, not an original-instruction count or a whole-program union.

ASM and C paths are adjacent in every paired row. `canonical_index_line` resolves the exact inherited capture, export-freshness, variable-export and coverage qualifications in the [authoritative index](../indexes/native-evidence.tsv). A pair may be a qualified window, incomplete projection or historical export. The [retained snapshot contract](../guides/reference/retained-proof-snapshot.md) explains those boundaries. At the 34315bfd input snapshot, 1,418 targeted genuine function-identifier C refreshes were pending; consult the [current canonical index](../indexes/native-evidence.tsv) and [function-name reconciliation index](../indexes/retained-function-name-refresh.tsv) for later export states. Retrospective C variable mapping remains deferred to the final overall Ghidra export.

Body metadata, captured bytes, C success/freshness, necessary data, bindings, bounded semantics, Ghidra annotations/persistence and runtime remain separate dimensions. `source_claims_only` and a source-guide link preserve useful earlier claims; this join does not upgrade or revoke them. `open` is the comprehensive entry-disposition scope. A guide's existence or a registration name does not certify whole-function semantics. Inspect the linked bounded claim before deciding what remains.

The 28,621 [selected transfer rows](../evidence/native/direct-calls.tsv) have 3,246 source identities, including qualified window `0095F620`, and 7,454 distinct image destinations, all exact census entries. These are selected statically resolved transfers, not complete reachability or indirect-call closure. CALL/JMP/IAT kind, original instruction validation and historical `target_has_pseudocode` flags are not re-inferred by this join. Pair availability comes from the current canonical index.

## External identities remain separate

All **665 external locations** remain fully represented in the existing [external census](native-imports.tsv): **651 Function locations and 14 Label locations**. They are keyed by reference plus `EXTERNAL:` location, with no image RVA or EA-owned body inferred. The recorded namespace may be a demangled scope rather than a DLL. A Label classification does not prove an imported target is data. The selected transfer table reaches 28 of these locations; exact import-source and transfer lines are retained in the source JSON. All other external records still remain in the complete census. Dependency relevance, actual IAT correspondence, ABI and any supported exclusion boundary remain open; no library-name exclusion is made.

## Remaining executable intervals

The [unchanged 20261104 complement](remaining-executable-regions.tsv) contains **42,715 intervals / 1,404,655 bytes** outside the complete declared ownership union, split by the PE executable-input zones. It is a metadata complement, not proof that all these bytes are instructions or unrecognized independent functions. The [method and nontext-root limits](remaining-code-method.md) remain binding.

Existing bounded assertions identify **118 necessary data bytes**, **1,690 singleton-root instruction-evidence bytes** and **345 context bytes** (31 indirect-target plus 314 registered enum-entry bytes) inside **7 baseline parents**. The source JSON joins every assertion to its exact parent and subtracts only its sourced half-open interval. All **42,708 untouched parents** remain unresolved. The touched parents also retain explicit unresolved successors. This produces **42,721 unasserted successor intervals / 1,402,502 bytes**. No parent is closed, and no asserted instruction interval is silently converted into database ownership or whole-contract acceptance.

The original [data assertions](remaining-region-dispositions.md), [instruction assertions](remaining-instruction-evidence.md) and [unowned context assertion](remaining-instruction-context-evidence.md) retain their own consumer, CFG, source and review limits. Existing overlapping declared owners and the cross-section `00519010` relationship remain separate concerns. The recorded export root `011CF378` lies outside the initial `.text` domain and stays an unresolved code/data/initialization question; its name alone is not an exclusion.

The concrete next work is to reuse the linked original evidence, establish real body/data and dependency boundaries, and review a bounded contract for each required entry or region. A generated join, metadata partition, exported pair or repository commit does not meet the overall completion requirement while these questions remain open.

The [f915 retained update](../references/retained-proof-f915-update.md) contributes eleven further owned pairs and the keyed selected-transfer delta. The [source record](function-disposition-source.json) gives current counts and scopes. Census names, definition/ownership boundaries and remaining-region assertion inventories are unchanged. Full entry disposition stays open.
