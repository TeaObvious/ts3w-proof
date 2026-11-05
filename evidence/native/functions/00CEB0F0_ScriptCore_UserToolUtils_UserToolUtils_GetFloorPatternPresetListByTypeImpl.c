/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189ee0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_GetFloorPatternPresetListByTypeImpl [assembly=ScriptCore
   token=0x06000BF3; subsortType: System.UInt32; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static; registered ScriptCore.UserToolUtils name retained.
   Record01189EE0/pristineScriptCore06000BF3. Exact108-byte body CEB0F0..CEB15B; oneUInt32stackmask,
   EAXopaquearrayhandle, both plainRET =>cdecl not historicalstdcall label. Catalogsingleton null
   returns0; distinct C8E9B0 floorbank collector thenCEAF30(vector,1), temporarypairvector cleanup,
   preserved fullreturnedhandle. NextentryCEB160 and CCpadding excluded. Original ScriptCore turns
   null into emptyUInt32array, then SimIFace WrapPresetList handles alternating fullUInt32 lanes. */

uint __cdecl
ScriptCore.UserToolUtils::UserToolUtils_GetFloorPatternPresetListByTypeImpl(uint subsortMask)

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
    PatternCatalog_CollectFloorPresetPairs(DAT_011ee034,subsortMask,&pvStack_10);
    uVar1 = PatternPresetPairs_SortAndExportHandles(&pvStack_10,1);
    if (pvStack_10 != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_10);
    }
    return uVar1;
  }
  return 0;
}

