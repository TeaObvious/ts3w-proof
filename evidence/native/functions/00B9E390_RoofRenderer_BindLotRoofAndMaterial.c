/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 authored-lot representations comparison): Analyst physical roof renderer
   initialization, not collision-shape construction. ECX renderer plus lot-renderer pointer,
   roof-object pointer and model/shape argument, RET0C. Reject missing lot renderer or its+240 roof
   manager by clearing AL. Retain roof input via874FB0 into renderer+18; read signed roof+18 when
   nonnull, else zero, and store renderer+20. This exact producer supplies B9CEE0 level group. The
   rest establishes WorldToLotTrig/WorldToLotTransAndLotScale, AOMap and selected material with
   existing renderer/room/global gates, finally returns material acquisition low byte AL. Pseudocode
   float/int aliases and original child ABIs remain artifacts/bounded, not permission to infer all
   matrix bits or fallback materials. Necessary selected vtable word010712EC is original pointer
   B9E390. Collision managerB96E00 and collision-level lookupA8BC40 do not perform this renderer
   insertion. */

uint __thiscall
RoofRenderer_BindLotRoofAndMaterial(void *this,int param_1,undefined4 *param_2,undefined4 param_3)

{
  int *piVar1;
  int *piVar2;
  char cVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  bool bVar8;
  float10 fVar9;
  float local_68;
  int *local_64;
  float local_60;
  float fStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  float local_40;
  undefined4 local_3c;
  float local_38;
  undefined4 local_34;
  int local_30 [11];
  
  *(int *)((int)this + 0x10) = param_1;
  uVar7 = 0;
  if (param_1 == 0) goto LAB_00b9e60d;
  iVar4 = *(int *)(param_1 + 0x240);
  *(int *)((int)this + 0x14) = iVar4;
  uVar7 = 0;
  if (iVar4 == 0) goto LAB_00b9e60d;
  piVar1 = (int *)((int)this + 0x18);
  FUN_00874fb0(piVar1,param_2);
  *(undefined4 *)((int)this + 0x1c) = param_3;
  if (*piVar1 == 0) {
    iVar4 = 0;
  }
  else {
    iVar4 = *(int *)(*piVar1 + 0x18);
  }
  *(int *)((int)this + 0x20) = iVar4;
  iVar5 = FUN_00adad60(*(void **)(*(int *)((int)this + 0x10) + 0x23c),iVar4);
  iVar4 = *(int *)((int)this + 0x10);
  local_50 = *(undefined4 *)(iVar4 + 0x1d0);
  local_4c = *(undefined4 *)(iVar4 + 0x1b0);
  local_48 = *(undefined4 *)(iVar4 + 0x1b8);
  local_60 = *(float *)(iVar4 + 0x1e0);
  fStack_5c = *(float *)(iVar4 + 0x1e4);
  uStack_58 = *(undefined4 *)(iVar4 + 0x1e8);
  uStack_54 = *(undefined4 *)(iVar4 + 0x1ec);
  local_44 = 0;
  local_40 = local_60;
  local_3c = uStack_58;
  fVar9 = FUN_00688da0(iVar5 + 0x2e8);
  local_34 = 0;
  local_38 = (float)((float10)1 / fVar9);
  FUN_00799680(local_30);
  FUN_00799ad0(local_30,"WorldToLotTrig",&local_50,4);
  FUN_00799ad0(local_30,"WorldToLotTransAndLotScale",&local_40,4);
  if ((*(int *)((int)this + 0x10) != 0) && (*(char *)(*(int *)((int)this + 0x10) + 0x3d6) != '\0'))
  {
    local_68 = FLOAT_00f998f8;
    FUN_00799ad0(local_30,"isOnHouseboat",&local_68,1);
  }
  local_64 = (int *)HashLowercasedCStringFNV1("AOMap");
  *(undefined1 *)((int)this + 0x39) = 0;
  if (*(int *)((int)this + 0x1c) != 0) {
    if (*piVar1 != 0) {
      FUN_006a4e00(iVar5);
    }
    bVar8 = DAT_011ed530 != '\0';
    *(undefined1 *)((int)this + 0x38) = 0;
    if (bVar8) {
      local_68 = _DAT_0106e6ec;
      if (param_2 != (undefined4 *)0x0) {
        local_68 = _DAT_00f9b5b4;
      }
      uVar6 = FUN_00d6ac90(*(void **)(DAT_011edbc4 + 0x74),local_68);
      if ((char)uVar6 != '\0') {
        if ((*(void **)((int)this + 0x10) == (void *)0x0) || (param_2 == (undefined4 *)0x0)) {
LAB_00b9e5c0:
          cVar3 = '\0';
        }
        else {
          uStack_58 = param_2[6];
          local_60 = ((float)param_2[7] + (float)param_2[4]) * _DAT_00f9b5b4;
          fStack_5c = ((float)param_2[8] + (float)param_2[5]) * _DAT_00f9b5b4;
          cVar3 = FUN_00adf5a0(*(void **)((int)this + 0x10),&local_60);
          if (cVar3 == '\0') goto LAB_00b9e5c0;
          cVar3 = '\x01';
        }
        *(char *)((int)this + 0x39) = cVar3;
        if (cVar3 == '\0') {
          *(undefined1 *)((int)this + 0x38) = 1;
        }
      }
    }
  }
  FUN_00799ab0(local_30,local_64);
  FUN_005ca6a0(&local_64,"LotRenderer/BaseRoofRenderer/MaterialDef");
  piVar1 = local_64;
  if (local_64 != (int *)0x0) {
    FUN_006cb120(local_64,local_30);
    piVar2 = *(int **)((int)this + 0x34);
    if (piVar2 != (int *)0x0) {
      *(void **)((int)this + 0x34) = (void *)0x0;
      (**(code **)(*piVar2 + 4))();
    }
    uVar7 = FUN_006caf60();
    bVar8 = MaterialDef_AcquireMaterial(piVar1,(void **)((int)this + 0x34),uVar7);
    (**(code **)(*piVar1 + 4))();
    uVar6 = FUN_007996b0(local_30);
    return CONCAT31((int3)((uint)uVar6 >> 8),bVar8);
  }
  uVar7 = FUN_007996b0(local_30);
LAB_00b9e60d:
  return uVar7 & 0xffffff00;
}

