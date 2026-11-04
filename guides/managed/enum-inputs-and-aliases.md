# Original enum input records and aliases

The ten identified original PC 1.67 CLI assemblies contain 2,341 enum TypeDefs
with 32,049 literal Constant rows. Exact Constant-type-and-byte equality within
an individual owner yields 155 alias groups in 84 enum owners, accounting for
201 repeated literal rows beyond distinct values. This is an original metadata
input census; it does not demonstrate native field enumeration, descriptor
materialization, preferred alias names or cache behavior.

The [summary](../../evidence/managed/enum-inputs/summary.json) identifies all
per-assembly files and counts. Their identities resolve through the existing
[original input manifest](../../evidence/managed/reference-inputs.json), including
assembly hashes, MVIDs and original S3SA/package provenance. No input from a mod,
prepared runtime assembly or reconstructed C# tree is substituted.

## Complete bounded corpus

| Original assembly / full enum records | Enum types | Literal Constant rows | Alias groups | Alias-bearing owners |
| --- | ---: | ---: | ---: | ---: |
| [ScriptCore](../../evidence/managed/enum-inputs/ScriptCore.jsonl) | 8 | 55 | 0 | 0 |
| [SimIFace](../../evidence/managed/enum-inputs/SimIFace.jsonl) | 327 | 3,758 | 32 | 17 |
| [Sims3GameplayObjects](../../evidence/managed/enum-inputs/Sims3GameplayObjects.jsonl) | 282 | 1,437 | 9 | 4 |
| [Sims3GameplaySystems](../../evidence/managed/enum-inputs/Sims3GameplaySystems.jsonl) | 706 | 16,899 | 22 | 14 |
| [Sims3Metadata](../../evidence/managed/enum-inputs/Sims3Metadata.jsonl) | 22 | 206 | 6 | 1 |
| [Sims3StoreObjects](../../evidence/managed/enum-inputs/Sims3StoreObjects.jsonl) | 76 | 403 | 3 | 3 |
| [System](../../evidence/managed/enum-inputs/System.jsonl) | 13 | 242 | 0 | 0 |
| [System.Xml](../../evidence/managed/enum-inputs/System.Xml.jsonl) | 45 | 272 | 0 | 0 |
| [UI](../../evidence/managed/enum-inputs/UI.jsonl) | 730 | 7,790 | 69 | 37 |
| [mscorlib](../../evidence/managed/enum-inputs/mscorlib.jsonl) | 132 | 987 | 14 | 8 |
| Total | 2,341 | 32,049 | 155 | 84 |

Each owner has exactly one `value__` field. Thus 34,390 total declared fields
partition into 2,341 backing fields and 32,049 literal fields. Every literal has
a Constant row whose element type agrees with the backing-field signature.
No missing backing fields, ambiguous backing fields, missing Constant rows,
noninteger encodings or backing/constant-type mismatches were found in this
bounded corpus. Unsupported shapes would have been retained as issues rather
than silently normalized.

| Backing type | Owners |
| --- | ---: |
| Byte | 122 |
| SByte | 4 |
| Int16 | 83 |
| UInt16 | 20 |
| Int32 | 1,476 |
| UInt32 | 582 |
| Int64 | 4 |
| UInt64 | 50 |

There are also 161 owners with a declared `System.FlagsAttribute` constructor.
Both external MemberRef constructors and mscorlib-local MethodDef constructors
are inspected. That attribute is metadata, not evidence that the custom native
simple-name roots compose flag names.

## Record identity and equality rules

A JSONL row is one original enum TypeDef, keyed by assembly name plus TypeDef
token within the centrally identified assembly. It includes the original owner
name, base token/scope, backing-field token/signature/attributes, all literal
Field and Constant tokens, declared field counts and raw constant bytes.
Decimal values are strings so large UInt64 values retain their exact value in
JSON consumers. Raw bytes remain little-endian original input.

Enum selection follows a `System.Enum` base TypeRef or local TypeDef. All
selected bases resolve to the identified mscorlib; local TypeDef bases are
necessary for its own 132 enum owners. Same-looking names in another assembly
are not merged. Field/Constant tokens are interpreted only in their owner
assembly. An alias group requires the same Constant element type and identical
raw bytes in the same TypeDef. No signed/unsigned coercion, cross-type join or
numeric rounding is used.

Literal signatures also identify their own enum TypeDef: 32,029 use direct
`FIELD VALUETYPE <self>`, while 20 in five nested generic enum owners use
`FIELD GENERICINST VALUETYPE <self>` with the owner's original VAR parameters.
The latter forms are retained as original generic signatures. They are not
missing owners and are not coerced into a nongeneric field type.

