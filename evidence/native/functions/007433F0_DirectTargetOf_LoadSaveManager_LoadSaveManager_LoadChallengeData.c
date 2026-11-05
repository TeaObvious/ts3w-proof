/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.LoadSaveManager::LoadSaveManager_LoadChallengeData at 0x00743650, bytes e99bfdffff.
   This is a static control-flow link from the registered entry; the target may have other callers
   and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Converts profile wide pointer through
   host +58h, rejects empty profile, initializes result to NotLoaded, calls backend 00AABFC0, then
   builds/publishes variant through host +50h and cleans temporaries. The original managed result
   uses StringFromVariantMarshaler. Broader backend disk policy remains outside this body. */

undefined4 __cdecl
DirectTargetOf_LoadSaveManager_LoadSaveManager_LoadChallengeData(undefined4 param_1)

{
  int *piVar1;
  int iVar2;
  wint_t *pwVar3;
  void *unaff_ESI;
  undefined4 unaff_EDI;
  void *pvStack_34;
  undefined4 local_30;
  undefined **local_2c;
  undefined4 local_28;
  char *local_24 [9];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  iVar2 = FUN_00aa99c0();
  if (iVar2 != 0) {
    local_30 = 0;
    local_2c = (undefined **)0x0;
    local_28 = 0;
    local_24[0] = "World/LoadSaveManager";
    FUN_0040b590(&local_30,L"NotLoaded");
    pwVar3 = (wint_t *)(**(code **)(*piVar1 + 0x58))(param_1);
    if (pwVar3 == (wint_t *)0x0) {
      if ((2 < (int)((int)local_2c - (int)pvStack_34 & 0xfffffffeU)) && (pvStack_34 != (void *)0x0))
      {
        Memory_FreeIfNonNull(pvStack_34);
        return 0;
      }
    }
    else {
      if (*pwVar3 != 0) {
        FUN_00aabfc0(&pvStack_34,pwVar3);
        FUN_004f6630(local_24,&pvStack_34);
        (**(code **)(*piVar1 + 0x50))(local_24,&stack0xffffffc8);
        local_2c = &PTR_FUN_00fba6f4;
        if (((uint)local_24[0] & 4) != 0) {
          FUN_004f5760(&local_2c,'\0');
        }
        if ((2 < (int)((int)pvStack_34 - (int)unaff_ESI & 0xfffffffeU)) &&
           (unaff_ESI != (void *)0x0)) {
          Memory_FreeIfNonNull(unaff_ESI);
        }
        return unaff_EDI;
      }
      if ((2 < (int)((int)local_2c - (int)pvStack_34 & 0xfffffffeU)) && (pvStack_34 != (void *)0x0))
      {
        Memory_FreeIfNonNull(pvStack_34);
      }
    }
  }
  return 0;
}

