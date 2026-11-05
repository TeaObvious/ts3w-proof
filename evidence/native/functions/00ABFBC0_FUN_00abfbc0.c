/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



void __thiscall FUN_00abfbc0(void *this,int param_1)

{
  float *pfVar1;
  int iVar2;
  int iVar3;
  char *pcVar4;
  char *pcVar5;
  bool bVar6;
  void *pvVar7;
  undefined4 uVar8;
  int *piVar9;
  int *piVar10;
  int extraout_EDX;
  char *location;
  int *piVar11;
  int iVar12;
  uint uVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  char *local_94;
  char *local_90;
  undefined4 local_8c;
  char *local_88;
  int local_84;
  uint local_80;
  float local_7c;
  uint local_78;
  float local_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_94 = (char *)0x0;
  local_90 = (char *)0x0;
  local_8c = 0;
  local_88 = "Lot/DropLeavesFromTrees";
  local_78 = FUN_00c6e140((int)this);
  local_80 = 0;
  location = (char *)0x0;
  if (local_78 != 0) {
    do {
      uVar13 = local_80;
      pvVar7 = (void *)FUN_00c6e150(this,local_80);
      if (pvVar7 != (void *)0x0) {
        pvVar7 = Object_GetComponentByMask(pvVar7,DAT_011ea290);
        if (pvVar7 != (void *)0x0) {
          uVar8 = TreeComponent_HasLeafDropPoints((int)pvVar7);
          if ((char)uVar8 != '\0') {
            iVar2 = *(int *)((int)pvVar7 + 8);
            iVar3 = (*(int *)(iVar2 + 0xc) - *(int *)(iVar2 + 8)) / 0x50;
            if (iVar3 != 0) {
              local_70 = 0.25;
              fStack_6c = 0.25;
              fStack_68 = 0.25;
              fStack_64 = 0.25;
              local_50 = 0.5;
              fStack_4c = 0.5;
              fStack_48 = 0.5;
              fStack_44 = 0.5;
              iVar12 = 0;
              local_84 = iVar3;
              do {
                pfVar1 = (float *)(*(int *)(iVar2 + 8) + iVar12);
                local_60 = *pfVar1;
                fStack_5c = pfVar1[1];
                fStack_58 = pfVar1[2];
                fStack_54 = pfVar1[3];
                fVar14 = local_70;
                fVar15 = fStack_6c;
                fVar16 = fStack_68;
                fVar17 = fStack_64;
                fVar18 = local_50;
                fVar19 = fStack_4c;
                fVar20 = fStack_48;
                fVar21 = fStack_44;
                local_30 = local_60;
                fStack_2c = fStack_5c;
                fStack_28 = fStack_58;
                fStack_24 = fStack_54;
                Lot_WorldXZToLocalXZ(this,local_60,fStack_58,&local_7c,&local_74);
                local_20 = *(float *)(extraout_EDX + 0x30) - *(float *)(extraout_EDX + 0x20);
                fStack_1c = *(float *)(extraout_EDX + 0x34) - *(float *)(extraout_EDX + 0x24);
                fStack_18 = *(float *)(extraout_EDX + 0x38) - *(float *)(extraout_EDX + 0x28);
                fStack_14 = *(float *)(extraout_EDX + 0x3c) - *(float *)(extraout_EDX + 0x2c);
                local_40 = fVar14 * (fStack_18 + local_20) + fVar18;
                fStack_3c = fVar15 * (fStack_18 + local_20) + fVar19;
                fStack_38 = fVar16 * (fStack_18 + local_20) + fVar20;
                fStack_34 = fVar17 * (fStack_18 + local_20) + fVar21;
                FUN_00abfa90(this,&local_94,(int)local_7c,(int)local_74,(int)local_40);
                iVar12 = iVar12 + 0x50;
                local_84 = local_84 + -1;
              } while (local_84 != 0);
              local_84 = 0;
              uVar13 = local_80;
            }
          }
        }
      }
      local_80 = uVar13 + 1;
    } while (local_80 < local_78);
    location = local_94;
  }
  pcVar5 = local_90;
  iVar2 = (int)local_90 - (int)location >> 0x1f;
  pcVar4 = local_94;
  if (((int)local_90 - (int)location) / 3 + iVar2 != iVar2) {
    while (pcVar4 != pcVar5) {
      bVar6 = LotFloorFeatures_TestAll(this,location,8,0xffff);
      if (!bVar6) {
        LotFloorFeatures_SetTile(this,location,8,1,0xffff);
      }
      location = location + 3;
      pcVar4 = location;
    }
    piVar9 = (int *)MessageDispatch_GetCurrent();
    if (piVar9 != (int *)0x0) {
      piVar10 = FloorMessagePool_AcquireStorage();
      piVar11 = (int *)0x0;
      if (piVar10 != (int *)0x0) {
        *piVar10 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        LOCK();
        piVar10[1] = 0;
        UNLOCK();
        *piVar10 = (int)&PTR_FUN_0106ddf0;
        piVar10[4] = 0;
        piVar10[5] = 0;
        piVar10[6] = 0;
        piVar10[7] = (int)"Lot/tDropLeavesFromTreesMsgData";
        (**(code **)(*piVar10 + 4))();
        piVar11 = piVar10;
      }
      piVar11[2] = *(int *)((int)this + 0x48);
      piVar11[3] = *(int *)((int)this + 0x4c);
      FUN_00aa95b0(piVar11 + 4,(int *)&local_94);
      piVar11[8] = param_1;
      (**(code **)(*piVar9 + 0x1c))(0x95c720d9,piVar11,0,0);
      (**(code **)(*piVar11 + 8))();
    }
    location = local_94;
  }
  if (location != (char *)0x0) {
    Memory_FreeIfNonNull(location);
  }
  return;
}

