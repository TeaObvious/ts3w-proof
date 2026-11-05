# Roof catalog fields, saved-record products and defaults

## Scope and original identity

Static original PC1.67 TS3W.exe analysis; the central native reference identity
applies. Analyst names describe demonstrated roles. Full actual annotated C and
complete owned Listing ASM are canonical; no original execution is claimed.
This evidence covers catalog fields/default joins, not PC Gable/one-diagonal
surface generation or atlas table population.

| Original function | Complete canonical pair |
| --- | --- |
| RoofStyleProduct_ReadCatalog `00c9a9f0` | [ASM](../evidence/native/functions/00C9A9F0_RoofStyleProduct_ReadCatalog.asm) ([actual annotated C](../evidence/native/functions/00C9A9F0_RoofStyleProduct_ReadCatalog.c)) |
| RoofStyleProduct_Construct `00c9a990` | [ASM](../evidence/native/functions/00C9A990_RoofStyleProduct_Construct.asm) ([actual annotated C](../evidence/native/functions/00C9A990_RoofStyleProduct_Construct.c)) |
| ProductCatalog_LookupRoofStyle `00c8ed10` | [ASM](../evidence/native/functions/00C8ED10_ProductCatalog_LookupRoofStyle.asm) ([actual annotated C](../evidence/native/functions/00C8ED10_ProductCatalog_LookupRoofStyle.c)) |
| ProductCatalog_FindDefaultRoofStyle `00c8ecc0` | [ASM](../evidence/native/functions/00C8ECC0_ProductCatalog_FindDefaultRoofStyle.asm) ([actual annotated C](../evidence/native/functions/00C8ECC0_ProductCatalog_FindDefaultRoofStyle.c)) |
| ProductCatalog_LookupRoofPattern `00c8ed80` | [ASM](../evidence/native/functions/00C8ED80_ProductCatalog_LookupRoofPattern.asm) ([actual annotated C](../evidence/native/functions/00C8ED80_ProductCatalog_LookupRoofPattern.c)) |
| ReferenceTable_ReadKeyByOrdinal `00c92fd0` | [ASM](../evidence/native/functions/00C92FD0_ReferenceTable_ReadKeyByOrdinal.asm) ([actual annotated C](../evidence/native/functions/00C92FD0_ReferenceTable_ReadKeyByOrdinal.c)) |

## Concrete constructor/reader join and layout

Factory C8CD90 recognizes91EDBD3E, allocatesB8 bytes, calls C9A990 and retains the
product through its existing virtual interface. Constructor installs107D2C0;
[necessary original DWORD107D2D8](../evidence/native/data/0x0107d2d8-roof-style-reader-vtable-slot-18.bin)
contains00C9A9F0, resolving slot+18 to the actual reader. It zeroes type+88,
keys+90/+A0 and flags+B4, and MOVSS loads
[original scalar bits107D2BC](../evidence/native/data/0x0107d2bc-roof-style-default-scalar-bits.bin)
3FDDB3D0 into+B0. No degree/pitch/angle conversion follows from those bits alone.

C9A9F0 is a complete450-byte body with ECX product, one stream pointer and RET4.
It reads UInt32 version. Unsigned version>=2 reads reference-table offset/extent
metadata, then all versions read common fields. The next rawUInt32 goes to type+88.
Two following keys go to+90/+A0: below2 inline16-byte TGI keys, from2 UInt32 dense
ordinals. Final raw32 scalar and flags go to+B0/+B4. No1..1E type clamp or1024-row
cap appears here. Ordinal failure immediately frees vector/context and returnsAL0;
earlier common fields/first key may already be changed. Other read failures set
sticky status. Final status is physical AL, not an inferred pointer/full EAX value.
The reused version stack slot makes actual C pointer-looking comparisons an
artifact; original CMP/JC instructions establish UInt32 version thresholds.

C92FD0 physically owns only a five-byte JMP99A660. Ghidra actual C expands its
thunk target; the implementation proof is the complete
[99A660 ASM](../evidence/native/functions/0099A660_ReferenceTable_ReadKeyByOrdinal.asm) ([annotated C](../evidence/native/functions/0099A660_ReferenceTable_ReadKeyByOrdinal.c)).
It reads UInt32 ordinal, compares unsigned against(end-begin)>>4 and copies all
16 bytes only on valid ordinal, returningAL1; invalid returnsAL0 without output
copy. Sticky stream status remains a separate fact. The preserved name/signature
has an inferred UInt32 return, whose upper bits are not Boolean evidence.
Reference-table relative seek/restore is established by
[99D570 ASM](../evidence/native/functions/0099D570_ReferenceTable_ReadResourceKeys.asm) ([annotated C](../evidence/native/functions/0099D570_ReferenceTable_ReadResourceKeys.c));
common-version fields remain in
[C93100 ASM](../evidence/native/functions/00C93100_CatalogProduct_ReadCommonFields.asm) ([annotated C](../evidence/native/functions/00C93100_CatalogProduct_ReadCommonFields.c)).

