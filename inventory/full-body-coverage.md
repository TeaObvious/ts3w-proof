# Complete declared-ownership metadata and remaining regions

This inventory joins all **40,854 entries in the retained internal function
census** to their declared Ghidra body ranges. It then partitions the original
`.text` audit domain by that ownership. Completeness here refers to this
specific metadata join. It does not establish every real function, correct
boundaries, complete original evidence, understood semantics or runtime coverage.
Every remaining-region disposition is still `unresolved`.

The reference is the [identified original PC1.67 executable](../references/pc-167.md),
`reference_id=ts3w-pc-1.67`, image base `00400000`. The
[definition census](native-function-census.md) and
[remaining-code method](remaining-code-method.md) define the scope and address
conventions. All derived intervals use exclusive stops; an RVA is a VA minus
the image base, not a physical file offset or EXTERNAL-space identity.

## Source selection and integrity

Inventory version `20261104` uses the coordinator's retained `/TS3W.exe`
`get_function_info` records in collection `20261104-start`. Of the40,854 selected
records,1,761 are explicitly reused earlier records, including appropriate final
captures;39,093 are new serial captures in391 chunks:390 of100 records and one
of93. The selected source set consists of429 metadata files:391 new chunks and38
reuse source files. An exact source-record locator is retained on every range row.

The offline parser checked terminal non-error response, `TS3W.exe` context,
requested/resolved entry equality, every range, correct inclusive-to-exclusive
conversion and exact entry-set agreement with the census. There are no missing,
duplicate, unexpected or unparsed selected entries. Within-function reversed or
overlapping source ranges are rejected rather than repaired. The complete join
guard was required before producing these tables. Source paths, byte hashes,
queue/reuse selections and reproducing tools remain in the durable local
research collection; no new native request or database mutation was made by
this inventory calculation.

This is a serially assembled capture, not a transactionally frozen database.
The reused records and later captures can contain names observed at different
times. The range table deliberately uses stable entry IDs and does not combine
those names into a final semantic name inventory. Original census names and
currently reviewed canonical evidence names remain separate lookup layers;
renaming a function does not create another owner or improve its body evidence.
The capture protocol reports no body-boundary changes during this series.

## Published tables

| Table | Rows, excluding header | Meaning |
| --- | ---: | --- |
| [Native owned ranges](native-owned-ranges.tsv) |44,903 | Every declared range of every selected internal definition, including noncontiguous ranges and the one range outside `.text`. One-based ordinal retains the function's source-range grouping. |
| [Native overlaps](native-overlaps.tsv) |0 | Header-only table records the observed zero overlap segments. This is a property of the selected metadata, not an absence proof for real shared/ambiguous code ownership. |
| [Remaining executable-region candidates](remaining-executable-regions.tsv) |42,715 | Exact address complement inside the selected `.text` domain, split at the PE virtual/raw boundary and left unresolved. These are not42,715 missing functions. |

`singleton_entry_metadata=true` marks a one-range, one-address declared body.
It does not certify a valid one-byte instruction or a complete operation. Source
range ordinals and the exclusive stops preserve all original declarations without
turning bounding envelopes into contiguous ownership.

The table's `complete_metadata_snapshot_disposition_pending` is a capture/join
status only. Real body completeness, relevance and semantics are **not assessed
by this inventory**. Those dimensions must be joined to independently reviewed
evidence where available; this status neither upgrades unknown records nor
overwrites existing bounded contracts. The1,023 singleton declarations remain
particularly explicit boundary-review candidates.

## Exact arithmetic

| Measurement | Result |
| --- | ---: |
| Internal census entries with selected metadata |40,854 /40,854 |
| Definitions with one range |37,682 |
| Definitions with multiple ranges |3,172 |
| Singleton one-address body declarations |1,023 |
| Declared range rows |44,903 |
| Sum of all declared range sizes |10,740,553 address bytes |
| Unique union of declared ranges, all sections |10,740,553 address bytes |
| Overlapping unique bytes / multiplicity excess |0 /0 |
| Declared union inside selected `.text` audit domain |10,739,985 address bytes |
| Declared union outside selected `.text` audit domain |568 address bytes |
| `.text` audit domain size |12,144,640 address bytes |
| Addresses not claimed by selected metadata in this domain |1,404,655 address bytes |

