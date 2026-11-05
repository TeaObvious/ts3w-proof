/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163ba0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_DesignModeSwap_IsMaterialBuiltImpl [assembly=ScriptCore token=0x06000876;
   handle: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_World__World_DesignModeSwap_IsMaterialBuiltImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((param_1 & 0xff000000) == 0x45000000) {
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    piVar1 = (int *)0x0;
    if (iVar2 != 0) {
      uVar3 = FUN_00a5e2e0(iVar2);
      return uVar3;
    }
  }
  return CONCAT31((int3)((uint)piVar1 >> 8),1);
}