## Roof-pattern full key projection and typed admission

The original roof-pattern reader
[C9AC60 ASM](../evidence/native/functions/00C9AC60_RoofPatternProduct_ReadCatalog.asm) ([annotated C](../evidence/native/functions/00C9AC60_RoofPatternProduct_ReadCatalog.c))
is a complete544-byte body, ECX product plus one physical reader pointer and
RET4. Its constructorC9ABE0 installs107D300; reader slot+18 selectsC9AC60.
Unsigned outer version below3 has no reference-table header: Common is followed
by three inline TGI16 keys. From3,99D570 reads the reference table before Common;
three immediate UInt32 ordinals then select complete keys. The function does not
locate those ordinals relative to the end of the payload or retain a truncated
prefix of the key table. A failed ordinal immediately goes to cleanup/AL0.

After all keys are selected, three sequential93B730 calls resolve required typed
resource01D0E75D into product+88/+98/+A8. Each success gates the next call; a
failure rejects the complete product. Therefore a raw selected key's ResourceType
alone is not the typed-resource resolution contract, and wire-complete projection
alone is not native product admission. Complete lower93B730 resource/cache and
ownership behavior remains a separate boundary.

The reference reader
[99D570 ASM](../evidence/native/functions/0099D570_ReferenceTable_ReadResourceKeys.asm) ([annotated C](../evidence/native/functions/0099D570_ReferenceTable_ReadResourceKeys.c))
requires nonzero relative offset, skips the seek for zero extent, otherwise uses
signed32(unchecked(savedPosition+relativeOffset-4)), reads the counted vector and
restores the primary position/status. Extent is not a cap on vector bytes. Its
Listing-owned ranges remain0099D570–D64C andD650–D6C5: the alignment gap between
is not code. Counted TGI transport is established by
[7D9930 ASM](../evidence/native/functions/007D9930_StreamContext_ReadResourceKeyVector.asm) ([annotated C](../evidence/native/functions/007D9930_StreamContext_ReadResourceKeyVector.c));
the separately retained7D7A00 original objdump window is not promoted to a new
Ghidra-owned full-body/ABI claim. No256/1024 entry cap follows from these readers.

## Inline saved style is the actual lookup input

Below version3, B995E0 reads each complete inline style key before passing those
same key words to C8ED10. From3, the context resolver supplies that key instead.
These branches are explicit in the existing complete
[B995E0 ASM](../evidence/native/functions/00B995E0_RoofManager_ReadSavedRoofRecords.asm) ([annotated C](../evidence/native/functions/00B995E0_RoofManager_ReadSavedRoofRecords.c)).
An absent serialized handle in the inline branch must not be reinterpreted as a
request to resolve context handle0. Context handle width and legal zero-key
lookup remain separate from this inline field, as do the runtime-global alias
substitution and native default-product lookup that happen afterward.

## Saved-record producers, consumers and different defaults

Saved roof reader
[B995E0 ASM](../evidence/native/functions/00B995E0_RoofManager_ReadSavedRoofRecords.asm) ([annotated C](../evidence/native/functions/00B995E0_RoofManager_ReadSavedRoofRecords.c))
queries C8ED80 for its header pattern key with default allowed. Found returns the
matched product; missing with default returns ordered map+FC begin when nonempty.
If lookup is null and catalog+A8 is nonnull, the reader instead copies that
separately retained product's key. Do not collapse these two branches into one
first-file or arbitrary catalog fallback assertion; population order is separate.

Per-row style lookup C8ED10 uses map+E8. Missing key with allowDefault0 yieldsnull;
with1 it invokes C8ECC0, which searches the same map using existing runtime-global
key storage011EE1C0. This also can returnnull; no default object is created here.
Only nonnull style products flow from B995E0 into
[B98940 ASM](../evidence/native/functions/00B98940_RoofManager_ConstructAndPublishRoof.asm) ([annotated C](../evidence/native/functions/00B98940_RoofManager_ConstructAndPublishRoof.c)).
That constructor/publication path uses product+88 type, not a type encoded in the
saved row. It handles signed levels/counter, type-specific constructors, retained
manager/index publication and collision creation. It does not prove every child
constructor's geometry or renderer/material semantics.

Saved rows are produced by
[B96130 ASM](../evidence/native/functions/00B96130_RoofManager_WriteResource.asm) ([annotated C](../evidence/native/functions/00B96130_RoofManager_WriteResource.c)),
which emits live version6 state, two UInt16 registered header keys and34-byte rows.
Read-side context width remains independently conditional in
[7D7470 ASM](../evidence/native/functions/007D7470_ResourceReferences_ReadContextKey.asm) ([annotated C](../evidence/native/functions/007D7470_ResourceReferences_ReadContextKey.c)).
Lot-layer caller
[AC91D0 ASM](../evidence/native/functions/00AC91D0_LotDataLayers_ReadSavedResources.asm) ([annotated C](../evidence/native/functions/00AC91D0_LotDataLayers_ReadSavedResources.c))
owns manager creation/binding and false-status cleanup. These live native manager/product/reference mechanisms do not specify a detached
warning model, filesystem filename scan, CLR integer memo or its context lifetime.

