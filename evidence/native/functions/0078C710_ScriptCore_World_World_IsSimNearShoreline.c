/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163568 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_IsSimNearShoreline [assembly=ScriptCore token=0x060007AC; objId:
   System.UInt64, pointInWater: Sims3.SimIFace.Vector3&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.World::World_IsSimNearShoreline
          (undefined4 param_1,undefined4 param_2,undefined4 *param_3)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 *local_24;
  undefined1 local_20 [28];
  
  iVar2 = FUN_00937570();
  local_24 = (undefined4 *)FUN_00937f80(iVar2);
  if (local_24 != (undefined4 *)0x0) {
    piVar1 = local_24 + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    if ((param_3 != (undefined4 *)0x0) && (DAT_011edbc4 != (void *)0x0)) {
      local_20._8_4_ = param_3[2];
      local_20._0_4_ = *param_3;
      local_20._4_4_ = param_3[1];
      local_20._12_4_ = local_20._0_4_;
      uVar3 = FUN_00c737a0(DAT_011edbc4,local_24,(undefined1 (*) [16])local_20);
      uVar4 = FUN_007462e0((int *)&local_24);
      return CONCAT31((int3)((uint)uVar4 >> 8),(char)uVar3);
    }
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      local_24 = (undefined4 *)(**(code **)*local_24)(1);
    }
  }
  return (uint)local_24 & 0xffffff00;
}

