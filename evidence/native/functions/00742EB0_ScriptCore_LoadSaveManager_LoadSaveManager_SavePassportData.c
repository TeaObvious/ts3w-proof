/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01161250 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LoadSaveManager::LoadSaveManager_SavePassportData [assembly=ScriptCore
   token=0x060001E0; compiledXMLData: System.String, stringLength: System.UInt32, profileName:
   System.String; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Independent five-byte PE window is E9
   transfer to SavePassport direct target 00742DA0. Stored body owns one byte and has ZERO actual
   Listing instructions; no complete-body or prototype repair claim. */

int ScriptCore_LoadSaveManager__LoadSaveManager_SavePassportData
              (undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  void *this;
  short *psVar2;
  wint_t *pwVar3;
  int iVar4;
  undefined4 unaff_retaddr;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  this = (void *)FUN_00aa99c0();
  if (this == (void *)0x0) {
    return 0;
  }
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
  if ((psVar2 != (short *)0x0) && (*psVar2 != 0)) {
    pwVar3 = (wint_t *)(**(code **)(*piVar1 + 0x58))(param_2);
    if (*psVar2 != 0) {
      iVar4 = FUN_00aaec80(this,psVar2,unaff_retaddr,pwVar3);
      return iVar4;
    }
  }
  return 0;
}

