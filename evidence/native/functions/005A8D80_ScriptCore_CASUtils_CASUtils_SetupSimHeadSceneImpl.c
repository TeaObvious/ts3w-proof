/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156530 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SetupSimHeadSceneImpl [assembly=ScriptCore token=0x06000343;
   winHandle: System.UInt32, cursorDeltaX: System.Single, cursorDeltaY: System.Single, callback:
   System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CASUtils::CASUtils_SetupSimHeadSceneImpl(uint param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 *this;
  int *piVar3;
  undefined4 unaff_retaddr;
  
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0xc))(0x39a436f);
      if (puVar2 != (undefined4 *)0x0) {
        piVar1 = (int *)FUN_0044c4f0();
        this = FUN_0076ae20();
        if (this == (undefined4 *)0x0) {
          piVar3 = (int *)0x0;
        }
        else {
          piVar3 = FUN_005a7ab0(this,puVar2,unaff_retaddr,param_1);
        }
        (**(code **)(*piVar3 + 4))();
        (**(code **)(*piVar1 + 0x1c))(0x30290f0,piVar3,0,0);
                    /* WARNING: Could not recover jumptable at 0x005a8e1c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        (**(code **)(*piVar3 + 8))();
        return;
      }
    }
  }
  return;
}

