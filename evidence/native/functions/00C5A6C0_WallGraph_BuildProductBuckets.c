/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: Build seven buckets; both insertion lanes use resolved product, field+0x90
   mask0x800 and low-byte C5B6F0 or C5B830 before C4AEE0/C44A10. Stored ranges are C5A6C0..C5A96D
   and C5A970..C5AA7B; intervening8BFF remains outside body. Complete startup caller and serialized
   product-domain join remain unproved. Descriptive analyst role, not a recovered original symbol.
    */

void __fastcall WallGraph_BuildProductBuckets(void *param_1)

{
  int iVar1;
  void *this;
  void *pvVar2;
  uint *puVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  int iVar6;
  int iVar7;
  int *piVar8;
  uint local_850;
  int local_84c;
  undefined4 local_848;
  uint local_844;
  uint local_840;
  uint local_83c;
  uint local_838;
  uint *local_834;
  uint local_830;
  uint local_82c [4];
  int local_81c [518];
  undefined1 local_4 [4];
  
  iVar7 = *(int *)((int)param_1 + 4);
  iVar1 = *(int *)(iVar7 + 0x18);
  local_834 = *(uint **)(iVar7 + 0x6c);
  local_830 = *(uint *)(iVar7 + 0x70);
  *(undefined4 *)((int)param_1 + 0x13c) = *(undefined4 *)(iVar7 + 0x68);
  puVar5 = (undefined4 *)((int)param_1 + 0x270);
  iVar7 = 7;
  do {
    iVar6 = iVar7;
    pvVar2 = (void *)FUN_004e4500(100,"LotRenderer/WallRenderManager/WallGraph",0);
    if (pvVar2 == (void *)0x0) {
      pvVar2 = (void *)0x0;
    }
    else {
      pvVar2 = (void *)FUN_00c40900(pvVar2,(int)param_1 + 0x250,(int)param_1 + 0x260);
    }
    FUN_00c41bd0(pvVar2,iVar1);
    FUN_00c44930((uint)pvVar2);
    *puVar5 = pvVar2;
    puVar5 = puVar5 + 1;
    iVar7 = iVar6 + -1;
  } while (iVar7 != 0);
  piVar8 = local_81c;
  iVar6 = iVar6 + 5;
  do {
    FUN_00c54a90(piVar8);
    piVar8 = piVar8 + 0x4a;
    iVar6 = iVar6 + -1;
  } while (-1 < iVar6);
  local_4[0] = 0;
  FUN_00c5a5f0((void *)((int)param_1 + 0x1bc),local_830,local_81c);
  piVar8 = (int *)local_4;
  iVar7 = 6;
  do {
    piVar8 = piVar8 + -0x4a;
    FUN_00c53760(piVar8);
    puVar3 = local_834;
    iVar7 = iVar7 + -1;
  } while (-1 < iVar7);
  for (iVar7 = *(int *)((int)param_1 + 0x13c); iVar7 <= (int)puVar3; iVar7 = iVar7 + 1) {
    FUN_00c4d540(param_1,iVar7);
  }
  FUN_00c4c0a0((int)param_1);
  this = *(void **)(iVar1 + 0x298);
  iVar7 = FUN_00b47e40((int)this);
  local_834 = (uint *)iVar7;
  local_830 = FUN_00b48110((int)this);
  pvVar2 = (void *)((int)param_1 + 0x140);
  FUN_00c4f0a0(pvVar2,local_830 + iVar7);
  local_84c = -0xff0001;
  local_848 = CONCAT22(local_848._2_2_,0xff);
  local_844 = 0;
  local_840 = 0;
  local_83c = 0;
  local_838 = 0;
  local_850 = 0;
  if (0 < iVar7) {
    do {
      FUN_00b47e60(this,local_850,(undefined1 *)&local_84c);
      puVar3 = FUN_00b47df0(this,(char *)&local_84c,'\0');
      puVar3 = (uint *)FUN_00c4ae30(local_82c,puVar3);
      local_844 = *puVar3;
      local_840 = puVar3[1];
      local_83c = puVar3[2];
      local_838 = puVar3[3];
      iVar7 = WallProduct_LookupCatalogEntry(&local_844);
      if (((iVar7 != 0) && ((*(uint *)(iVar7 + 0x90) >> 0xb & 1) != 0)) &&
         ((uVar4 = WallProduct_IsZeroField8COrAllowedType(&local_844), (char)uVar4 != '\0' ||
          (uVar4 = WallProduct_HasNonzeroFieldE0(&local_844), (char)uVar4 != '\0')))) {
        iVar7 = FUN_00c4aee0(iVar7);
        FUN_00c44a10(*(void **)((int)param_1 + iVar7 * 4 + 0x270),&local_84c);
        piVar8 = *(int **)((int)param_1 + 0x144);
        if (piVar8 < *(int **)((int)param_1 + 0x148)) {
          *(int **)((int)param_1 + 0x144) = piVar8 + 6;
          if (piVar8 != (int *)0x0) {
            *piVar8 = local_84c;
            piVar8[1] = local_848;
            piVar8[2] = local_844;
            piVar8[3] = local_840;
            piVar8[4] = local_83c;
            piVar8[5] = local_838;
          }
        }
        else {
          FUN_00507490(pvVar2,piVar8,&local_84c);
        }
      }
      local_850 = local_850 + 1;
    } while ((int)local_850 < (int)local_834);
  }
  local_834 = (uint *)FUN_00c5bb10();
  local_850 = 0;
  if ((int)local_830 < 1) {
    *(undefined4 *)((int)param_1 + 0x150) = *(undefined4 *)((int)param_1 + 0x13c);
    return;
  }
  do {
    puVar3 = local_834;
    FUN_00b48130(this,local_850,(undefined1 *)&local_84c);
    local_844 = *puVar3;
    local_840 = puVar3[1];
    local_83c = puVar3[2];
    local_838 = puVar3[3];
    iVar7 = WallProduct_LookupCatalogEntry(&local_844);
    if (((iVar7 != 0) && ((*(uint *)(iVar7 + 0x90) >> 0xb & 1) != 0)) &&
       ((uVar4 = WallProduct_IsZeroField8COrAllowedType(&local_844), (char)uVar4 != '\0' ||
        (uVar4 = WallProduct_HasNonzeroFieldE0(&local_844), (char)uVar4 != '\0')))) {
      iVar7 = FUN_00c4aee0(iVar7);
      FUN_00c44a10(*(void **)((int)param_1 + iVar7 * 4 + 0x270),&local_84c);
      piVar8 = *(int **)((int)param_1 + 0x144);
      if (piVar8 < *(int **)((int)param_1 + 0x148)) {
        *(int **)((int)param_1 + 0x144) = piVar8 + 6;
        if (piVar8 != (int *)0x0) {
          *piVar8 = local_84c;
          piVar8[1] = local_848;
          piVar8[2] = local_844;
          piVar8[3] = local_840;
          piVar8[4] = local_83c;
          piVar8[5] = local_838;
        }
      }
      else {
        FUN_00507490(pvVar2,piVar8,&local_84c);
      }
    }
    local_850 = local_850 + 1;
  } while ((int)local_850 < (int)local_830);
  *(undefined4 *)((int)param_1 + 0x150) = *(undefined4 *)((int)param_1 + 0x13c);
  return;
}

