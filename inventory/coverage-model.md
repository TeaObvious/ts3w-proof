# Coverage and disposition model: bounded schema pilot

This is a proposed reference model, tested against several existing evidence
groups. It does not move evidence, certify an inventory of the executable, or
declare a subsystem complete. The source collection is the previous repository
at commit `cf6f60a42fe8c5bd181495a32161217972cefebc`; its findings retain their
original provenance. The [pilot path proposals](../indexes/schema-pilot-proposals.tsv)
are proposals, not applied migrations or Ghidra names.

The reviewed inputs were the legacy code, annotation and call indexes, selected
Foundation and UI guides and pairs, and the loaded-world filename getter and
its registered wrapper. No live Ghidra state was inspected by this review. One
seven-byte getter was checked directly against the identified original PE;
the remaining whole-body, annotation and save assertions are inherited claims
whose source is recorded below. No retail execution was observed.

## Identity and units

Use `(reference_id, rva)` as the primary identity for a native entry. The proposed
reference ID is `ts3w-pc-1.67`; its central artifact record must resolve the
executable identity and image base. The inspected PE image base is `0x00400000`.
Keep VA, names, aliases and paths as searchable attributes, never as substitutes
for identity. Native RVA is not an assembly MethodDef RVA or a file offset.

One row represents one entry or explicitly identified code region, not one
registration, guide, filename or recovered symbol. Registration records have
their own address identity and join to a native target; aliases do not multiply
native function coverage. Managed methods use `(assembly_id, MethodDef token)`,
with assembly identity resolving the original package resource and MVID.
Identically named DLLs and reconstructed source files cannot select that identity.

The eventual census must distinguish defined functions, thunks, imports,
unresolved candidate entries and remaining executable regions. A remaining region
uses `(reference_id, start_rva, end_rva_exclusive, inventory_version)` until its
ownership is understood; splitting it preserves a predecessor/successor relation.
An alias points to an existing owner. A shared tail records every proven owner
and must not be silently assigned to the first caller.

All ranges are half-open. Keep these quantities separate:

| Quantity | Meaning |
| --- | --- |
| Capture envelope | Lowest captured address through highest captured address plus one. |
| Declared owned ranges | Exact union currently attributed to the function, with source and boundary uncertainty. |
| Captured original byte ranges | Bytes actually retained and mapped to the original file; virtual zero-fill is a separate kind. |
| Listing instruction ranges | Exact decoded instruction bytes, excluding tables, gaps and padding. |
| Necessary data ranges | Constants, tables, callbacks or resource fields needed for particular claims; may lie outside the body. |

A body envelope is not an owned-byte union. Ownership claimed by a database is
not automatically the real complete function. Preserve original range convention
when importing old evidence, then normalize explicitly. For example AFEB00's
legacy inclusive ranges `AFEB00..AFEB29` and `AFEB30..AFEC0C` become
`[006FEB00,006FEB2A)` and `[006FEB30,006FEC0D)` in RVA form: 263 owned bytes
inside a 269-byte envelope. The six-byte gap is not missing owned code.

## Minimal records

Use a function/region table plus small relational tables. Do not put an evolving
investigation log into final evidence files. These fields are the minimum
contract; column spelling can change before adoption.

| Table | Required fields and purpose |
| --- | --- |
| References | `reference_id`, artifact kind/version, central identity/provenance link, address-space definition and image base. No duplicated per-function hash lists. |
| Entries | Stable entry ID, kind, VA/RVA, original symbol if proven, analyst name and confidence, canonical ASM/C paths, responsibility, current disposition and rationale. |
| Ranges | Entry/region ID, half-open range, range kind, ownership source, evidence link, known gaps/overlap and boundary uncertainty. |
| Status assertions | Entry/claim ID, dimension, value, exact scope, source, review provenance and remaining blocker IDs. |
| Claims and gaps | Claim/gap ID, exact question or assertion, supporting evidence, static observation/inference/runtime class, independent review and remaining scope. |
| Relations | Source ID, site/field/slot, relation kind, target ID or unresolved expression, resolution evidence, confidence and gap ID. |
| Path mapping | Stable entry ID, source repository/full commit/path, proposed/current canonical path, mapping state and reason. |

