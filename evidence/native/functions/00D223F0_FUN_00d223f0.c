/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction qualification: ECX undoable plus eight physical stack words/RET20hex. Seeded float third argument is actually consumed by low-byte test atD2262A; raw flags pointer is input word5; last physical input is signed propagation cutoff, not a height. Lot+180 maxlevel is MOVed as integer, despite misleading generated float temporary/casts. Captures every upper prior height before initial D22100/D221D0 writes. Upper levels <=cutoff use prior height plus initial delta; higher levels use AB02D0 stride plus preceding resulting height. Level1 may raise preceding ground to water height first, and special lot predicates408/40C or byte4B0 select further sea-height paths. No original public numerical enum/type for those lot fields is inferred. Rule bit3 is set/cleared by low-byte mode, bit2 added, CB0710 errors/context null. Break preserves earlier writes. Native journal/callback/allocator destruction and current host partial propagation are not equivalent. */

void __thiscall
FUN_00d223f0(void *this,int *param_1,float param_2,float param_3,float param_4,uint *param_5,
            undefined4 param_6,undefined4 param_7,int param_8)

{
  int iVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined4 *allocation;
  int *piVar5;
  char cVar6;
  undefined4 uVar7;
  int *piVar8;
  float *pfVar9;
  uint uVar10;
  float10 fVar11;
  float fVar12;
  undefined4 local_30;
  uint local_2c;
  float local_28;
  float local_24;
  float local_20;
  undefined1 local_1c [4];
  undefined4 *****local_18;
  undefined4 *****local_14;
  undefined4 *local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  piVar5 = param_1;
  if ((*(int *)((int)this + 0x50) != 0) &&
     ((iVar1 = *(int *)(*(int *)((int)this + 0x50) + 0x290), iVar2 = *(int *)(iVar1 + 0x24),
      *(float *)(*(int *)(iVar2 + 0x10) +
                ((((int)*(char *)((int)param_1 + 2) - *(int *)(iVar1 + 0x10)) * *(int *)(iVar2 + 4)
                 + (int)(char)*param_1) * *(int *)(iVar2 + 8) + (int)*(char *)((int)param_1 + 1)) *
                4) != param_2 || ((*param_5 >> 0x12 & 1) == 0)))) {
    local_2c = *param_5;
    fVar11 = FUN_00ab02d0();
    piVar8 = param_1;
    local_28 = (float)fVar11;
    iVar1 = *(int *)((int)this + 0x50);
    local_24 = *(float *)(iVar1 + 0x180);
    param_1 = (int *)CONCAT31(param_1._1_3_,(char)*piVar5);
    param_5 = (uint *)CONCAT31(param_5._1_3_,*(char *)((int)piVar5 + 1));
    iVar2 = *(int *)(*(int *)(iVar1 + 0x290) + 0x24);
    local_20 = param_2 - *(float *)(*(int *)(iVar2 + 0x10) +
                                   ((((int)*(char *)((int)piVar5 + 2) -
                                     *(int *)(*(int *)(iVar1 + 0x290) + 0x10)) * *(int *)(iVar2 + 4)
                                    + (int)(char)*piVar5) * *(int *)(iVar2 + 8) +
                                   (int)*(char *)((int)piVar5 + 1)) * 4);
    if ((*(char *)((int)piVar5 + 2) == '\0') && (*(int *)(iVar1 + 0x17c) < 0)) {
      param_1._3_1_ = SUB41(piVar8,3);
      param_1 = (int *)CONCAT22(CONCAT11(param_1._3_1_,*(char *)((int)piVar5 + 2) + -1),
                                (short)*piVar5);
      uVar7 = FUN_00b0b810(*(void **)((int)this + 0x50),(char *)&param_1,(undefined4 *)0x0);
      if ((char)uVar7 == '\0') {
        uVar7 = FUN_00aff850(*(void **)((int)this + 0x50),(undefined2 *)&param_1);
        if ((char)uVar7 == '\0') {
          fVar12 = local_28;
        }
        else {
          fVar12 = 1.0;
        }
        FUN_00d22100(this,(int *)&param_1,param_2 - fVar12,0.0);
      }
    }
    fVar12 = local_24;
    local_10 = (undefined4 *)0x0;
    local_c = 0;
    local_8 = 0;
    local_30._0_1_ = (char)*piVar5;
    local_30._2_1_ = *(char *)((int)piVar5 + 2);
    local_18 = &local_18;
    local_30._1_1_ = *(char *)((int)piVar5 + 1);
    local_4 = "UserTool/UndoableFloorElevation";
    local_14 = local_18;
    piVar8 = param_1;
    while( true ) {
      local_30._2_1_ = local_30._2_1_ + '\x01';
      param_1 = (int *)(int)local_30._2_1_;
      if ((int)fVar12 < (int)param_1) break;
      iVar1 = *(int *)(*(int *)((int)this + 0x50) + 0x290);
      iVar2 = *(int *)(iVar1 + 0x24);
      param_5 = *(uint **)(*(int *)(iVar2 + 0x10) +
                          ((((int)param_1 - *(int *)(iVar1 + 0x10)) * *(int *)(iVar2 + 4) +
                           (int)(char)local_30) * *(int *)(iVar2 + 8) + (int)local_30._1_1_) * 4);
      piVar8 = FUN_00d21e40(local_1c,(int *)&param_1);
      *piVar8 = (int)param_5;
      piVar8 = param_1;
    }
    param_1 = piVar8;
    FUN_00d22100(this,piVar5,param_2,param_4);
    FUN_00d221d0(this,(char *)piVar5,param_2);
    if (param_3._0_1_ == '\0') {
      uVar10 = local_2c | 8;
    }
    else {
      uVar10 = local_2c & 0xfffffff7;
    }
    local_30._0_1_ = (char)*piVar5;
    local_30._1_1_ = *(undefined1 *)((int)piVar5 + 1);
    local_30._2_1_ = *(char *)((int)piVar5 + 2);
    while (local_30._2_1_ = local_30._2_1_ + '\x01', (int)local_30._2_1_ <= (int)fVar12) {
      if ((local_30._2_1_ == '\x01') &&
         (pvVar3 = *(void **)(*(int *)((int)this + 0x50) + 0x294), pvVar3 != (void *)0x0)) {
        fVar11 = LotWater_GetVertexHeight(pvVar3,(int)(char)*piVar5,(int)*(char *)((int)piVar5 + 1))
        ;
        param_1 = (int *)(float)fVar11;
        if ((float10)param_2 < fVar11) {
          param_2 = (float)param_1;
        }
      }
      if (param_8 < local_30._2_1_) {
        fVar11 = FUN_00ab02d0();
        param_3 = (float)(fVar11 + (float10)param_2);
      }
      else {
        param_1 = (int *)(int)local_30._2_1_;
        pfVar9 = (float *)FUN_00d21e40(local_1c,(int *)&param_1);
        param_3 = *pfVar9 + local_20;
      }
      if (local_30._2_1_ == '\x01') {
        piVar8 = *(int **)((int)this + 0x50);
        if ((piVar8[0x102] == 1) && (piVar8[0x103] == 0x50)) {
          fVar11 = Lot_GetLocalSeaLevel(piVar8);
          param_1 = (int *)(float)fVar11;
          local_24 = (float)fVar11;
          param_4 = param_2 + 0.1;
          param_5 = (uint *)(param_4 - (float)param_1);
          param_3 = (float)(~((int)param_5 >> 0x1f) & (uint)param_4 |
                           (uint)local_24 & (int)param_5 >> 0x1f);
          goto LAB_00d22786;
        }
        if ((char)piVar8[300] != '\0') {
          fVar11 = Lot_GetLocalSeaLevel(piVar8);
          param_1 = (int *)(float)(fVar11 + (float10)0.75);
          if ((float10)param_3 < fVar11 + (float10)0.75) {
            param_3 = (float)param_1;
          }
          goto LAB_00d22786;
        }
      }
      else {
LAB_00d22786:
        if (local_30._2_1_ == '\0') {
          param_1 = (int *)0x0;
          pfVar9 = (float *)FUN_00d21e40(local_1c,(int *)&param_1);
          if (param_3 < *pfVar9 || param_3 == *pfVar9) break;
        }
      }
      cVar6 = FUN_00cb0710(*(void **)((int)this + 0x50),(char *)&local_30,param_3,uVar10 | 4,
                           (void *)0x0,0,0);
      if (cVar6 == '\0') break;
      FUN_00d22100(this,&local_30,param_3,0.0);
      FUN_00d221d0(this,(char *)&local_30,param_3);
      param_2 = param_3;
    }
    FUN_00ab0940(*(void **)((int)this + 0x50),'\x01',-2 < *(char *)((int)piVar5 + 2));
    allocation = local_10;
    while (allocation != (undefined4 *)0x0) {
      FUN_008b19b0((undefined4 *)*allocation);
      puVar4 = (undefined4 *)allocation[1];
      Memory_FreeIfNonNull(allocation);
      allocation = puVar4;
    }
  }
  return;
}
