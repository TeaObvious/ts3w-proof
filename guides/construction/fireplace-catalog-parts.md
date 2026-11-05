# Fireplace catalog fields, versions and role access

Static original PC1.67 /TS3W.exe GhidrAssist evidence. Ten complete actual annotated C/original ASM pairs cover283 instructions/973 contiguous bytes, plus32 necessary constructor-selected vtable bytes. All bytes checked against original input; database saved clean, original bytes unchanged. Analyst names describe proven roles; neutral address getters can be folded/shared across other object types. No original-target/game/compiler/test execution is claimed.

Factory C8CD90 maps04F3CC01 to100h allocation and C954F0. Constructor calls C93020, installs0107CC48, clears DWORD88 and all seven16-byte fields90..F0. It does not establish padding8C initialization. Vtable+18h dispatches C955C0.

C955C0 physically receives ECX plus reader pointer stackword; all exitsRET4, resultAL Boolean. It reads UInt32 outer version; unsigned>=2 requires reference-key table before common fields. Common C93100 return is not directly tested. Width is one unsigned byte, MOVZX intoDWORD88; no1..3 domain check. Unsigned<2 then reads seven inline full keys; >=2 reads seven ordinals into the same90/A0/B0/C0/D0/E0/F0 fields, failing immediately on first helperAL0. Existing C92FD0 copies all four words on valid ordinal, including zero words. It frees key table and releases reader auxiliary on both success/failure paths; final ordinary result is its own accumulated local reader status.

Small getters return borrowed ECX+90/A0/B0/C0/D0/E0/F0 addresses in EAX or raw DWORD88, all plainRET/no stack arguments. In the traced CFIR/current-wrapper role chain these correspond to Mantle, ChimneyMantle, FullLevel, GroundLevel, Body, Top, Cap and Width. Actual CE1FA0 consumer was read without mutation to confirm width==1 and role accessor use; no complete planner parity or homogeneous inferred ABI is claimed. Generic B0/C0 and other field-address leaves do not globally type all their callers as fireplace products.

The original reader contract has two version-selected wire forms: seven full inline keys below outer version2 and seven table ordinals from version2. Valid all-zero keys are preserved; an invalid ordinal returns failure. The external s3pi FireplaceCatalogResource wrapper uses an ordinal-only seven-key form, which does not define the original version contract. Runtime field decoding belongs to the shared CFIR/Common reader; Game owns catalog selection and part-role projection. Host exceptions, full-key/negative residency, CLR lifetimes and public role enum/KeyOf invalid-value policy are separate ownership decisions, not inferred native memory or enum contracts. See [Common wire and CFIR consumer closure](catalog-common-wire-cfir.md) for complete shared-header/Common advancement, key-vector producer/consumer boundaries and the host error model.

## Canonical evidence

- [FireplaceProduct_Construct ASM](../../evidence/native/functions/00C954F0_FireplaceProduct_Construct.asm) ([C](../../evidence/native/functions/00C954F0_FireplaceProduct_Construct.c))
- [FireplaceProduct_ReadCatalog ASM](../../evidence/native/functions/00C955C0_FireplaceProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C955C0_FireplaceProduct_ReadCatalog.c))
- [ObjectField_Address90 ASM](../../evidence/native/functions/00C95320_ObjectField_Address90.asm) ([C](../../evidence/native/functions/00C95320_ObjectField_Address90.c))
- [ObjectField_AddressA0 ASM](../../evidence/native/functions/00C95330_ObjectField_AddressA0.asm) ([C](../../evidence/native/functions/00C95330_ObjectField_AddressA0.c))
- [ObjectField_AddressB0 ASM](../../evidence/native/functions/0081F7A0_ObjectField_AddressB0.asm) ([C](../../evidence/native/functions/0081F7A0_ObjectField_AddressB0.c))
- [ObjectField_AddressC0 ASM](../../evidence/native/functions/006FA990_ObjectField_AddressC0.asm) ([C](../../evidence/native/functions/006FA990_ObjectField_AddressC0.c))
- [ObjectField_AddressD0 ASM](../../evidence/native/functions/00C95340_ObjectField_AddressD0.asm) ([C](../../evidence/native/functions/00C95340_ObjectField_AddressD0.c))
- [ObjectField_AddressE0 ASM](../../evidence/native/functions/00C95350_ObjectField_AddressE0.asm) ([C](../../evidence/native/functions/00C95350_ObjectField_AddressE0.c))
- [ObjectField_AddressF0 ASM](../../evidence/native/functions/00C95360_ObjectField_AddressF0.asm) ([C](../../evidence/native/functions/00C95360_ObjectField_AddressF0.c))
- [ObjectField_ReadUInt32At88 ASM](../../evidence/native/functions/00C95370_ObjectField_ReadUInt32At88.asm) ([C](../../evidence/native/functions/00C95370_ObjectField_ReadUInt32At88.c))
- [Existing product factory ASM](../../evidence/native/functions/00C8CD90_CatalogProductFactory_CreateByResourceType.asm) ([C](../../evidence/native/functions/00C8CD90_CatalogProductFactory_CreateByResourceType.c))
- [Existing common-field reader ASM](../../evidence/native/functions/00C93100_CatalogProduct_ReadCommonFields.asm) ([C](../../evidence/native/functions/00C93100_CatalogProduct_ReadCommonFields.c))
- [Existing ordinal-key helper ASM](../../evidence/native/functions/00C92FD0_ReferenceTable_ReadKeyByOrdinal.asm) ([C](../../evidence/native/functions/00C92FD0_ReferenceTable_ReadKeyByOrdinal.c))

[Original constructor-selected vtable](../../evidence/native/data/fireplace-catalog-vtable.txt).
