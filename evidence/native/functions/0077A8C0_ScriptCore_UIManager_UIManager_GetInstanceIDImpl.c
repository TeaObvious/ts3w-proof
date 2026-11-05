/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162e20 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_GetInstanceIDImpl [assembly=ScriptCore token=0x06000DFF;
   winHandle: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_UIManager__UIManager_GetInstanceIDImpl(uint param_1)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
      if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x0077a903. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        uVar2 = (**(code **)(*piVar1 + 0x18))();
        return uVar2;
      }
    }
  }
  return 0;
}

