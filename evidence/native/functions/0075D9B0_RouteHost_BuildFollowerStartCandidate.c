/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Calls00752650; on success resolves follower level and
   validates/snaps world start through0074c010. Rejected start returns type2. Emits one64-byte
   candidate with weight1, level+0x24, slot0/tag0. Preserves follower facing from earlier read and
   releases target reference. */

int __thiscall RouteHost_BuildFollowerStartCandidate(void *this,void *param_1,undefined4 *param_2)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  void *pvVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  float local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  float local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  uint local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  
  iVar3 = RouteHost_ReadFollowerStartPose(this,&local_70,&local_60,param_2);
  if ((iVar3 == 1) && (pvVar4 = ObjectRegistry_GetGlobal(), pvVar4 != (void *)0x0)) {
    uVar6 = *(undefined4 *)((int)this + 0x44);
    uVar7 = *(undefined4 *)((int)this + 0x40);
    pvVar4 = ObjectRegistry_GetGlobal();
    puVar5 = ObjectRegistry_FindBorrowed(pvVar4,CONCAT44(uVar6,uVar7));
    if (puVar5 != (undefined4 *)0x0) {
      LOCK();
      puVar5[1] = puVar5[1] + 1;
      UNLOCK();
    }
    local_50 = local_70;
    uStack_4c = uStack_6c;
    uStack_48 = uStack_68;
    uStack_44 = uStack_64;
    uStack_64 = 0;
    uStack_68 = 0;
    uStack_6c = 0;
    local_70 = 0;
    local_40 = 0.0;
    uStack_3c = 0;
    uStack_38 = 0;
    uStack_34 = 0;
    local_30 = DAT_00f998f8;
    local_2c = FUN_0074c1c0(puVar5);
    local_28 = 0;
    local_24 = 0;
    local_20 = 0;
    uVar6 = FUN_0074c010(*(undefined4 *)((int)this + 0x40),*(undefined4 *)((int)this + 0x44),
                         (int)&local_50);
    if ((char)uVar6 == '\0') {
      iVar3 = 2;
    }
    else {
      local_40 = local_60;
      uStack_3c = uStack_5c;
      uStack_38 = uStack_58;
      uStack_34 = uStack_54;
      FUN_00654980(param_1,&local_50);
    }
    if (puVar5 != (undefined4 *)0x0) {
      piVar1 = puVar5 + 1;
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puVar5)(1);
      }
    }
  }
  return iVar3;
}

