/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 placement/source boundary. ECXtool, two physical position/output words, RET8.
   Actual wall/slot/object constrained branches precede ordinarygrid. Selected normal lattice
   step0.5 or1, freepathcopiespoint; AFC020 is scalargridchild. Source field+1DB owns whole-step
   choice; upstream catalog flag producer is separate. */

void __thiscall HandTool_ResolvePlacementPoint(void *this,float *param_1,float *param_2)

{
  void *pvVar1;
  float *pfVar2;
  int iVar3;
  undefined4 uVar4;
  void *pvVar5;
  uint uVar6;
  int iVar7;
  float *pfVar8;
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  float local_8 [2];
  
  pfVar2 = param_1;
  local_18 = *param_1;
  local_10 = param_1[2];
  local_14 = param_1[1];
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar3 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar3 = *(int *)((int)this + 0x60);
  }
  if (iVar3 == 0) {
    iVar3 = 0;
  }
  else {
    iVar3 = *(int *)(iVar3 + 0x58);
  }
  uVar4 = FUN_00b04b90(iVar3);
  pfVar8 = param_2;
  if ((char)uVar4 != '\0') {
    if (*(char *)((int)this + 0x2f7) == '\0') {
      iVar3 = *(int *)((int)this + 0x5c);
    }
    else {
      iVar3 = *(int *)((int)this + 0x60);
    }
    if (((iVar3 != 0) && (pvVar1 = *(void **)(iVar3 + 0x58), pvVar1 != (void *)0x0)) &&
       (pvVar5 = Object_GetComponentByMask(pvVar1,DAT_011edf08), pfVar8 = param_2,
       pvVar5 != (void *)0x0)) {
      param_1 = (float *)PlacementLocation_ReadYawWithRefresh(pvVar5);
      pfVar8 = param_2;
      uVar4 = FUN_00b04bd0((int)pvVar1,*(void **)((int)this + 0xc),pfVar2,param_2,(float *)&param_1)
      ;
      if ((char)uVar4 != '\0') {
        uVar4 = FUN_00cfa680((int)this);
        if ((char)uVar4 == '\0') {
          (**(code **)(*(int *)this + 0x80))(param_1,1);
          return;
        }
        local_18 = *pfVar8;
        local_14 = pfVar8[1];
        local_10 = pfVar8[2];
      }
    }
  }
  if ((*(void **)((int)this + 0x1b8) != (void *)0x0) &&
     (uVar6 = Catalog_TestPlacementMask403F(*(void **)((int)this + 0x1b8)), (char)uVar6 != '\0')) {
    if ((*(char *)((int)this + 0x1db) == '\0') &&
       ((iVar3 = *(int *)((int)this + 0x1b8), iVar3 != 0 &&
        (iVar7 = *(int *)(iVar3 + 0xd8) - *(int *)(iVar3 + 0xd4), iVar3 = iVar7 >> 0x1f,
        iVar7 / 0x28 + iVar3 == iVar3)))) {
      PlacementGrid_SnapPosition(pfVar2,0.5,pfVar8);
      return;
    }
    if (*(char *)((int)this + 0x2f7) == '\0') {
      iVar3 = *(int *)((int)this + 0x5c);
    }
    else {
      iVar3 = *(int *)((int)this + 0x60);
    }
    if (((iVar3 != 0) &&
        (pvVar1 = *(void **)(iVar3 + 0x58), pfVar8 = param_2, pvVar1 != (void *)0x0)) &&
       (pvVar5 = Object_GetComponentByMask(pvVar1,DAT_011edf08), pfVar8 = param_2,
       pvVar5 != (void *)0x0)) {
      param_1 = (float *)PlacementLocation_ReadYawWithRefresh(pvVar5);
      local_c = -1.0;
      local_8[0] = -1.0;
      local_8[1] = 0.0;
      FUN_00c894e0(pvVar5,&local_c,local_8,local_8 + 1);
      uVar4 = FUN_00a70020(&local_c,pfVar2);
      pfVar8 = param_2;
      if ((char)uVar4 != '\0') {
        FUN_00b059c0(pvVar1,*(undefined4 *)((int)this + 0xc),pfVar2,&local_18,(float)param_1);
        pfVar8 = param_2;
      }
    }
    FUN_00af7d50(&local_18,&local_18,pfVar8);
    return;
  }
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar3 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar3 = *(int *)((int)this + 0x60);
  }
  if (iVar3 != 0) {
    if (*(char *)((int)this + 0x2f7) == '\0') {
      iVar3 = *(int *)((int)this + 0x5c);
    }
    else {
      iVar3 = *(int *)((int)this + 0x60);
    }
    if (*(int *)(iVar3 + 0xe0) != 0) goto LAB_00d00182;
  }
  if (*(char *)((int)this + 0x89) != '\0') {
    if (*(char *)((int)this + 0x1db) == '\0') {
      param_2 = (float *)0x3f000000;
    }
    else {
      param_2 = (float *)1.0;
    }
    PlacementGrid_SnapPosition(pfVar2,(float)param_2,pfVar8);
    return;
  }
LAB_00d00182:
  *pfVar8 = *pfVar2;
  pfVar8[1] = pfVar2[1];
  pfVar8[2] = pfVar2[2];
  return;
}

