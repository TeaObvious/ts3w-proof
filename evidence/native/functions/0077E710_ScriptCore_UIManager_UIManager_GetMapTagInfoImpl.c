/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163068 (original PC 1.67 TS3W.exe).
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
  undefined4 *this;
  uint uVar2;
  int *piVar3;
  void *pvVar4;
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
  iVar1 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar1);
  local_84 = this;
  if (this == (undefined4 *)0x0) {
    uVar2 = 0;
    if (DAT_011edbc4 != (void *)0x0) {
      piVar3 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
      uVar2 = 0;
      if (piVar3 != (int *)0x0) {
        FUN_00abc1b0(piVar3,&local_70);
        goto LAB_0077e80d;
      }
    }
  }
  else {
    piVar3 = this + 1;
    LOCK();
    *piVar3 = *piVar3 + 1;
    UNLOCK();
    iVar1 = FUN_00934260(this,DAT_011e9fc4);
    if (iVar1 != 0) {
      pvVar4 = (void *)FUN_00934260(this,DAT_011ea158);
      if (pvVar4 == (void *)0x0) {
        uVar2 = FUN_007462e0((int *)&local_84);
        return uVar2 & 0xffffff00;
      }
      if ((this[0xb] & DAT_011ea0fc) != 0) {
        local_88 = DAT_00f998f8;
      }
      pfVar5 = (float *)FUN_00957d30(pvVar4,local_50);
      pvVar4 = (void *)FUN_00948880(iVar1);
      FUN_0068dbb0(pvVar4,pfVar5);
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
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    uVar2 = 0;
    if (iVar1 == 1) {
      LOCK();
      *piVar3 = 1;
      UNLOCK();
      uVar2 = (**(code **)*this)(1);
    }
  }
  return uVar2 & 0xffffff00;
}

