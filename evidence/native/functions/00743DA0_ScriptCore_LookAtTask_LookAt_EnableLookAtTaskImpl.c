/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011612d8 (original PC 1.67 TS3W.exe).
   ScriptCore.LookAtTask::LookAt_EnableLookAtTaskImpl [assembly=ScriptCore token=0x06000FB1; handle:
   System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.LookAtTask::LookAt_EnableLookAtTaskImpl(uint param_1)

{
  uint uVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  int iVar5;
  
  uVar1 = param_1 & 0xff000000;
  if (uVar1 == 0x46000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0xcc))(param_1);
    uVar1 = 0;
    if (puVar3 != (undefined4 *)0x0) {
      puVar3[1] = puVar3[1] + 1;
      uVar4 = FUN_005810f0((uint)puVar3);
      iVar5 = puVar3[1] + -1;
      puVar3[1] = iVar5;
      if (iVar5 == 0) {
        puVar3[1] = 1;
        iVar5 = (**(code **)*puVar3)(1);
      }
      return CONCAT31((int3)((uint)iVar5 >> 8),(char)uVar4);
    }
  }
  return uVar1;
}

