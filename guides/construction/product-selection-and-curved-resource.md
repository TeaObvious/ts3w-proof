# Construction product selection and curved resource

Original PC1.67, static instruction evidence. Actual annotated Ghidra pseudocode
and complete owned listings were exported after a clean database save; original
bytes/ABI/local metadata unchanged. Analyst names are roles, not original symbols.

| Entry and role | Complete original evidence |
| --- | --- |
| 00c8ede0 CurvedPoolCatalog_LookupDescriptionProduct | [ASM](../../evidence/native/functions/00C8EDE0_CurvedPoolCatalog_LookupDescriptionProduct.asm) ([pseudocode](../../evidence/native/functions/00C8EDE0_CurvedPoolCatalog_LookupDescriptionProduct.c)) |
| 00c92b10 ProductCatalog_LoadCurvedPoolBank | [ASM](../../evidence/native/functions/00C92B10_ProductCatalog_LoadCurvedPoolBank.asm) ([pseudocode](../../evidence/native/functions/00C92B10_ProductCatalog_LoadCurvedPoolBank.c)) |
| 00cd5cc0 CurvedPoolTool_AdmitDescriptionProduct | [ASM](../../evidence/native/functions/00CD5CC0_CurvedPoolTool_AdmitDescriptionProduct.asm) ([pseudocode](../../evidence/native/functions/00CD5CC0_CurvedPoolTool_AdmitDescriptionProduct.c)) |
| 00c8f8c0 FUN_00c8f8c0 | [ASM](../../evidence/native/functions/00C8F8C0_FUN_00c8f8c0.asm) ([pseudocode](../../evidence/native/functions/00C8F8C0_FUN_00c8f8c0.c)) |
| 00ce61d0 ScriptCore.UserToolUtils::UserToolUtils_GetProductImpl | [ASM](../../evidence/native/functions/00CE61D0_ScriptCore_UserToolUtils_UserToolUtils_GetProductImpl.asm) ([pseudocode](../../evidence/native/functions/00CE61D0_ScriptCore_UserToolUtils_UserToolUtils_GetProductImpl.c)) |
| 00cef6b0 CatalogProduct_ComputeDisplayPrice | [ASM](../../evidence/native/functions/00CEF6B0_CatalogProduct_ComputeDisplayPrice.asm) ([pseudocode](../../evidence/native/functions/00CEF6B0_CatalogProduct_ComputeDisplayPrice.c)) |
| 00c93670 CurvedPoolProduct_Construct | [ASM](../../evidence/native/functions/00C93670_CurvedPoolProduct_Construct.asm) ([pseudocode](../../evidence/native/functions/00C93670_CurvedPoolProduct_Construct.c)) |
| 00c93720 CurvedPoolProduct_ReadCatalog | [ASM](../../evidence/native/functions/00C93720_CurvedPoolProduct_ReadCatalog.asm) ([pseudocode](../../evidence/native/functions/00C93720_CurvedPoolProduct_ReadCatalog.c)) |
| 00c8cd90 CatalogProductFactory_CreateByResourceType | [ASM](../../evidence/native/functions/00C8CD90_CatalogProductFactory_CreateByResourceType.asm) ([pseudocode](../../evidence/native/functions/00C8CD90_CatalogProductFactory_CreateByResourceType.c)) |

C8CD90 allocatesE8hex CurvedPool and dispatches resource0A36F07A through factory
virtual24, releasing/clearing output on failure; success is AL only. C93670 sets
Common defaults,88=1, five full16-byte keys90..D0 zero and E0/E4=1.

C93720 reads UInt32 version and reference table iff unsigned version>=1, then
shared Common C93100. Read UInt32 field88, five UInt32 table ordinals to full
keys90/A0/B0/C0/D0, then UInt32 E0/E4. Out-of-range ordinal returnsAL0; zero key
is valid table content. Every exit releases table/reader auxiliary storage. The
main cursor need not equal physical end because the table has a relative target.
A fixed skip/inline-key/version1-only parser does not implement this original wire.
Native partial writes on accumulated failure are not transactional CLR values.

C92B10 rebuilds the retained native catalog bank from exact resource keys and
product interface0A373472. C8EDE0 returns matching row product+10 ornull. Its
header+128 is END, not first-row fallback; the contradictory earlier inline
comment was corrected in the database against the original pointer comparison.
C8F8C0/CE61D0 select families; CD5CC0 consumes distinct keysB0/C0, DWORD88 and
E0/E4. This is not a complete pool planner or a name recovery for all fields.

Current stamped CLR caching, byte limits, foundation-derived family projection,
full wrapped family suffixes and game resource load order are separate policies;
these original functions establish neither their parity nor a concurrency result.
