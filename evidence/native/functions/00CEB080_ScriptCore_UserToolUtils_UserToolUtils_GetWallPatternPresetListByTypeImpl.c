/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189ed0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_GetWallPatternPresetListByTypeImpl [assembly=ScriptCore
   token=0x06000BF1; subsortType: System.UInt32; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static; registered ScriptCore.UserToolUtils name retained.
   Record01189ED0 and pristine ScriptCore06000BF1 bind oneUInt32 subsort mask toUInt32[] return.
   Exact108-byte physical body CEB080..CEB0EB has two plainRET exits, one stackDWORD atentry+4,
   EAXopaquearrayhandle; cdecl/caller cleanup, not prior stdcall inference. Loads
   catalogsingleton011EE034, null→0; initializes actual pairvector, invokes C8E8F0,
   CEAF30(vector,1), frees vectorstorage ifnonnull and returns localhandle. No retained product
   release here; arrayconverter retains each pair and original managed wrapper owns duplicate
   reference handling. FourCC paddingbytes before nextregisteredentry are not functionowned. */

uint __cdecl
ScriptCore.UserToolUtils::UserToolUtils_GetWallPatternPresetListByTypeImpl(uint subsortMask)

{
  uint uVar1;
  void *pvStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  char *pcStack_4;
  
  if (DAT_011ee034 != (void *)0x0) {
    pvStack_10 = (void *)0x0;
    uStack_c = 0;
    uStack_8 = 0;
    pcStack_4 = "World/Catalog/ProductPresetReferenceVector";
    PatternCatalog_CollectWallPresetPairs(DAT_011ee034,subsortMask,&pvStack_10);
    uVar1 = PatternPresetPairs_SortAndExportHandles(&pvStack_10,1);
    if (pvStack_10 != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_10);
    }
    return uVar1;
  }
  return 0;
}

