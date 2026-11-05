/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189dd0 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_ShutdownUserToolManagerImpl [assembly=ScriptCore
   token=0x06000BE1; ; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UserToolUtils__UserToolUtils_ShutdownUserToolManagerImpl(void)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  
  if (*(void **)(DAT_011ee718 + 8) != (void *)0x0) {
    FUN_00cefee0(*(void **)(DAT_011ee718 + 8));
    puVar3 = *(undefined4 **)(DAT_011ee718 + 8);
    if (puVar3 != (undefined4 *)0x0) {
      *(undefined4 *)(DAT_011ee718 + 8) = 0;
      piVar1 = puVar3 + 1;
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

