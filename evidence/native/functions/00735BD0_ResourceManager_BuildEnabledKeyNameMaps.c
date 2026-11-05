/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00735cf7) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 SACS migration contract): Selected full body gates enumeration on manager
   byte+764; enumerates native name-map resources and builds retained list for lookup. Does not
   establish project mount-generation key, Volatile publication, monitor, background thread or cache
   budget. Resource-manager constructor enabling policy and ordering remain bounded beyond earlier
   reference. */

int * __fastcall ResourceManager_BuildEnabledKeyNameMaps(int param_1)

{
  undefined **ppuVar1;
  char cVar2;
  int *piVar3;
  int *piVar4;
  undefined4 *puVar5;
  int unaff_EBX;
  undefined **ppuVar6;
  undefined **ppuStack_1c;
  undefined **local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  piVar3 = (int *)(param_1 + 0x758);
  if (*(char *)(param_1 + 0x764) != '\0') {
    if ((int *)*piVar3 != piVar3) {
      return (int *)(param_1 + 0x758);
    }
    local_18 = &PTR_LAB_00fd92b0;
    local_14 = 0x166038c;
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = "Debug/KeyNameMap/TempKeyList";
    piVar3 = (int *)FUN_004afe80();
    (**(code **)(*piVar3 + 0x20))(&local_10,&local_18,0);
    FUN_004afe30((int *)&ppuStack_1c);
    ppuVar1 = local_18;
    for (ppuVar6 = ppuStack_1c; ppuVar6 != ppuVar1; ppuVar6 = ppuVar6 + 4) {
      piVar4 = (int *)(**(code **)(*piVar3 + 0x44))(ppuVar6);
      if ((piVar4 != (int *)0x0) &&
         (cVar2 = (**(code **)(*piVar4 + 0x34))(ppuVar6,&stack0xffffffcc,1,6,1,0), cVar2 != '\0')) {
        puVar5 = (undefined4 *)FUN_004e4500(0x48,"Debug/KeyNameMap",0);
        if (puVar5 == (undefined4 *)0x0) {
          puVar5 = (undefined4 *)0x0;
        }
        else {
          puVar5 = FUN_0072f670(puVar5);
        }
        piVar4 = (int *)(**(code **)(_DAT_00000000 + 0x18))();
        ShaderNameTable_ReadKNM(puVar5,piVar4);
        FUN_00735490((void *)(unaff_EBX + 0x758),(undefined4 *)&stack0xffffffd0);
        (**(code **)(_DAT_00000000 + 0x20))();
        param_1 = unaff_EBX;
      }
    }
    if (ppuStack_1c != (undefined **)0x0) {
      Memory_FreeIfNonNull(ppuStack_1c);
    }
    piVar3 = (int *)(param_1 + 0x758);
  }
  return piVar3;
}