| Assembly / original enum owner | Literal fields | Original GenericParam rows and positions |
| --- | ---: | --- |
| Sims3GameplayObjects:02000722, MusicalInstrument+WatchBase`1+Tipping | 3 | 2A000012, TTarget at VAR0. |
| Sims3GameplayObjects:02000723, MusicalInstrument+WatchBase`1+SweetMoveReaction | 3 | 2A000013, TTarget at VAR0. |
| Sims3GameplaySystems:02001848, BuyModeSuite`1+SwapTask+Stage | 6 | 2A0000AB, UnitType at VAR0. |
| Sims3GameplaySystems:0200249D, UpgradableComponent+TinkerBaseInteraction`1+TinkerResult | 5 | 2A0000C6, TObject at VAR0. |
| System:02000023, SortedList`2+EnumeratorMode | 3 | 2A000003/2A000004, TKey/TValue at VAR0/VAR1. |

For example, field signature `06 15 11 9C 88 01 13 00` names self TypeDef
02000722 with one argument, VAR0. `06 15 11 80 8C 02 13 00 13 01` names self
TypeDef 02000023 with VAR0 and VAR1. The GenericParam rows name those exact
TypeDef owners. These five owners have no alias groups; all corpus counts above
are unchanged. Declared generic metadata does not establish a runtime closed
instantiation or its native descriptor representation.

Metadata field order is preserved for auditing. It is not a proof of the order
in which a runtime field iterator returns those fields. `FlagsAttribute` is
reported through the actual constructor-owner declaration and constructor token;
its absence/presence does not alter the equality rule.

## Concrete alias inputs

The [six selected examples](../../evidence/managed/enum-inputs/alias-examples.json)
include full field/constant identities, raw bytes and the original backing-field
signatures. Complete alias groups, including groups not excerpted there, remain
in each assembly's JSONL file.

| Original owner / identity | Input equality |
| --- | --- |
| Sims3GameplaySystems:02000D1E, ActiveNodeBase+FlagField (Byte) | HasTriggered Field 0400317E / Constant 0B0010C4 and WasPromisedAndBroken Field 0400317F / Constant 0B0010C5 both contain byte `10` (16). Ten literal fields encode nine distinct typed values. |
| SimIFace:0200001B, BuildBuyProduct+eBuySubCategory2 (UInt64) | kBuySubCategory2Misc Field 040000CA and kBuySubCategory2Miscellaneous Field 040000D0 both contain `08 00 00 00 00 00 00 00`. Nine literal fields encode eight distinct typed values. |
| UI:0200058C, MaptagTypes (UInt64) | SelectedBaseCampFuture Field 0400327E / Constant 0B0019D1 and Last Field 0400327F / Constant 0B0019D2 both contain `00 00 00 00 80 00 00 00` (549755813888). The nonzero high DWORD matters. |
| SimIFace:02000079, FacialBlend+FacialRegions (UInt32) | Nose and SquareNose both encode 2; Head, Forehead, Temple, Crest and Flews all encode 128. Forty literal fields encode 21 distinct typed values. |
| mscorlib:0200004C, MethodImplAttributes (Int32) | CodeTypeMask and Runtime both encode 3; IL and Managed both encode 0; ManagedMask and Unmanaged both encode 4. This owner uses the local System.Enum TypeDef base. |
| SimIFace:020001EE, ThumbnailCamera (Int32) | Default Field 04000CF8 / Constant 0B0009EC and Head Field 04000CF9 / Constant 0B0009ED both contain `00 00 00 00`. Five literal fields encode four distinct typed values. |

These examples provide concrete inputs for the separately documented
[native lookup/count boundary](../bridge/enum-lookup-contract.md). For example,
the Byte owner has ten literal names but nine distinct values. If the native
count producer counts those names and the temporary map coalesces those values,
its field-derived count and emitted-pair count could differ. That conditional
scenario still requires native iterator/count/insert contracts and actual
runtime observations. The metadata census does not establish that the owner was
passed to the roots, that the cache was populated, or that any runtime defect
occurred. It does not select a preferred name for an alias.

## Reproduction and verification boundary

The extraction uses `System.Reflection.Metadata` and `PEReader` against the ten
already identified pristine assembly files, with input SHA-256, module name/MVID
and assembly-name checks before reading and after-read file-hash equality.
It enumerates TypeDef base relationships, Field rows, field signatures, Constant
rows and relevant CustomAttribute constructor owners. It never loads a target
assembly for execution or invokes a target method.

An independent Python reader decodes the original PE CLI metadata root,
`#~`, `#Strings` and `#Blob` streams and relevant table widths/coded indexes.
It independently enumerates all 2,341 enum owners and compares their backing
fields, all 32,049 literal Field/Constant names, attributes, parents, signatures,
element types, raw bytes and decoded integer values. All 155 within-owner alias
groups and all 161 FlagsAttribute owners/constructor tokens also agree. This
checks the complete bounded metadata input set, not original runtime behavior
or semantic closure of native enum processing.
