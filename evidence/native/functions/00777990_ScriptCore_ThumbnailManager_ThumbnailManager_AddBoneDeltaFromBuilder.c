/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162a98 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_AddBoneDeltaFromBuilder [assembly=ScriptCore
   token=0x06000173; simBuilderHandle: System.UInt32; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.ThumbnailManager::ThumbnailManager_AddBoneDeltaFromBuilder(int param_1)

{
  void *this;
  int *piVar1;
  void *pvVar2;
  undefined4 uVar3;
  int unaff_retaddr;
  
  if (param_1 != 0) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    pvVar2 = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
    this = DAT_011eec30;
    if ((DAT_011eec30 != (void *)0x0) && (pvVar2 != (void *)0x0)) {
      uVar3 = FUN_005e18b0(pvVar2,(int *)&stack0x00000000);
      if ((char)uVar3 != '\0') {
        pvVar2 = FUN_00574900(unaff_retaddr);
        FUN_00d58430(this,pvVar2);
      }
    }
  }
  return;
}