The all-section sum exactly agrees with the separate captured function statistic
`Total code size:10740553`. That agreement identifies the statistic's relationship
to these declarations; it does not turn each declared address into verified code.
No metadata overlaps were observed, so the sum and union happen to agree.
The method still computes the union and overlap multiplicity explicitly.

The separately reported statistic includes223 thunks, but these function-info
records expose no `isThunk` flag and this capture has no exact223-entry thunk-ID
set. That classification remains open at the entry level. The full metadata
join does not claim complete thunk/alias/import classification, discovery of
every real function, or disposition of every remaining region.

Two separate checks agree. A sweep over all owner ranges computes the owner
sets, union, overlaps and domain complement. An independent byte bitmap, without
using the sweep's intermediate segments, marks each declared address and verifies
the full union, overlap excess, `.text` intersection and each residual interval.
The identities hold exactly:

`10,739,985 claimed + 1,404,655 unclaimed = 12,144,640 domain addresses`.

`10,739,985 .text + 568 .rdata = 10,740,553 unique declared addresses`.

## Preserve the PE zones and nonexecuting range

The [PE executable-region table](pe-executable-regions.tsv) distinguishes:

| PE zone | VA interval | Domain bytes | Declared union | Unclaimed addresses | Output residual rows |
| --- | --- | ---: | ---: | ---: | ---: |
| `.text` file-backed declared virtual extent |`[00401000,00F95351)` |12,141,393 |10,739,985 |1,401,408 |42,714 |
| `.text` excess raw/alignment tail |`[00F95351,00F96000)` |3,247 |0 |3,247 |1 |
| Combined audit domain |`[00401000,00F96000)` |12,144,640 |10,739,985 |1,404,655 |42,715 |

The combined complement has42,714 contiguous runs before the PE-zone split.
Its last run crosses`00F95351`; splitting that run makes42,715 published rows.
This explains the different run/row counts without adding or losing bytes.
The entire raw tail remains unresolved. Its header alignment role or a repeated
byte pattern is not sufficient evidence of harmless padding, irrelevance or
runtime page behavior.

The sole out-of-domain declaration belongs to entry`00519010` (RVA`00119010`):
its second owned range is`[01020100,01020338)`,568 addresses in original `.rdata`.
The complete source declaration also has its ordinary first range at
`[00519010,0051A43D)`. Both are retained in the range table. The `.rdata` range
does not enter the `.text` complement, and it is not silently clipped or recast
as executable instructions. Its actual code/data/table role and ownership need
separate evidence. No automatic database repair follows from this discrepancy
between declared ownership and section permissions.

## What the complement means

Each residual row has an exact reference/RVA/version identity and
`basis=not_claimed_by_selected_complete_declared_ownership_metadata`. This can
include real unrecognized code, outlined continuations, required tables, padding,
data, or incorrect/missing boundary definitions. The row's `unresolved` state
does not choose among them. Regions are neither excluded nor marked as bloat
based on names, section, byte pattern, missing calls or absence from old guides.

Known pilot examples show why more work remains: D83020 branches beyond its
declared prefix into separately defined D83038 with inherited stack state;
thumbnail prefixes share similarly outlined continuations and epilogues;
singleton metadata can sit at the start of a longer byte/CFG window. A complete
definition join does not close these logical operation paths. All required
call/data/callback/initialization/error/teardown roots still require the separate
coverage and disposition process. Imports and non-text roots are not disposed
of by subtracting internal body ranges from `.text`.

The next review should classify concrete regions using incoming references,
actual original bytes and independent instruction/data analysis, retain exact
shared ownership, and link every result to an owner, required data or justified
exclusion. Body capture, data closure, managed/native binding, semantics,
Ghidra annotation/persistence and runtime observation remain separate dimensions.
No source implementation, gameplay behavior or full-reference completion is
certified by these tables.