The source full commit and evidence locator are necessary even when an existing
claim is accepted. `inherited_review` is distinct from a new independent review.
Re-reading the same C rendering does not change the review class. Name changes
are attributes; they do not create new function records.

## Independent status dimensions

| Dimension | Values and interpretation |
| --- | --- |
| Relevance/disposition | `needed`, `conditionally_needed`, `existing_replacement`, `excluded`, `unresolved`; each has a reason, scope and dependency evidence. A replacement does not remove the need for original evidence. |
| Native body capture | `missing`, `partial`, `fully_captured`, `independently_checked`; names the exact owned-range claim and captured bytes/listing/C state. Failed C generation remains explicit even if ASM is useful. |
| Data closure | `open`, `partial`, `closed_for_claim`; identifies necessary producer, reader/writer, representation, constants and lifetime evidence. It does not require irrelevant neighboring bytes. |
| Binding closure | `not_applicable_for_claim`, `open`, `partial`, `closed_for_claim`; joins package/assembly/method, registration, native ABI and return/marshaling path where applicable. |
| Semantics | `open`, `partially_understood`, `contract_reviewed`; always names the contract scope and remaining dependencies. |
| Ghidra annotations | `open`, `changes_planned`, `applied_and_read_back`, `persistence_verified`; evidence gives existing/preimage state, readback and separately supported persistence. A saved older guide does not establish current live state. |
| Runtime | `not_tested` or a link to a bounded observation stating actual target, inputs, environment and limits. Static branch witnesses remain static. |

Keep assessment state (`not_assessed`, `inherited_claim`, `independent_review`)
alongside these values. It prevents a source claim from being silently promoted
to a fresh check, without discarding previously useful reviewed evidence.
Do not use `not_applicable_for_claim` to dispose of unresolved whole-function
dependencies. For example a raw field getter needs no managed binding to prove
its two instructions, while the registered filename operation still does.

An excluded region requires a precise external boundary and checks for shared
helpers and preceding game-data production. Names such as DRM, D3D or Online
are search hints, not exclusion evidence. Unknown executable regions remain
visible. None of the pilot entries is proposed for exclusion.

## Relations and open frontiers

Keep callsite identity separate from target identity. A relation states whether
the instruction encodes a direct target, is a tail transfer, or reaches a target
through an import, vtable, callback slot or other computed expression. A resolver
may find one concrete target for an indirect instruction without making it a
direct call. Unresolved indirects need a site/slot/expression and question, not an
invented target address or an empty row discarded during export.

Data and lifecycle relations include construction, production, read/write,
retention, invalidation, release, callback registration/invocation/removal and
thread/queue publication. Each contract names which are closed for that claim.
Do not require every child to be fully understood before publishing a bounded
parent fact, but keep any relevant unclosed child as a blocker for the larger
package. The source/receiver distinction and full object/interface adjustments
belong to the relation, not only the prose name.

The legacy `direct-calls.tsv` mixes addresses and symbol names in
`target_function`. Its address-valued `destination` is the usable join to
`code-index.tsv.entry`. A display name must never be converted into a canonical
path. `target_has_pseudocode` is derived availability, not a semantic verdict;
recompute it against the selected inventory and verify the indexed pair exists.

## Three responsibility pilots

