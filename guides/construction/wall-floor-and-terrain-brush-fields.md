# CWAL and CTPT native product fields — PC1.67

## Dispatch and original pairs

Names are analyst assigned; these are static instruction/data contracts, not game
execution. Factory dispatch establishes resource515CA4CD→allocationD0→C99F50
and04ED4BB2→allocationD8→C9AF90; the complete shared
[factory ASM](../../evidence/native/functions/00C8CD90_CatalogProductFactory_CreateByResourceType.asm) ([Ghidra C](../../evidence/native/functions/00C8CD90_CatalogProductFactory_CreateByResourceType.c)).

| Role | Complete original pair |
| --- | --- |
| CWAL constructor | [ASM C99F50](../../evidence/native/functions/00C99F50_CatalogPattern_Construct.asm) ([annotated Ghidra C](../../evidence/native/functions/00C99F50_CatalogPattern_Construct.c)) |
| CWAL presets and fields | [ASM C9A220](../../evidence/native/functions/00C9A220_CatalogPattern_ReadPresetRecords.asm) ([annotated Ghidra C](../../evidence/native/functions/00C9A220_CatalogPattern_ReadPresetRecords.c)) |
| CTPT constructor | [ASM C9AF90](../../evidence/native/functions/00C9AF90_TerrainPaintProduct_Construct.asm) ([annotated Ghidra C](../../evidence/native/functions/00C9AF90_TerrainPaintProduct_Construct.c)) |
| CTPT reader | [ASM C9AEA0](../../evidence/native/functions/00C9AEA0_TerrainPaintProduct_ReadCatalog.asm) ([annotated Ghidra C](../../evidence/native/functions/00C9AEA0_TerrainPaintProduct_ReadCatalog.c)) |
| Base brush constructor | [ASM C93600](../../evidence/native/functions/00C93600_TerrainBrushProduct_Construct.asm) ([annotated Ghidra C](../../evidence/native/functions/00C93600_TerrainBrushProduct_Construct.c)) |
| Base brush fields | [ASM C93470](../../evidence/native/functions/00C93470_TerrainBrushProduct_ReadFields.asm) ([annotated Ghidra C](../../evidence/native/functions/00C93470_TerrainBrushProduct_ReadFields.c)) |

The necessary original [36-byte vtable rows](../../evidence/native/data/surface-brush-vtables.txt)
join constructors to readers:0107D270+18→C9A220,0107D348+18→C9AEA0,
0107CA94+18→C93470. Slot+C contains a short interface-query function, not the
serialization writer. Constructor default constants are immediate instructions
already present in their canonical pairs. Readers are thiscall ECX receiver plus
one opaque stack reader, RET4; AL is status. Constructors return the same ECX
storage in EAX with plainRET. Decompiler pointer-typed reused locals are not proof
that wire versions/operations are pointers; UInt32 reads and unsigned branches
establish their physical types. C9A220 database signature explicitly includes its
receiver/reader rather than a misleading void/no-parameters declaration.

## CWAL retained fields and preset widths

C99F50 initializes pattern+88=0, complete material key+90=0, sort+A0=0,
terrain+B4=0, color+B8=00E0E0E0, preset vector+C0/+C4/+C8=0 and string
storage/labels. It does not establish every byte initialized (for example+8C).
C9A220 consumes UInt32 version and reference table, followed by UInt32 preset
count. Retained rows are20bytes: pointer0, **full32-bit ID4**, subsort8,
group/sort wordsC/10. Version>=10 adds subsort; version>=11 reads binary/text
Boolean; version>=12 adds group/sort. Earlier rows use text and omit those words.
Text goes through UTF16 to the preset parser with byte count twice character
count; binary uses UInt32 byte length and buffer. Both call the same parser flag1.
The retained-byte accounting division is by20, not8; magic-multiply decompiler
expressions are compiler arithmetic, not a hashing rule.

After common fields: patternUInt32→+88; reference ordinalUInt32 must be unsigned
less than table count. Full selected16-byte key passes the shared typed loader
with requested type01D0E75D into+90. Invalid ordinal/typed resolution rejects,
not a raw nullable reference or first DDS fallback. The existing
[typed-resource loader ASM](../../evidence/native/functions/0093B730_VisualProxy_ResolveTypedResource.asm) ([annotated Ghidra C](../../evidence/native/functions/0093B730_VisualProxy_ResolveTypedResource.c))
loads the referenced proxy and searches its actual typed entries; it is not a cast.
Then sortUInt32→+A0; surface string through native string conversion; next terrain
UInt32 consumed on every version but discarded below13, stored+B4 from13;
colorraw32→+B8. Explicit failure returnsAL0; successful cleanup preserves reader
status C9A879→AL C9A8E0. Required buffers/table/string scopes are released.

There is no evidence here for low24 ID as an ordinal, generic DDS exclusion IDs,
skipping three texture rows, localized drawer order or pattern category pair
names. Native parser retention must be distinguished from downstream thumbnail
key encoding and selected-material consumption.

## CTPT and base brush

