/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01161248 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LoadSaveManager::LoadSaveManager_LoadChallengeData [assembly=ScriptCore
   token=0x060001DF; profileName: System.String; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Independent five-byte PE window is E9
   transfer to LoadChallenge direct target 007433F0. Stored body owns one byte with ZERO actual
   Listing instructions; no complete-body or prototype repair claim. */

undefined4 ScriptCore_LoadSaveManager__LoadSaveManager_LoadChallengeData(undefined4 param_1)

{
  int *piVar1;
  int iVar2;
  wint_t *pwVar3;
  void *unaff_ESI;
  undefined4 unaff_EDI;
  void *pvStack_34;
  undefined4 uStack_30;
  undefined **ppuStack_2c;
  undefined4 uStack_28;
  char *apcStack_24 [9];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  iVar2 = FUN_00aa99c0();
  if (iVar2 != 0) {
    uStack_30 = 0;
    ppuStack_2c = (undefined **)0x0;
    uStack_28 = 0;
    apcStack_24[0] = "World/LoadSaveManager";
    FUN_0040b590(&uStack_30,L"NotLoaded");
    pwVar3 = (wint_t *)(**(code **)(*piVar1 + 0x58))(param_1);
    if (pwVar3 == (wint_t *)0x0) {
      if ((2 < (int)((int)ppuStack_2c - (int)pvStack_34 & 0xfffffffeU)) &&
         (pvStack_34 != (void *)0x0)) {
        Memory_FreeIfNonNull(pvStack_34);
        return 0;
      }
    }
    else {
      if (*pwVar3 != 0) {
        FUN_00aabfc0(&pvStack_34,pwVar3);
        FUN_004f6630(apcStack_24,&pvStack_34);
        (**(code **)(*piVar1 + 0x50))(apcStack_24,&stack0xffffffc8);
        ppuStack_2c = &PTR_FUN_00fba6f4;
        if (((uint)apcStack_24[0] & 4) != 0) {
          FUN_004f5760(&ppuStack_2c,'\0');
        }
        if ((2 < (int)((int)pvStack_34 - (int)unaff_ESI & 0xfffffffeU)) &&
           (unaff_ESI != (void *)0x0)) {
          Memory_FreeIfNonNull(unaff_ESI);
        }
        return unaff_EDI;
      }
      if ((2 < (int)((int)ppuStack_2c - (int)pvStack_34 & 0xfffffffeU)) &&
         (pvStack_34 != (void *)0x0)) {
        Memory_FreeIfNonNull(pvStack_34);
      }
    }
  }
  return 0;
}

