# Stair authored preset selection

Original shipped PC1.67 TS3W.exe; analyst role names/types. Complete owned bodies,
physical ABI and actual default caller are statically reviewed, not game execution.

| Entry | Role | Complete original reference |
| --- | --- | --- |
| C96A80 | First authored fullID | [ASM](../../evidence/native/functions/00C96A80_StairProduct_FirstAuthoredPresetId.asm) ([annotated C](../../evidence/native/functions/00C96A80_StairProduct_FirstAuthoredPresetId.c)) |
| C96FA0 | Authored+kind5 count | [ASM](../../evidence/native/functions/00C96FA0_StairProduct_CountAuthoredAndInstalledPresets.asm) ([annotated C](../../evidence/native/functions/00C96FA0_StairProduct_CountAuthoredAndInstalledPresets.c)) |
| C96CC0 | Full ID to ordinal | [ASM](../../evidence/native/functions/00C96CC0_StairProduct_ResolveFullPresetIdToOrdinal.asm) ([annotated C](../../evidence/native/functions/00C96CC0_StairProduct_ResolveFullPresetIdToOrdinal.c)) |
| C96BB0 | Ordinal material retrieval | [ASM](../../evidence/native/functions/00C96BB0_StairProduct_GetPresetByOrdinal.asm) ([annotated C](../../evidence/native/functions/00C96BB0_StairProduct_GetPresetByOrdinal.c)) |
| CF31B0 | Actual installed/default finish consumer | [ASM](../../evidence/native/functions/00CF31B0_StairTool_ResolveInstalledOrDefaultFinishes.asm) ([annotated C](../../evidence/native/functions/00CF31B0_StairTool_ResolveInstalledOrDefaultFinishes.c)) |

## First authored row is not the first later readable row

C96A80 owns24bytes/8instructions, physicalECX product,no stackwords/plainRET,
FULLUInt32EAX ID. Authored array beginF8/endFC contains8-byte(pointer,fullID)rows.
Empty returnsFFFFFFFF; otherwise return firstrow+4. No scan, validity filter,
masking to low24bits or custom fallback occurs in this helper.

CF31B0 owns1304bytes/350instructions. ECXtool plus sourceDescriptor pointer and
fullUInt32requestedID are two stackwords/finalRET8void. It may first recover an
installed stair/railing/finish through lotGUID+manager lookups; initialdescriptor
words are lotGUIDlow/high and installedstairID. After default-enabled product
lookup and positiveC96FA0 count, it unconditionally seeds a relatedfinish ordinal
from C96A80 thenC96CC0. Ifno installedfinish was recovered and suppliedID0, its
second first-ID call supplies the requested default before full-ID resolution and
build dispatch. It does not search later authored rows for a usable default.
Remaining railing/fence/wall finish branches and full tool transaction remain
separate ownership; genuine C carries full context rather than handwritten summary.

A host material conversion filter before FirstOrDefault can silently substitute
another default. Rejecting an unrepresentable authored list avoids that change;
this evidence does not establish the thirdparty CSTR parser's complete binary
contract or native handling of every malformed material.

## Full bank, full ID and ordinal

C96FA0 owns95bytes/37instructions, ECXproduct/no stackwords/plainRET/fullEAXcount.
It computes authored pointer-difference SAR3 and adds global kind5 custom count
when collection acquisition(product+8,allowCreate0) succeeds; releases that
collection. An authored-only cache is not the complete native-facing preset bank.
No CLR file-time/mount-generation cache or1024entry eviction is established.

C96CC0 owns163bytes/61instructions in existingrangesC96CC0..C96D4C andC96D50..
C96D65. ExistingLEA3-byte alignment atC96D4D stays outsidebody. ECXreceiver,
fullUInt32ID/RET4,fullEAXordinal orFFFFFFFF. TEST00800000 (bit23) selects custom
bank, not signbit80000000. Otherwise search full authored IDs firstmatch in8byte
strides. Custom fullID lookup uses kind5 and returns authoredCount+customOrdinal,
with actual collection releases. No ID-as-ordinal/UInt16/thumbnail mask is valid.

C96BB0 owns269bytes/101instructions, ECXproduct plusUInt32ordinal/outputpointer,
allfour exitsRET8. ResultONLYAL0/1; upperEAX is not a normalized Boolean. Unsigned
ordinal<authoredcount loads retained pointer and AddRefs. Otherwise subtract
count, query kind5 customrow, allocate0x60 preset, initialize, retain and parse XML;
output is stored only on success. Actual release paths remain in fullListing.
Allocator/XML parser/managed Metadata are distinct functions, not implemented by
a host authored-data provider. Borrowed CLR XML arrays do not replace native refs.

## Bodies, boundaries and limits

Five full owned bodies total1855bytes/557instructions, envelope1864bytes with
nine existing alignment bytes (3 atC96D4D and6 atCF337A) explicitly markedNONOWNED
in Listing exports. CF31B0 ranges remainCF31B0..CF3379 andCF3380..CF36CD. No
function body, range, instruction definition, alignment membership or original byte
changed. Full actual annotated C is paired with complete owned ASM/envelope context.
These alignment units are not missing/recovered executable bodies or a clipped cap.

Full native custom/global service, product-default lookup, binaryCSTR reader,
compiler/broker/virtual lifetime, host authored subsort0 projection and whole world
transaction parity remain explicit separate work. Static first-ID/count/fullID/
ordinal/default facts should not be overstated as renderer/game acceptance.
