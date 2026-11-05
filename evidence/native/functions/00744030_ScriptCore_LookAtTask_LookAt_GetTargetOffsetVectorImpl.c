/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161308 (original PC 1.67 TS3W.exe).
   ScriptCore.LookAtTask::LookAt_GetTargetOffsetVectorImpl [assembly=ScriptCore token=0x06000FB7;
   handle: System.UInt32; return=Sims3.SimIFace.Vector3]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.LookAtTask::LookAt_GetTargetOffsetVectorImpl(undefined4 *param_1,uint param_2)

{
  int iVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  undefined4 local_30;
  undefined4 local_2c;
  
  if ((param_2 & 0xff000000) == 0x46000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    puVar4 = (undefined4 *)(**(code **)(*piVar2 + 0xcc))(param_2);
    if (puVar4 != (undefined4 *)0x0) {
      puVar4[1] = puVar4[1] + 1;
      piVar2 = (int *)FUN_00739aa0((int)puVar4);
      puVar3 = (undefined4 *)(**(code **)(*piVar2 + 8))();
      local_30 = *puVar3;
      local_2c = puVar3[1];
      uVar5 = puVar3[2];
      goto LAB_007440bb;
    }
  }
  else {
    puVar4 = (undefined4 *)0x0;
  }
  uVar5 = 0;
  local_30 = 0;
  local_2c = 0;
LAB_007440bb:
  *param_1 = local_30;
  param_1[1] = local_2c;
  param_1[2] = uVar5;
  if ((puVar4 != (undefined4 *)0x0) && (iVar1 = puVar4[1], puVar4[1] = iVar1 + -1, iVar1 + -1 == 0))
  {
    puVar4[1] = 1;
    (**(code **)*puVar4)(1);
  }
  return param_1;
}

