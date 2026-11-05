/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECX temporary renderer context plus2stackDWORDs/RET8. Clears
   prior contours; copies roomID; accepts source quarters for outside or native membership
   predicate, computes signed-byte bounds and connected contour groups. Nonempty enclosed fallback
   samples first packed point. Positive level samples L+1; negative L adds3; ground special room
   adds6 instead of L+1. Above/top fallback uses SSE ADDSS/SUBSS; sampled branch uses x87 FADD/FSUB
   then binary32store, so intermediate rounding differs. Calls A4D1B0 which may replace fallback
   height/level from first actual contour. No claim quarter triangles equal original outlines. */

void __thiscall CeilingRenderer_ComputeRoomInfo(void *this,undefined4 *param_1,undefined4 *param_2)

{
  short sVar1;
  undefined4 uVar2;
  void *this_00;
  void *pvVar3;
  int iVar4;
  void *pvVar5;
  char cVar6;
  bool bVar7;
  int iVar8;
  int *piVar9;
  char cVar10;
  int iVar11;
  undefined4 *puVar12;
  float10 fVar13;
  undefined4 local_78;
  undefined2 local_74;
  undefined1 local_72;
  undefined1 local_71;
  void *local_70;
  uint local_6c;
  int local_68;
  undefined4 *local_64;
  void *local_60;
  void *local_5c;
  undefined4 local_58;
  char *local_54;
  int local_50;
  int local_4c;
  int local_48;
  int local_44 [3];
  char *local_38;
  uint local_34;
  undefined4 local_30;
  undefined4 local_2c;
  char *local_28;
  uint local_24;
  undefined1 local_20 [4];
  int *local_1c;
  uint local_18;
  int local_14;
  float local_10;
  undefined4 local_c;
  undefined4 local_8;
  int *local_4;
  
  local_70 = this;
  FUN_00a480f0((int *)*param_2,(int *)param_2[1]);
  param_2[1] = *param_2;
  param_2[5] = *param_1;
  local_10 = 1.0;
  local_50 = 0x7fffffff;
  local_4c = 0x7fffffff;
  local_4 = local_44 + 1;
  local_44[1] = 0;
  local_44[2] = 0;
  local_38 = "LotRenderer/CeilingRenderManager/ComputeRoomInfo";
  local_34 = 0x7fd;
  local_c = 0x40000000;
  local_18 = 1;
  local_1c = &DAT_0114d900;
  local_14 = 0;
  local_8 = 0;
  local_78 = *(void **)(*(int *)((int)this + 4) + 0x23c);
  local_48 = -0x80000000;
  local_44[0] = -0x80000000;
  if (local_78 == (void *)0x0) {
    FUN_00a4b630(local_20);
    if ((local_34 & 0x80000000) != 0) goto LAB_00a4d95b;
  }
  else {
    sVar1 = *(short *)(param_2 + 5);
    puVar12 = (undefined4 *)param_1[1];
    local_74 = 0xffff;
    local_71 = 0xff;
    local_64 = (undefined4 *)param_1[2];
    local_72 = 0;
    if (puVar12 != local_64) {
      do {
        uVar2 = *puVar12;
        local_72 = (undefined1)((uint)uVar2 >> 0x18);
        local_71 = (undefined1)((uint)uVar2 >> 0x10);
        local_74 = (undefined2)uVar2;
        if ((sVar1 == 0) ||
           (cVar6 = FUN_00adb1b0(local_78,CONCAT13(local_71,CONCAT12(local_72,local_74))),
           cVar6 != '\0')) {
          local_6c = local_6c & 0xffffff00;
          FUN_00a4b120(local_20,&local_60,(char *)&local_74);
          iVar11 = (int)(char)local_74;
          local_68 = iVar11;
          piVar9 = &local_68;
          if (local_50 <= iVar11) {
            piVar9 = &local_50;
          }
          iVar8 = (int)local_74._1_1_;
          local_50 = *piVar9;
          local_68 = iVar8;
          piVar9 = &local_68;
          if (local_4c <= iVar8) {
            piVar9 = &local_4c;
          }
          local_68 = iVar11;
          local_4c = *piVar9;
          piVar9 = &local_68;
          if (iVar11 <= local_48) {
            piVar9 = &local_48;
          }
          local_68 = iVar8;
          local_48 = *piVar9;
          piVar9 = &local_68;
          if (iVar8 <= local_44[0]) {
            piVar9 = local_44;
          }
          local_44[0] = *piVar9;
        }
        puVar12 = puVar12 + 1;
        this = local_70;
      } while (puVar12 != local_64);
    }
    pvVar5 = local_78;
    if (((param_1[1] != param_1[2]) && (local_14 == 0)) && (*(short *)(param_2 + 5) != 0)) {
      this_00 = *(void **)((int)this + 4);
      pvVar3 = *(void **)((int)this_00 + 0x230);
      this = local_70;
      if (pvVar3 != (void *)0x0) {
        iVar11 = *(int *)param_1[1];
        cVar6 = (char)((uint)iVar11 >> 0x18);
        iVar8 = (int)cVar6;
        cVar10 = (char)((uint)iVar11 >> 8);
        local_78._0_2_ = (undefined2)iVar11;
        local_78._3_1_ = SUB41(pvVar5,3);
        local_78._0_3_ = CONCAT12(cVar6,(undefined2)local_78);
        if (iVar8 < *(int *)((int)this_00 + 0x6c)) {
          if (cVar6 == '\0' || iVar11 < 0) {
            if (cVar6 == '\0') {
              local_72 = 1;
              local_74 = (undefined2)local_78;
              bVar7 = LotRooms_TestHeightExtensionMembership(this_00,(uint)*(ushort *)(param_2 + 5))
              ;
              if (bVar7) {
                fVar13 = LotElevation_ReadSignedGridHeight(pvVar3,(char *)&local_78);
                fVar13 = fVar13 + (float10)6.0;
              }
              else {
                fVar13 = LotElevation_ReadSignedGridHeight(pvVar3,(char *)&local_74);
              }
            }
            else {
              fVar13 = LotElevation_ReadSignedGridHeight(pvVar3,(char *)&local_78);
              fVar13 = fVar13 + (float10)3.0;
            }
          }
          else {
            local_78 = (void *)CONCAT31(CONCAT21(CONCAT11(local_78._3_1_,cVar6 + '\x01'),cVar10),
                                        (char)iVar11);
            fVar13 = LotElevation_ReadSignedGridHeight(pvVar3,(char *)&local_78);
          }
          param_2[4] = (float)(fVar13 - (float10)0.15);
        }
        else {
          iVar4 = *(int *)((int)pvVar3 + 0x78);
          param_2[4] = (*(float *)(*(int *)(iVar4 + 0x10) +
                                  (((iVar8 - *(int *)((int)pvVar3 + 0xc)) * *(int *)(iVar4 + 4) +
                                   (int)(char)iVar11) * *(int *)(iVar4 + 8) + (int)cVar10) * 4) +
                       3.0) - 0.15;
        }
        param_2[6] = iVar8;
        this = local_70;
      }
    }
    local_30 = 0;
    local_2c = 0;
    local_28 = "LotRenderer/CeilingRenderManager/lotTilePartsAllocator";
    local_24 = 0x7fd;
    local_60 = (void *)0x0;
    local_5c = (void *)0x0;
    local_58 = 0;
    local_54 = "LotRenderer/CeilingRenderManager/LotTilePartSetArray";
    FUN_00a4c0c0(local_20,&local_60,&local_30);
    CeilingRenderer_BuildContoursAndHeight(this,&local_50,(int *)&local_60,param_2);
    pvVar5 = local_60;
    FUN_00a4b890(local_60,local_5c);
    if (pvVar5 != (void *)0x0) {
      Memory_FreeIfNonNull(pvVar5);
    }
    if (-1 < (int)local_24) {
      PayloadCleanup_NoOperation((byte *)(local_24 & 0x7fffffff));
    }
    FUN_007cd020(&local_30);
    FUN_00d731d0(local_20,(int)local_1c,local_18);
    local_14 = 0;
    if (1 < local_18) {
      if ((local_18 & 0x3fffffff) == 1) {
        *local_1c = *local_4;
        *local_4 = (int)local_1c;
      }
      else {
        FUN_004e5e70(DAT_011cc864,(int)local_1c);
      }
    }
    if ((int)local_34 < 0) goto LAB_00a4d95b;
  }
  PayloadCleanup_NoOperation((byte *)(local_34 & 0x7fffffff));
LAB_00a4d95b:
  FUN_007cd020(local_44 + 1);
  return;
}

