/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162ee0 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_GetWindowFromPointImpl [assembly=ScriptCore token=0x06000E17;
   pos: Sims3.SimIFace.Vector2&; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_UIManager__UIManager_GetWindowFromPointImpl(undefined4 param_1)

{
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar2 = (int *)FUN_0050af90();
  puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0x50))(param_1);
  if (puVar3 != (undefined4 *)0x0) {
    (**(code **)*puVar3)();
    uVar4 = (**(code **)(*piVar1 + 200))(puVar3,0x30);
    return uVar4;
  }
  return 0;
}

