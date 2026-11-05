/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Physical ECX tool; plain RET and low-byte status consumed. Complete placement work and callbacks
   precede this body's nonnull-catalog and tool70==0 sound gate. Calls C97A00 first for door
   key011EBFD8, otherwise A8B160 for garden key011EC008 or ordinary key011EBF70. Tool70 broader
   state meaning and transitive placement/callback internals are not inferred. */

uint __fastcall UserToolObject_CommitPlacementWithSound(int *param_1)

{
  float fVar1;
  bool bVar2;
  char cVar3;
  byte bVar4;
  undefined3 extraout_var;
  uint uVar5;
  void *this;
  int iVar6;
  undefined4 uVar7;
  undefined4 *puVar8;
  int *this_00;
  void *pvVar9;
  void *pvVar10;
  void *pvVar11;
  float10 fVar12;
  double dVar13;
  float *pfVar14;
  longlong lVar15;
  int *piStack_88;
  float local_84;
  float local_80;
  int local_7c;
  float fStack_78;
  undefined8 uStack_74;
  int iStack_6c;
  int *piStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  void *pvStack_44;
  undefined1 auStack_40 [32];
  undefined1 auStack_20 [32];
  
  if (*(char *)((int)param_1 + 0x2f7) == '\0') {
    uVar5 = param_1[0x17];
  }
  else {
    uVar5 = param_1[0x18];
  }
  if (uVar5 == 0) {
    pvVar11 = (void *)0x0;
  }
  else {
    pvVar11 = *(void **)(uVar5 + 0x58);
  }
  if (*(char *)((int)param_1 + 0x101) == '\0') {
    FUN_00cfe3b0(pvVar11,param_1 + 0x9c);
  }
  else {
    if ((pvVar11 == (void *)0x0) || ((char)param_1[0x40] != '\0')) goto LAB_00d0475c;
    this = Object_GetComponentByMask(pvVar11,DAT_011edf08);
    uVar5 = 0;
    if (this == (void *)0x0) goto LAB_00d0475c;
    local_84 = -1.0;
    local_80 = -1.0;
    local_7c = 0;
    uVar5 = ObjectLocation_CopyXZLevel(this,&local_84,&local_80,&local_7c);
    if (local_7c == 0x7fffffff) goto LAB_00d0475c;
    iVar6 = FUN_00b01f30(pvVar11,(undefined4 *)0x0);
    if ((iVar6 != 0) ||
       (cVar3 = (**(code **)(*param_1 + 0x7c))(param_1[3],&local_84), cVar3 != '\0')) {
      thunk_FUN_00792320();
      fVar12 = (float10)(**(code **)(*param_1 + 0x94))();
      piStack_88 = (int *)(CONCAT31(piStack_88._1_3_,(char)(*(uint *)((int)this + 0x2c) >> 5)) &
                          0xffffff01);
      bVar4 = FUN_00ccba00(pvVar11,DAT_011ee7b8,*(undefined1 *)((int)param_1 + 0x1de),
                           (char)piStack_88,(void *)0x0);
      if (bVar4 != 0) {
        if ((char)param_1[7] == '\0') {
          uVar7 = FUN_00cd2e10((float)fVar12);
          if ((char)uVar7 == '\0') {
            uVar5 = (**(code **)(*param_1 + 0x50))(pvVar11,1);
            return uVar5 & 0xffffff00;
          }
          if ((char)param_1[7] == '\0') {
            FUN_00cd3670(param_1,(float)fVar12,&local_84,0.0,'\0','\0');
          }
        }
        pvStack_44 = Object_FindCatalogInfo(pvVar11);
        if (((pvStack_44 != (void *)0x0) && (*(int *)((int)pvStack_44 + 0xa4) != 0)) &&
           (uVar7 = FUN_00d02000(param_1[3],pvVar11), (char)uVar7 != '\0')) {
          puVar8 = (undefined4 *)
                   FUN_004e4500(0x70,"UserTool/UserToolObject/UserToolUndoableAutoRoof",0);
          if (puVar8 == (undefined4 *)0x0) {
            this_00 = (int *)0x0;
          }
          else {
            this_00 = FUN_00d1b2e0(puVar8);
          }
          if (this_00 != (int *)0x0) {
            this_00[1] = this_00[1] + 1;
          }
          piStack_88 = this_00;
          (**(code **)(*this_00 + 4))();
          fStack_64 = 0.0;
          fStack_60 = 0.0;
          fStack_5c = 0.0;
          fStack_58 = 0.0;
          cVar3 = FUN_00d1b3a0(this_00,param_1[3],(int *)&fStack_64);
          if (cVar3 == '\0') {
            (**(code **)(*this_00 + 8))();
          }
          else {
            pvVar9 = (void *)FUN_00cfb100((int)param_1);
            if (pvVar9 != (void *)0x0) {
              FUN_00d1b200(pvVar9,this_00);
            }
          }
          FUN_00565d20((int *)&piStack_88);
        }
        pvVar9 = (void *)param_1[0x98];
        pfVar14 = &local_84;
        pvVar10 = (void *)FUN_00cfb880((int)param_1);
        FUN_00ccc8d0((void *)param_1[3],pvVar10,pfVar14,pvVar9);
        iVar6 = FUN_00cfb880((int)param_1);
        uVar5 = ObjectCatalog_HasBuildableShellFlag(iVar6);
        if ((((char)uVar5 != '\0') && (param_1[3] != 0)) &&
           (pvVar9 = *(void **)(param_1[3] + 0x290), pvVar9 != (void *)0x0)) {
          FUN_00a91ae0(pvVar9);
        }
        iVar6 = param_1[0x6e];
        if (((iVar6 != 0) && ((*(uint *)(iVar6 + 0xd0) & 0x20000) != 0)) &&
           ((*(uint *)(iVar6 + 0x98) >> 0x19 & 1) != 0)) {
          lVar15 = ZEXT48(&fStack_64) << 0x20;
          pfVar14 = &local_84;
          uVar5 = 5;
          pvVar9 = (void *)FUN_00cfb880((int)param_1);
          uVar7 = FUN_00ad0fc0(param_1[3],pvVar9,uVar5,pfVar14,(int)lVar15,
                               (float *)((ulonglong)lVar15 >> 0x20));
          if ((char)uVar7 != '\0') {
            fVar12 = FUN_00406990(fStack_58);
            piStack_88 = (int *)(int)ROUND((float)fVar12);
            fVar12 = FUN_00406990(fStack_5c);
            fStack_78 = (float)fVar12;
            fVar1 = ROUND(fStack_78);
            dVar13 = floor((double)fStack_60);
            fStack_78 = (float)(int)ROUND((float)dVar13);
            dVar13 = floor((double)fStack_64);
            uStack_74._0_4_ = (int)ROUND((float)dVar13);
            uStack_74._4_4_ = (int)fStack_78;
            piStack_68 = piStack_88;
            iStack_6c = (int)fVar1;
            FUN_00cfbe80(param_1,(void *)param_1[3],(undefined1 *)&uStack_74,&local_84,
                         (char)local_7c + '\x01','\0');
          }
        }
        FUN_00d00700((int)param_1);
        (**(code **)(*param_1 + 0x88))();
        if ((*(uint *)((int)pvVar11 + 0x2c) & DAT_011ea0f8) != 0) {
          uStack_74._0_4_ = *(int *)((int)pvVar11 + 8);
          uStack_74._4_4_ = *(undefined4 *)((int)pvVar11 + 0xc);
          Variant_ConstructUInt64(auStack_40,&uStack_74);
          uStack_74._0_4_ = *(int *)((int)this + 8);
          uStack_74._4_4_ = *(int *)((int)this + 0xc);
          Variant_ConstructUInt64(auStack_20,&uStack_74);
          World_DispatchRegisteredEventCallback(&fStack_64,0x12,auStack_40,2);
          FUN_004f5820(&fStack_64);
          FUN_004466e0(auStack_40,0x20,2,FUN_004f5820);
        }
        if ((char)param_1[0x74] != '\0') {
          *(undefined1 *)((int)param_1 + 0x1d1) = 0;
        }
        uVar7 = FUN_00cfa640((int)param_1);
        if (param_1[0xdc] != 0) {
          uVar7 = FUN_00cdc4e0(param_1[0xdc]);
        }
        pvVar11 = pvStack_44;
        if ((pvStack_44 != (void *)0x0) && (param_1[0x1c] == 0)) {
          uVar5 = Catalog_TestIntersectionCategoryOrD0Bit4(pvStack_44);
          if ((char)uVar5 != '\0') {
            uVar7 = BuildBuy_PlayKeyedSound(DAT_011ebfd8);
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
          uVar7 = Catalog_TestGardenCategoryOrLowFunctionBit31((int)pvVar11);
          if ((char)uVar7 != '\0') {
            uVar7 = BuildBuy_PlayKeyedSound(DAT_011ec008);
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
          uVar7 = BuildBuy_PlayKeyedSound(DAT_011ebf70);
        }
        return CONCAT31((int3)((uint)uVar7 >> 8),1);
      }
    }
  }
  bVar2 = FUN_00ad6f10((int)(param_1 + 0x9c));
  uVar5 = CONCAT31(extraout_var,bVar2);
  if (bVar2) {
    uVar5 = FUN_00cd3890(param_1 + 0x9c,1,'\x01');
    *(undefined1 *)((int)param_1 + 0x1d1) = 1;
  }
LAB_00d0475c:
  return uVar5 & 0xffffff00;
}

