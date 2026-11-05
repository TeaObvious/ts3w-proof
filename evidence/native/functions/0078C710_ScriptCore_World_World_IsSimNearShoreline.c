/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163568 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  void *this;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 *local_24;
  undefined1 local_20 [28];
  
  this = ObjectRegistry_GetGlobal();
  local_24 = ObjectRegistry_FindBorrowed(this,CONCAT44(param_2,param_1));
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

