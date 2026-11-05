/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162f20 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_BeginModalImpl [assembly=ScriptCore token=0x06000E1F; winHandle:
   System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_UIManager__UIManager_BeginModalImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    piVar1 = (int *)0x0;
    if (piVar2 != (int *)0x0) {
      iVar3 = (**(code **)(*piVar2 + 0xc))(0xeeee8218);
      piVar1 = (int *)0x0;
      if (iVar3 != 0) {
        piVar1 = (int *)FUN_0050af90();
        uVar4 = (**(code **)(*piVar1 + 0x80))(iVar3,0);
        return uVar4;
      }
    }
  }
  return (uint)piVar1 & 0xffffff00;
}

