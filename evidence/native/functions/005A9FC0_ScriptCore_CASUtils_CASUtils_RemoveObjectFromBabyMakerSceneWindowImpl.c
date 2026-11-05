/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011564f8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_RemoveObjectFromBabyMakerSceneWindowImpl [assembly=ScriptCore
   token=0x0600033C; winHandle: System.UInt32, scriptHandle: System.UInt64, callback:
   System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CASUtils__CASUtils_RemoveObjectFromBabyMakerSceneWindowImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  
  if ((param_1 & 0xff000000) == 0x30000000) {
    iVar2 = FUN_00937570();
    puVar3 = (undefined4 *)FUN_00937f80(iVar2);
    if (puVar3 != (undefined4 *)0x0) {
      piVar1 = puVar3 + 1;
      LOCK();
      *piVar1 = *piVar1 + 1;
      UNLOCK();
      FUN_009356c0(0xc,puVar3,0);
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puVar3)(1);
      }
    }
  }
  return;
}

