/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: cdecl object pointer, plain RET; no meaningful return asserted. After existing
   object/catalog/lot/component gates, enumerates each raw authored cutout row independently.
   Transform/locator query B47D20 at B0BEC2, TEST AL then JZ B0C0DA skips that row on missing
   physical wall. Pair-index modulo belongs to transform input, not an aggregate host union.
   Found-wall product and ordinary/alternate message paths remain distinct downstream owners. No CLR
   outcome ledger or whole object-visibility result is recovered here. */

void __cdecl WorldObject_ApplyAuthoredWallAndFenceCutoutRows(void *param_1)

{
  uint uVar1;
  bool bVar2;
  void *this;
  int *piVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 *puVar7;
  undefined1 *puVar8;
  float yaw;
  int iStack_10c;
  undefined2 uStack_108;
  void *pvStack_104;
  uint *local_100;
  uint uStack_fc;
  void *pvStack_f8;
  uint uStack_f4;
  void *pvStack_f0;
  void *local_ec;
  undefined2 uStack_e8;
  float fStack_e4;
  float fStack_e0;
  undefined4 uStack_dc;
  uint uStack_d8;
  float fStack_d4;
  float fStack_d0;
  undefined4 uStack_cc;
  float fStack_c8;
  float afStack_c4 [7];
  float fStack_a8;
  float fStack_a4;
  undefined4 uStack_a0;
  float fStack_9c;
  float fStack_98;
  undefined4 uStack_94;
  uint uStack_90;
  int iStack_8c;
  undefined1 auStack_88 [4];
  undefined1 auStack_84 [8];
  undefined4 *puStack_7c;
  undefined4 auStack_6c [2];
  byte abStack_64 [8];
  undefined4 uStack_5c;
  undefined4 uStack_58;
  
  if (((((param_1 != (void *)0x0) &&
        (this = (void *)ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)param_1 + 0x18)),
        this != (void *)0x0)) && (*(int *)((int)this + 0xd4) != *(int *)((int)this + 0xd8))) &&
      ((local_ec = this, local_100 = Object_GetComponentByMask(param_1,DAT_011edf08),
       local_100 != (uint *)0x0 &&
       (piVar3 = (int *)FUN_0068f130((int)param_1), piVar3 != (int *)0x0)))) &&
     (iVar4 = (**(code **)(*piVar3 + 0xc))(0x90566b0e), iVar4 != 0)) {
    uVar1 = *(uint *)((int)this + 0xd0);
    iVar5 = FUN_00582ac0(param_1);
    if ((iVar5 == 0) || ((*(byte *)(iVar5 + 8) & 1) != 0)) {
      yaw = PlacementLocation_ReadYawWithRefresh(pvStack_104);
      uStack_d8 = Placement_QuantizeYawToOctant(yaw);
      fStack_c8 = FLOAT_00fab218;
      afStack_c4[0] = FLOAT_00fab218;
      afStack_c4[1] = 0.0;
      ObjectLocation_CopyXZLevel(pvStack_104,&fStack_c8,afStack_c4,afStack_c4 + 1);
      pvStack_f8 = *(void **)(iVar4 + 0x298);
      pvStack_104 = (void *)FUN_00789450((int)this);
      uStack_f4 = *(uint *)((int)this + 0xe4);
      local_100 = (uint *)0x106ba34;
      FUN_00a777d0(auStack_88,&local_100);
      uStack_fc = 0;
      if (pvStack_104 != (void *)0x0) {
        uStack_90 = uStack_f4 * 2;
        do {
          uStack_f4 = uStack_fc % uStack_90;
          afStack_c4[2] = 0.0;
          afStack_c4[3] = 0.0;
          afStack_c4[4] = 0.0;
          afStack_c4[5] = 0.0;
          fStack_e4 = FLOAT_00fab218;
          fStack_e0 = FLOAT_00fab218;
          uStack_dc = 0;
          fStack_d4 = FLOAT_00fab218;
          fStack_d0 = FLOAT_00fab218;
          uStack_cc = 0;
          ObjectCatalog_ReadWallPlacementRow
                    (this,uStack_fc,&fStack_e4,&fStack_e0,&fStack_d4,&fStack_d0,&uStack_dc,
                     afStack_c4 + 2);
          uStack_cc = uStack_dc;
          uStack_a0 = uStack_dc;
          uStack_94 = uStack_dc;
          fStack_a8 = fStack_e4;
          fStack_a4 = fStack_e0;
          fStack_9c = fStack_d4;
          fStack_98 = fStack_d0;
          FUN_00c45750(&fStack_a8,&uStack_d8,&fStack_a8,(int)uStack_f4 >> 1);
          FUN_00c456b0(&fStack_a8,&fStack_c8,&fStack_a8);
          FUN_00784df0(&local_ec,&fStack_a8,&fStack_9c);
          bVar2 = PartitionManager_HasPhysicalWallForLocator(pvStack_f8,(char *)&local_ec);
          if (bVar2) {
            local_100 = FUN_00b47df0(pvStack_f8,(char *)&local_ec,'\0');
            uVar6 = WallProduct_HasNonzeroFieldE0(local_100);
            if ((char)uVar6 == '\0') {
              uVar6 = FUN_00c5b860(local_100);
              if ((char)uVar6 == '\0') {
                piVar3 = (int *)MessageDispatch_GetCurrent();
                this = pvStack_f0;
                if (piVar3 != (int *)0x0) {
                  puVar7 = FloorMessagePool_AcquireStorage();
                  if (puVar7 == (undefined4 *)0x0) {
                    iVar5 = 0;
                  }
                  else {
                    iVar5 = FUN_00b01990(puVar7);
                  }
                  *(undefined4 *)(iVar5 + 8) = *(undefined4 *)(iVar4 + 0x48);
                  *(undefined4 *)(iVar5 + 0xc) = *(undefined4 *)(iVar4 + 0x4c);
                  *(float *)(iVar5 + 0x18) = afStack_c4[2];
                  *(float *)(iVar5 + 0x1c) = afStack_c4[3];
                  *(float *)(iVar5 + 0x20) = afStack_c4[4];
                  *(float *)(iVar5 + 0x24) = afStack_c4[5];
                  *(void **)(iVar5 + 0x10) = local_ec;
                  *(undefined2 *)(iVar5 + 0x14) = uStack_e8;
                  *(undefined1 *)(iVar5 + 0x28) = (undefined1)uStack_d8;
                  *(undefined1 *)(iVar5 + 0x29) = (undefined1)uStack_f4;
                  *(char *)(iVar5 + 0x2a) = (char)((uint)pvStack_104 >> 1);
                  *(bool *)(iVar5 + 0x2b) = (uVar1 & 0x10000) != 0x10000;
                  (**(code **)(*piVar3 + 0x1c))(0x6257eb4,iVar5,0,0);
                  this = pvStack_f0;
                }
              }
              else {
                iStack_10c = -0xff0001;
                uStack_108 = 0xff;
                FUN_00b47d40(pvStack_f8,(char *)&local_ec,&iStack_10c);
                piVar3 = (int *)FUN_00c4c900(auStack_88,&iStack_8c,(char *)&iStack_10c);
                if ((undefined1 *)*piVar3 == auStack_84) {
                  piVar3 = (int *)MessageDispatch_GetCurrent();
                  if (piVar3 != (int *)0x0) {
                    FUN_00b47df0(pvStack_f8,(char *)&iStack_10c,'\0');
                    puVar7 = FloorMessagePool_AcquireStorage();
                    if (puVar7 == (undefined4 *)0x0) {
                      iVar5 = 0;
                    }
                    else {
                      iVar5 = FUN_00b01960(puVar7);
                    }
                    *(undefined4 *)(iVar5 + 8) = *(undefined4 *)(iVar4 + 0x48);
                    *(undefined4 *)(iVar5 + 0xc) = *(undefined4 *)(iVar4 + 0x4c);
                    *(int *)(iVar5 + 0x10) = iStack_10c;
                    *(undefined2 *)(iVar5 + 0x14) = uStack_108;
                    (**(code **)(*piVar3 + 0x1c))(0x57f85c2,iVar5,0,0);
                  }
                  FUN_00b0b340(auStack_88,auStack_6c,&iStack_10c);
                  this = pvStack_f0;
                }
              }
              uVar6 = FUN_00c5b9b0((int *)local_100,'\x01');
              if ((char)uVar6 != '\0') {
                uStack_5c = *(undefined4 *)((int)param_1 + 8);
                uStack_58 = *(undefined4 *)((int)param_1 + 0xc);
                abStack_64[0] = 10;
                abStack_64[1] = 0xbd;
                abStack_64[2] = 0x6e;
                abStack_64[3] = 10;
                abStack_64[4] = 0;
                abStack_64[5] = 0;
                abStack_64[6] = 0;
                abStack_64[7] = 0;
                puVar8 = (undefined1 *)FUN_00afd700((int)abStack_64);
                *puVar8 = 1;
                RenderCommand_EnqueueIfDispatcherExists(abStack_64);
                FUN_00582a70((int)abStack_64);
              }
            }
          }
          uStack_fc = uStack_fc + 1;
        } while (uStack_fc < pvStack_104);
      }
      FUN_00b0b9e0(auStack_88,iVar4,'\0');
      FUN_008b19b0(puStack_7c);
    }
  }
  return;
}