C93600 zeros byte+88, operations+90/+94 and full profile key+98. It leaves
orientation+A8,width+AC,strength+B0,base byte+B4 and wiggle+B8 untouched in the
selected constructor. C9AF90 zeros full brush key+C0 and category+D4, but does
not initialize terrain+D0 itself.

C9AEA0 reads UInt32 outer version, invokes C93470 without testing returnedAL,
then reads brushkey+C0. **Unsigned version>=3** reads terrain+D0; earlier sets0.
**Unsigned version>=4** reads category+D4; earlier retains constructor0. These
are distinct gates: version3 has terrain but no category. Outer status is captured
C9AF76, returnedAL C9AF85. No direct base-status Boolean combination is added.

C93470 reads an initial UInt32 brush-version only when byte+88 iszero, then common
fields; normal/oppositeUInt32→+90/+94, full profilekey→+98,
orientationUInt32→+A8, raw32width→+AC, raw32strength→+B0,
**one byte** basevalue→+B4, raw32wiggle→+B8. No wire padding follows that byte.
Brush version is consumed into a local, not retained as product state. Status is
preserved C935E5→AL C935F4. Raw32 helpers are integer-bit transport; a float-unit
interpretation requires schema/consumer evidence, not decompiler local types.
No clamp, enum validation or maximum-version check appears in these bodies.

## Boundaries and remaining static questions

All six complete owned bodies are contiguous, including every RET path; selected
original bytes and three vtable rows match the pristine PC1.67 executable. Actual
annotations reside inside exported C, and database save was confirmed clean.
These readers do not prove complete product writing, selected-material rendering,
WTXT blend influence, audio classification or gameplay acceptance. Reader-status
coupling between base/outer wrappers and downstream float/operation consumers
remain explicit static leads. The CTPT version3 gate and CWAL full32-bit ID are
established directly by instructions, independent of those open questions.


## CWAL query, real edit prices and retained wall design commands

The existing constructor/vtable bytes join actual+C query to
[C99950 qualified window ASM](../../evidence/native/functions/00C99950_CWAL_QueryInterface_QualifiedWindow.asm)
([instruction semantics, no Ghidra C](../../evidence/native/functions/00C99950_CWAL_QueryInterface_QualifiedWindow.c)).
The DB has no function here. Only25bytes/seven decoded original instructions
are qualified;7CCpadding and later functions excluded, no DBrepair/create/save.
It returnsECX for F14A3B3C, otherwise tailJMP existingC92FE0, rejecting04ED4893.
Vtable+20's actual513D50 bytes are AL1/plainRET (first3bytes, not its full16byte
bounded envelope). CWAL therefore takes CEF6B0 rounded Build branch, not the
fractional brush interface. The tail transfer is not a direct CALL-index row.

[CB0E60 floor price ASM](../../evidence/native/functions/00CB0E60_FUN_00cb0e60.asm)
([C](../../evidence/native/functions/00CB0E60_FUN_00cb0e60.c)) takes key/depreciation cdecl;
[D37F70 wall price ASM](../../evidence/native/functions/00D37F70_FUN_00d37f70.asm)
([C](../../evidence/native/functions/00D37F70_FUN_00d37f70.c)) takes the same physical two
words with RET8. Both selectC8EA70 bank1/2 and CEF6B0 (wall throughD1A900).
Missing product gives0. Floor additionally compares a runtime key at11EC8D0;
its runtime identity/producer is not inferred from zero initial file data.
Nondepreciated price remainsx87 untilcaller; depreciation first spillsbinary32
thenMULSS exactbits3F4CCCCD(0.8). The selected [constants](../../evidence/native/data/floor-wall-edit-constants.tsv)
also retain native quarter0.25. Complete initialization/sentinel/price exceptions
and original nonfinite/FPU policy remain separate.

Native display scale is MULSS first, then0.5 is added inx87 and passed asdouble
to importedfloor. A reconstruction using a
Float32 half-add can disagree: price1/scale3EFFFFFF should give0 but can give1;
16777215/scale1 should remain16777215 but can advance16777216. These are finite
operation-boundary witnesses, not a statement that any current product branch
has applied a correction. Selection/depreciation/cost/refcount/history order,
final charge/funds/gameplay and native special cases remain separate contracts.

[D38810 wall undo ASM](../../evidence/native/functions/00D38810_FUN_00d38810.asm)
([C](../../evidence/native/functions/00D38810_FUN_00d38810.c)) consumes ECX plus locator,
four key pointers and lowbyteflag/RET18. The flag chooses map+58/+74; first
entry reads old lanes and stores64bytesbefore+64after. Repeated same complete
quad returns early; otherwise after lanes atnode+58..97 update. D38060 applies
before price computation. Native partition/product/semantic-preset gates decide
new and depreciated old terms; virtual30 reads total, x87+new-old, FSTPbinary32
into virtual2C. The complete D38060/D45590/default/halfwall command lifetime,
D455E0/D45770/D45810 paint/erase/room traversal and funds/conversion/undo remain
further original paths. CLR Covering(Source/Resources/Handle/Style) equality,
endpoint flood and immutable revision publication are not proved by this map.