## Verification boundary

Original code envelopes, flow boundaries, RET cleanup, unsigned branches, all
selected operand/data bytes and canonical pair links were checked against pristine
PC1.67. Annotated Ghidra database saved clean, original bytes unchanged. No console,
pre-release symbols, binary patch or native execution used. Neither slope-angle
interpretation nor missing renderer/atlas producers is inferred from these fields.


## Manual validation uses the resolved scalar style

The existing manager validation [ASM](../evidence/native/functions/00D0D3F0_FUN_00d0d3f0.asm) ([qualified C](../evidence/native/functions/00D0D3F0_FUN_00d0d3f0.c)) receives two point pointers, optional error record and low-byte flag through four physical stack words, RET10. This is a status-returning validator, not the purchase/commit implementation. D0A7C0 resolves a catalog product and scalar type before corner, base-height, signed-level and optional checks. The C pointer-looking type local is not a native pointer: the scalar consumer is the wall-family dispatcher [ASM](../evidence/native/functions/00D0CE70_FUN_00d0ce70.asm) ([qualified C](../evidence/native/functions/00D0CE70_FUN_00d0ce70.c)), ECX plus five words/RET14/lowAL.

D0CE70 codes1/2/3 construct a temporary axis surface and call D0C600 after virtual4/20; codesA/B/C/E construct a diagonal surface and call D0C9A0 after the same virtual slots. Temporary references are released on either result. The apparent float atomic refcount in C is integer1; XADD and virtual destruction govern actual retirement. Other codes returnAL1. Surface factories, concrete vtables, wall validators and complete failed-init/resource/error ownership remain open.

D0A7C0's existing Ghidra definition owns only39bytes [D0A7C0,D0A7E7). Its JNZ successorD0A7E7 is outside that owned body. The necessary [139-byte entry/success window](../evidence/native/data/0x00d0a7c0-roof-style-resolution-entry-window.bin) preserves original bytes through RETD0A84A, without a fabricated function definition or canonical full pair. In that separately qualified successor, product+88 goes to ESI, type-family tests choose scalar5/D fallback and optional output retains the product. Treating all139bytes as Listing-owned or the decompiler's expanded C as a complete owned function would be wrong.

The area predicate [ASM](../evidence/native/functions/00D0A010_FUN_00d0a010.asm) ([qualified C](../evidence/native/functions/00D0A010_FUN_00d0a010.c)) receives two binary32 words and returns fullEAX0/1/plainRET. COMISS/JA admits ordered second>first; otherwise x87 absolute subtraction followed by FCOMIP/JA admits strictly smaller difference than stored binary32 tolerance0108482C=0.1. Unordered takes neither JA and returns0, despite the apparent opposite C result. D0D3F0 calls it with first1 and rectangle area; it also has a separate round-family exception. Native floor-height difference stores one height to binary32 before the subtraction; the same nominal0.05 does not prove CLR instruction/rounding identity.

## Automatic construction caller and deferred walls

The complete caller [ASM](../evidence/native/functions/00CC7AB0_FUN_00cc7ab0.asm) ([qualified C](../evidence/native/functions/00CC7AB0_FUN_00cc7ab0.c)) owns4452bytes/1145instructions, nine physical stack words and plainRET. It joins C8ED10 style lookup and axis/diagonal family matching with first native catalog match. Duplicate ordering requires actual catalog population; rejecting duplicates in another implementation is not proved equivalent. Its flat path emits0462AC25, callsCBD4A0 and emits0462AC2E; complete floor paint operands/codec and cleanup remain unexpanded.

Normal coverage takes threshold from AAFE30/AB0C60. FUCOMIP then LAHF/TEST44/JP replaces ordered exact zero with storedhalfF9B5B4; NaN is preserved. Counted coverage ratio feeds COMISS/JNC: ordered greater/equal uses diagonal, while unordered follows the less edge when axis edges exist. Counts, zero denominator and constant-half behavior do not establish the INI parser's admitted range or the internal decomposition algorithm.

After axis or both parity passes the actual order is CC5A10→CC7320(weight2 from0103FD88,flag0)→CC6FB0. Rectangles are admitted and constructed before deferred CC4C10 roof walls; optional B96BA0 is last. This establishes caller order only. Full CC5C70/CC7320/CC6FB0 greedy/trim/sort behavior, mansard/octagon/diagonal fallbacks, balcony object predicateA43170, room extent/first deck tile/foundation choice, complete flat cleanupCBC8A0 and total price/funds/undo publication are explicit remaining paths. No algorithm identity follows from matching helper names or a full exported caller.