| Group and anchor | Why it exercises the schema | Preserved limits |
| --- | --- | --- |
| Construction region selection, AFEB00 | A disjoint complete-body claim with a nonowned envelope gap, strict marker selection, catalog-kind dependencies and shared iterators. Proposed `construction/region-selection/`. | Legacy name remains `FUN_00afeb00`; descriptive role is not a newly applied Ghidra name. Missing-product branch witnesses are static. Catalog/live publication and whole-world coverage remain open. |
| Window tree and Grid lifetime, 50CBC0 / 77C2E0 | Native child mutation and interface ownership, selected dispatch data, original UI CIL, aliases and indirect targets must remain distinct. Proposed `ui/windows/lifetime/` and `ui/grid/`. | The guide claims 21 full pairs and a clean saved DB, but deep routing, Grid teardown/measurement, allocator, callbacks/finalizers and runtime are separate. No fresh persistence check is asserted. |
| Loaded-world filename field, A19140 / 795840 | A fully captured leaf can coexist with a legacy bounded registered wrapper and open string conversion/lifetime. Proposed `loading/world-identity/`. | Seven original bytes prove raw ECX+F0 to EAX then RET. They do not prove field writer, World structure, string type, null normalization or wrapper completeness. |

The pilot intentionally keeps the VA in filenames and defers additional analyst
symbol suffixes until the shared naming review and actual Ghidra update. Guide
locations describe responsibilities; different guides may share the same pair.
Managed evidence stays keyed to assembly/method identity with a responsibility
group for readability, rather than duplicating a complete type for each native
consumer. Source mappings are historical inputs; proposed paths are not live links.

Sources: [Foundation selection guide](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/guides/world/deck-foundation-point-selection.md),
[window lifetime guide](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/guides/ui/window-subtree-lifetime.md),
and [filename field guide](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/guides/world/loaded-world-filename-input-field.md).

## Bounded consistency observations

At the stated source commit, the existing code index has 5,054 unique entries;
all indexed ASM/C paths exist and both directories contain 5,054 address-keyed
files. This checks storage, not full bodies or semantics. The legacy root README
count table still says 4,884 pairs and 27,220 calls; the native README and actual
indexes say 5,054 and 28,542. A migration should generate the published count
summary from the same selected snapshot, with its units stated.

Of 1,746 entries using `min(next_ghidra_entry,entry_plus_8192)`, 1,745 have
`cap_applied=false` and one has `true`. Neither value certifies full ownership.
The filename wrapper is an explicit false-cap counterexample: it remains a
bounded export in its guide. The window pilot must precede a broader census.

Nineteen call rows have `target_has_pseudocode=false` despite an indexed
destination with both files. They reach six existing destinations: `00471150`
(1 row), `004710C0` (1), `0058AF00` (13), `00594ED0` (2), `00713100` (1),
and `00B05870` (1). A join on `target_function` finds only ten of these because
some cells hold symbols. This is index drift, not evidence of ten or nineteen
missing bodies. No source file was changed by this review.

There are 5,238 distinct `destination` values absent from the code index:
5,210 numeric addresses and 28 `EXTERNAL:` identities. These are selected-call
frontiers, not a total missing-function inventory or a count of relevant gaps.
Imports, interior targets, aliases and unresolved ownership require classification.
Existing call rows omit unresolved indirects, so their absence cannot close them.
See the original [code index](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/code-index.tsv)
and [call index](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/direct-calls.tsv).

## Acceptance and reporting

Before a pilot path mapping is applied, check unique stable IDs and canonical
pairs; explicit ownership/range conventions; preserved source provenance and
reviewed comments; all guide/API/call/path-map references; accurate derived
availability; and actual Ghidra names/comments/readback with separate persistence.
Do not rewrite an old reviewed symbol merely to fit a filename proposal.

Before a larger package is called complete, relevant bodies, data, binding and
contract dependencies must be closed or explicitly outside its stated claim.
Missing, failed or unassessed records cannot become completed records. Every
excluded entry and every residual executable region needs a supported disposition.
The whole reference cannot be complete while relevant questions remain open.

Report counts by dimension, entity kind and fixed inventory version. A count of
exported pairs divided by Ghidra-defined entries is neither semantic coverage nor
proof that all functions were found. Do not combine overlapping guide selections,
registration aliases, imports or range bytes into one percentage. Runtime status
remains separate even after static reference acceptance. These pilots establish
schema needs and bounded consistency findings; they do not adopt the schema or
approve a mass move.
