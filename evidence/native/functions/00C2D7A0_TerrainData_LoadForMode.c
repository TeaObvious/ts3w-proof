/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Original PC1.67 terrain load owner for the forwarded mode byte. Stores mode at receiver+1C and
   clears+1F; nonzero mode may select the terrain provider and inspect the original archive version.
   Passes mode unchanged to C2C770 and refuses when its returned AL is zero. Zero mode requires
   height-map and blend-map loads. Nonzero mode walks chunk-resource joins and selects
   version-dependent blend or auxiliary processing. Final C28740 success gates AL1; inspected
   refusal branches clear AL while other EAX bits are not a normalized Boolean. Dynamic
   provider/child internals and broader world lifetime remain separate. */

uint __thiscall TerrainData_LoadForMode(void *this,int *param_1,uint param_2,char param_3)

{
  undefined4 *puVar1;
  char cVar2;
  bool bVar3;
  int *piVar4;
  int iVar5;
  uint3 extraout_var;
  int *piVar6;
  int *piVar7;
  uint extraout_EAX;
  uint3 extraout_var_00;
  uint3 uVar9;
  undefined4 uVar8;
  undefined4 extraout_EAX_00;
  uint extraout_EAX_01;
  int *local_9c;
  ushort auStack_98 [2];
  int *piStack_94;
  ushort auStack_90 [2];
  float fStack_8c;
  undefined1 auStack_88 [20];
  undefined1 uStack_74;
  int iStack_70;
  int iStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined1 auStack_38 [24];
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  puVar1 = *(undefined4 **)((int)this + 8);
  *(char *)((int)this + 0x1c) = param_3;
  *(undefined1 *)((int)this + 0x1f) = 0;
  if (puVar1 != (undefined4 *)0x0) {
    piVar4 = puVar1 + 1;
    LOCK();
    iVar5 = *piVar4;
    *piVar4 = *piVar4 + -1;
    UNLOCK();
    if (iVar5 == 1) {
      LOCK();
      *piVar4 = 1;
      UNLOCK();
      if (puVar1 != (undefined4 *)0x0) {
        (**(code **)*puVar1)(1);
      }
    }
    *(undefined4 *)((int)this + 8) = 0;
  }
  bVar3 = false;
  local_9c = param_1;
  piVar4 = (int *)FUN_004afe80();
  if (param_3 != '\0') {
    uStack_48 = 1;
    uStack_44 = 0;
    uStack_40 = 0x9063660d;
    uStack_3c = 0;
    piVar4 = (int *)(**(code **)(*piVar4 + 0x44))(&uStack_48);
    if ((piVar4 != (int *)0x0) &&
       (local_9c = piVar4, iVar5 = (**(code **)(*piVar4 + 0xc))(), iVar5 == 0x3db0260)) {
      FUN_007d7920(auStack_38,param_1,param_2);
      cVar2 = FUN_007d9410(auStack_38,0x9063660d);
      if (cVar2 != '\0') {
        auStack_90[0] = 0xffff;
        auStack_90[1] = 0;
        FUN_0056d0e0(auStack_38,auStack_90);
        ResourceStreamContext_Close(auStack_38);
        if (auStack_90[0] < 0xb) {
          bVar3 = true;
        }
      }
      StreamReader_ReleaseAuxiliary(auStack_38);
    }
  }
  cVar2 = FUN_00c2c770(this,local_9c,param_2,param_3,auStack_98);
  uVar9 = extraout_var;
  if (cVar2 == '\0') goto LAB_00c2da3f;
  FUN_007d7920(auStack_88,param_1,param_2);
  if (param_3 == '\0') {
    bVar3 = TerrainData_LoadHeightMap(this,param_1,param_2,false);
    if (bVar3) {
      bVar3 = TerrainData_LoadBlendMap(this,param_1,param_2);
      if (!bVar3) {
        StreamReader_AccumulateStatus(auStack_88,0);
        uStack_74 = 0;
        StreamReader_ReleaseAuxiliary(auStack_88);
        return extraout_EAX_01 & 0xffffff00;
      }
      goto LAB_00c2da75;
    }
  }
  else {
    piVar6 = (int *)FUN_004afe80();
    piVar4 = *(int **)((int)this + 0xac);
    piStack_94 = *(int **)((int)this + 0xb0);
    if (piVar4 != piStack_94) {
      do {
        iStack_70 = piVar4[1] * 0x10000 + *piVar4;
        iStack_6c = iStack_70 >> 0x1f;
        uStack_68 = 0x33b2b66;
        uStack_64 = 1;
        local_9c = (int *)0x0;
        cVar2 = (**(code **)(*piVar6 + 0x18))(&iStack_70,&local_9c,0,0,0,0);
        if (cVar2 == '\0') {
          if (local_9c != (int *)0x0) {
            (**(code **)(*local_9c + 4))();
          }
          goto LAB_00c2da3a;
        }
        if (local_9c != (int *)0x0) {
          piVar7 = (int *)(**(code **)(*local_9c + 0xc))(0x33b2b66);
          if (piVar7 != (int *)0x0) {
            fStack_8c = (float)*(int *)((int)this + 0x34);
            fStack_54 = DAT_010f4ccc;
            fStack_58 = DAT_010f4ccc;
            if (*(int *)((int)this + 0x34) < 0) {
              fStack_8c = fStack_8c + FLOAT_00f99948;
            }
            fStack_8c = fStack_8c * _DAT_00f9b5b4;
            fStack_60 = DAT_010f4ccc;
            fStack_20 = DAT_010f4ccc;
            fStack_18 = DAT_010f4ccc;
            fStack_14 = DAT_010f4ccc;
            fStack_5c = fStack_8c;
            fStack_1c = fStack_8c;
            FUN_00c29350(this,*piVar4,piVar4[1],piVar7,(int *)0x0,&fStack_20);
          }
          if (local_9c != (int *)0x0) {
            (**(code **)(*local_9c + 4))();
          }
        }
        piVar4 = piVar4 + 0x1c;
      } while (piVar4 != piStack_94);
    }
    if (auStack_98[0] < 0xb) {
      bVar3 = TerrainData_LoadBlendMap(this,param_1,param_2);
      if (!bVar3) {
LAB_00c2da07:
        StreamReader_AccumulateStatus(auStack_88,0);
        uStack_74 = 0;
        StreamReader_ReleaseAuxiliary(auStack_88);
        return extraout_EAX & 0xffffff00;
      }
    }
    else {
      cVar2 = FUN_00c2afd0(this,param_1,param_2);
      if (cVar2 == '\0') goto LAB_00c2da3a;
      if ((bVar3) && (bVar3 = TerrainData_LoadBlendMap(this,param_1,param_2), !bVar3))
      goto LAB_00c2da07;
      *(undefined1 *)((int)this + 0x1f) = 1;
    }
LAB_00c2da75:
    uVar8 = FUN_00c28740(this,auStack_88);
    if ((char)uVar8 != '\0') {
      StreamReader_ReleaseAuxiliary(auStack_88);
      return CONCAT31((int3)((uint)extraout_EAX_00 >> 8),1);
    }
  }
LAB_00c2da3a:
  StreamReader_ReleaseAuxiliary(auStack_88);
  uVar9 = extraout_var_00;
LAB_00c2da3f:
  return (uint)uVar9 << 8;
}

