/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156490 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimsVisibleInCASImpl [assembly=ScriptCore token=0x060002F0;
   visible: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CASUtils__CASUtils_SimsVisibleInCASImpl(char param_1)

{
  void *pvVar1;
  undefined4 uVar2;
  
  pvVar1 = (void *)FUN_006e8170();
  if (pvVar1 != (void *)0x0) {
    uVar2 = 0x10;
    if (param_1 == '\0') {
      uVar2 = 1;
    }
    FUN_006e8260(pvVar1,uVar2,0x7ffff000);
    pvVar1 = *(void **)((int)pvVar1 + 0x38);
    if (pvVar1 != (void *)0x0) {
      FUN_006dedb0(pvVar1,param_1 == '\0');
      FUN_006deda0(pvVar1,param_1);
      FUN_006ded80(pvVar1,uVar2,0x7ffff000);
    }
  }
  return;
}

