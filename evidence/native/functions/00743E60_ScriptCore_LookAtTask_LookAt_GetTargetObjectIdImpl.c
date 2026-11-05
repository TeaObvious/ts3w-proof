/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011612e8 (original PC 1.67 TS3W.exe).
   ScriptCore.LookAtTask::LookAt_GetTargetObjectIdImpl [assembly=ScriptCore token=0x06000FB3;
   handle: System.UInt32; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_LookAtTask__LookAt_GetTargetObjectIdImpl(uint param_1)

{
  undefined4 uVar1;
  int *piVar2;
  undefined4 *puVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  
  if ((param_1 & 0xff000000) == 0x46000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    puVar5 = (undefined4 *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (puVar5 != (undefined4 *)0x0) {
      puVar5[1] = puVar5[1] + 1;
      puVar3 = (undefined4 *)FUN_00739aa0((int)puVar5);
      iVar4 = (**(code **)*puVar3)();
      if (iVar4 != 0) {
        uVar6 = *(undefined4 *)(iVar4 + 8);
        uVar1 = *(undefined4 *)(iVar4 + 0xc);
        goto LAB_00743eb8;
      }
    }
    uVar6 = 0;
    uVar1 = 0;
  }
  else {
    puVar5 = (undefined4 *)0x0;
    uVar6 = 0;
    uVar1 = 0;
  }
LAB_00743eb8:
  if ((puVar5 != (undefined4 *)0x0) && (iVar4 = puVar5[1], puVar5[1] = iVar4 + -1, iVar4 + -1 == 0))
  {
    puVar5[1] = 1;
    (**(code **)*puVar5)(1);
  }
  return CONCAT44(uVar1,uVar6);
}

