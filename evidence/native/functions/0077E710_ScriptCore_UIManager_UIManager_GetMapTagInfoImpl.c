/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163068 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetMapTagInfoImpl [assembly=ScriptCore token=0x06000E47;
   objectId: System.UInt64, bbMin: Sims3.SimIFace.Vector3&, bbMax: Sims3.SimIFace.Vector3&;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.UIManager::UIManager_GetMapTagInfoImpl
          (int param_1,int param_2,undefined4 *param_3,undefined4 *param_4)

{
  int iVar1;
  void *pvVar2;
  undefined4 *this;
  uint uVar3;
  int *piVar4;
  void *this_00;
  float *pfVar5;
  float local_88;
  undefined4 *local_84;
  undefined4 local_80;
  float fStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 local_60;
  float fStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  uint local_50 [19];
  
  local_88 = 0.0;
  pvVar2 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1));
  local_84 = this;
  if (this == (undefined4 *)0x0) {
    uVar3 = 0;
    if (DAT_011edbc4 != (void *)0x0) {
      piVar4 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
      uVar3 = 0;
      if (piVar4 != (int *)0x0) {
        Lot_GetCachedDisplayBounds(piVar4,&local_70);
        goto LAB_0077e80d;
      }
    }
  }
  else {
    piVar4 = this + 1;
    LOCK();
    *piVar4 = *piVar4 + 1;
    UNLOCK();
    pvVar2 = Object_GetComponentByMask(this,DAT_011e9fc4);
    if (pvVar2 != (void *)0x0) {
      this_00 = Object_GetComponentByMask(this,DAT_011ea158);
      if (this_00 == (void *)0x0) {
        uVar3 = FUN_007462e0((int *)&local_84);
        return uVar3 & 0xffffff00;
      }
      if ((this[0xb] & DAT_011ea0fc) != 0) {
        local_88 = 1.0;
      }
      pfVar5 = (float *)FUN_00957d30(this_00,local_50);
      pvVar2 = (void *)ModelComponent_GetBoundsStorage((int)pvVar2);
      Bounds_TransformHomogeneousCorners(pvVar2,pfVar5);
LAB_0077e80d:
      *param_3 = local_70;
      param_3[1] = uStack_6c;
      param_3[2] = uStack_68;
      *param_4 = local_60;
      local_80 = local_60;
      fStack_7c = fStack_5c;
      uStack_78 = uStack_58;
      uStack_74 = uStack_54;
      param_4[1] = fStack_5c + local_88;
      param_4[2] = uStack_58;
      if (this != (undefined4 *)0x0) {
        param_4 = this + 1;
        LOCK();
        iVar1 = *param_4;
        *param_4 = *param_4 + -1;
        UNLOCK();
        if (iVar1 == 1) {
          LOCK();
          *param_4 = 1;
          UNLOCK();
          param_4 = (undefined4 *)(**(code **)*this)(1);
        }
      }
      return CONCAT31((int3)((uint)param_4 >> 8),1);
    }
    LOCK();
    iVar1 = *piVar4;
    *piVar4 = *piVar4 + -1;
    UNLOCK();
    uVar3 = 0;
    if (iVar1 == 1) {
      LOCK();
      *piVar4 = 1;
      UNLOCK();
      uVar3 = (**(code **)*this)(1);
    }
  }
  return uVar3 & 0xffffff00;
}

