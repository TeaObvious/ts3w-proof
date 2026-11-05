/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Library lot object import. Physical lot ECX; stack4 resource stream context,
   stack8 and stackC source-key raw32 words, stack10 mutable ObjectGuid vector, stack14 placement
   data pointer; RET14hex and byte status AL. Reads resource34E5247C with UInt16 version at most1
   and two key vectors, calls939030 and ignores its loaded count. Closes the resource context, then
   walks generated IDs and Transform parents with bit4 clear, applies native xz placement and
   Location yaw/pivot/tile services and lot virtual+30; a later pass resets the955F10 flag. The
   meaning of that flag, complete component/provider lifetime, floor/pivot numeric parity and host
   parent-before-create equivalence are not inferred. Owned455 instructions1573 bytes are unchanged.
   Explicit ECX/custom storage corrects the previous inferred stdcall signature; raw32 key halves
   claim no signedness. */

byte __thiscall
Lot_ImportLibraryObjectRecords
          (void *this,void *resourceContext,undefined4 instanceLowWord,undefined4 instanceHighWord,
          void *objectIds,void *placement)

{
  ulonglong *puVar1;
  void *this_00;
  void *pvVar2;
  bool bVar3;
  byte bVar4;
  byte bVar5;
  int iVar6;
  char *this_01;
  void *pvVar7;
  void *pvVar8;
  void *pvVar9;
  uint uVar10;
  undefined4 uVar11;
  void *this_02;
  int *piVar12;
  ulonglong *puVar13;
  float10 fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  char cVar21;
  char *local_184;
  void *local_180;
  float local_17c;
  ulonglong *local_178;
  float local_174;
  float local_170;
  int *local_16c;
  undefined4 local_168;
  ulonglong *local_164;
  uint local_160;
  float fStack_15c;
  float fStack_158;
  int iStack_154;
  undefined4 local_150;
  undefined4 local_14c;
  undefined4 local_148;
  undefined4 local_144;
  void *local_140 [4];
  void *local_130 [4];
  float local_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float fStack_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float fStack_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  float fStack_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  float local_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float fStack_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float fStack_a0;
  float fStack_9c;
  float fStack_98;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
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
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_14c = instanceHighWord;
  local_150 = instanceLowWord;
  local_148 = 0x34e5247c;
  local_144 = 0;
  local_16c = this;
  bVar3 = ResourceStreamContext_OpenWrite(resourceContext,&local_150,0);
  if (bVar3) {
    local_168 = 0;
    bVar3 = Stream_ReadUInt16(*(void **)((int)resourceContext + 8),(ushort *)&local_168,
                              *(uint *)((int)resourceContext + 0x10));
    StreamReader_AccumulateStatus(resourceContext,bVar3);
    if ((*(char *)((int)resourceContext + 0x14) != '\0') && ((ushort)local_168 < 2)) {
      bVar3 = Stream_ReadUInt32(*(void **)((int)resourceContext + 8),&local_160,
                                *(uint *)((int)resourceContext + 0x10));
      StreamReader_AccumulateStatus(resourceContext,bVar3);
      iVar6 = StreamContext_GetPositionAndMarkNegative(resourceContext);
      StreamContext_SeekWithSignedAbsoluteGuard(resourceContext,local_160,0);
      local_184 = "Scratch/LotExport/ResourceKeyList";
      FUN_007d9500(local_140,&local_184);
      bVar4 = StreamContext_ReadResourceKeyVector(local_140,resourceContext);
      local_184 = "Scratch/LotExport/LocalResourceKeyList";
      FUN_007d9500(local_130,&local_184);
      bVar5 = StreamContext_ReadResourceKeyVector(local_130,resourceContext);
      bVar5 = bVar4 & 1 & bVar5;
      StreamContext_SeekWithSignedAbsoluteGuard(resourceContext,iVar6,0);
      this_01 = ObjectRegistry_GetGlobal();
      local_184 = this_01;
      Inventory_ImportObjectRecords(this_01,resourceContext,(int *)local_140,local_130,objectIds);
      ResourceStreamContext_Close(resourceContext);
      if (bVar5 != 0) {
        FUN_00ab1610(local_16c,(uint *)&local_50);
        FUN_00ab1540(this_02,(uint *)&local_120);
        local_178 = *(ulonglong **)objectIds;
        local_164 = *(ulonglong **)((int)objectIds + 4);
        if (local_178 != local_164) {
          do {
            puVar13 = local_178;
            bVar3 = true;
            pvVar7 = ObjectRegistry_FindBorrowed(this_01,*local_178);
            if (pvVar7 == (void *)0x0) {
LAB_00ab4e5a:
              local_178 = puVar13 + 1;
            }
            else {
              pvVar8 = Object_GetComponentByMask(pvVar7,DAT_011ea158);
              if ((pvVar8 != (void *)0x0) && ((*(uint *)((int)pvVar8 + 0x34) >> 4 & 1) == 0)) {
                pvVar2 = *(void **)((int)pvVar8 + 0x30);
                while (((this_00 = pvVar2, this_00 != (void *)0x0 &&
                        (pvVar9 = Object_GetComponentByMask(this_00,DAT_011ea158),
                        pvVar9 != (void *)0x0)) && ((*(uint *)((int)pvVar9 + 0x34) >> 4 & 1) == 0)))
                {
                  bVar3 = false;
                  pvVar2 = *(void **)((int)pvVar9 + 0x30);
                  pvVar7 = this_00;
                  pvVar8 = pvVar9;
                }
                FUN_00955f10(pvVar8,'\x01');
                piVar12 = (int *)((int)placement + 100);
                TransformComponent_GetWorldMatrix(pvVar8,&local_90);
                local_c0 = local_60;
                fStack_bc = fStack_5c;
                fStack_b8 = fStack_58;
                fStack_b4 = fStack_54;
                local_e0 = local_60;
                fStack_dc = fStack_5c;
                fStack_d8 = fStack_58;
                fStack_d4 = fStack_54;
                FUN_00cb3160(piVar12,local_60,fStack_58,&local_17c,&local_174);
                local_180 = Object_FindCatalogInfo(pvVar7);
                if ((pvVar7 != (void *)0x0) &&
                   (pvVar8 = Object_GetComponentByMask(pvVar7,DAT_011edf08), pvVar8 != (void *)0x0))
                {
                  local_170 = PlacementLocation_ReadYawWithRefresh(pvVar8);
                  iVar6 = *piVar12;
                  if ((iVar6 == 1) || ((iVar6 == 2 || (iVar6 == 3)))) {
                    fVar14 = (float10)_CIfmod();
                    FUN_00c89f50(pvVar8,(float)fVar14);
                  }
                  if (((local_180 != (void *)0x0) &&
                      (uVar10 = FUN_00afbcd0(local_170), (char)uVar10 != '\0')) &&
                     (uVar10 = FUN_00affce0(pvVar7,(int)local_180), (char)uVar10 != '\0')) {
                    FUN_00b05870(pvVar7,(int)local_180,(uint *)&fStack_a0);
                    fVar18 = 0.0 - fStack_a0;
                    fVar19 = 0.0 - fStack_9c;
                    fVar20 = 0.0 - fStack_98;
                    fVar15 = fVar18 * (local_90 * local_120 + fStack_8c * fStack_110 +
                                       fStack_88 * fStack_100 + fStack_84 * fStack_f0) +
                             fVar19 * (fStack_80 * local_120 + fStack_7c * fStack_110 +
                                       fStack_78 * fStack_100 + fStack_74 * fStack_f0) +
                             fVar20 * (fStack_70 * local_120 + fStack_6c * fStack_110 +
                                       fStack_68 * fStack_100 + fStack_64 * fStack_f0) +
                             FLOAT_00f998f8 *
                             (local_60 * local_120 + fStack_5c * fStack_110 + fStack_58 * fStack_100
                             + fStack_54 * fStack_f0);
                    fVar16 = fVar18 * (local_90 * fStack_11c + fStack_8c * fStack_10c +
                                       fStack_88 * fStack_fc + fStack_84 * fStack_ec) +
                             fVar19 * (fStack_80 * fStack_11c + fStack_7c * fStack_10c +
                                       fStack_78 * fStack_fc + fStack_74 * fStack_ec) +
                             fVar20 * (fStack_70 * fStack_11c + fStack_6c * fStack_10c +
                                       fStack_68 * fStack_fc + fStack_64 * fStack_ec) +
                             FLOAT_00f998f8 *
                             (local_60 * fStack_11c + fStack_5c * fStack_10c + fStack_58 * fStack_fc
                             + fStack_54 * fStack_ec);
                    fVar17 = fVar18 * (local_90 * fStack_118 + fStack_8c * fStack_108 +
                                       fStack_88 * fStack_f8 + fStack_84 * fStack_e8) +
                             fVar19 * (fStack_80 * fStack_118 + fStack_7c * fStack_108 +
                                       fStack_78 * fStack_f8 + fStack_74 * fStack_e8) +
                             fVar20 * (fStack_70 * fStack_118 + fStack_6c * fStack_108 +
                                       fStack_68 * fStack_f8 + fStack_64 * fStack_e8) +
                             FLOAT_00f998f8 *
                             (local_60 * fStack_118 + fStack_5c * fStack_108 + fStack_58 * fStack_f8
                             + fStack_54 * fStack_e8);
                    fVar18 = fVar18 * (local_90 * fStack_114 + fStack_8c * fStack_104 +
                                       fStack_88 * fStack_f4 + fStack_84 * fStack_e4) +
                             fVar19 * (fStack_80 * fStack_114 + fStack_7c * fStack_104 +
                                       fStack_78 * fStack_f4 + fStack_74 * fStack_e4) +
                             fVar20 * (fStack_70 * fStack_114 + fStack_6c * fStack_104 +
                                       fStack_68 * fStack_f4 + fStack_64 * fStack_e4) +
                             FLOAT_00f998f8 *
                             (local_60 * fStack_114 + fStack_5c * fStack_104 + fStack_58 * fStack_f4
                             + fStack_54 * fStack_e4);
                    fStack_d0 = fVar16 * fStack_40 + fVar15 * local_50 + fVar17 * fStack_30 +
                                fVar18 * fStack_20;
                    fStack_cc = fVar16 * fStack_3c + fVar15 * fStack_4c + fVar17 * fStack_2c +
                                fVar18 * fStack_1c;
                    fStack_c8 = fVar16 * fStack_38 + fVar15 * fStack_48 + fVar17 * fStack_28 +
                                fVar18 * fStack_18;
                    fStack_c4 = fVar16 * fStack_34 + fVar15 * fStack_44 + fVar17 * fStack_24 +
                                fVar18 * fStack_14;
                    fStack_b0 = fStack_d0;
                    fStack_ac = fStack_cc;
                    fStack_a8 = fStack_c8;
                    fStack_a4 = fStack_c4;
                    FUN_00cb3160(piVar12,fStack_d0,fStack_c8,&local_17c,&local_174);
                  }
                  piVar12 = local_16c;
                  uVar11 = FUN_0074aa40(local_16c,local_17c,local_174);
                  if (((char)uVar11 != '\0') && (*(int *)((int)pvVar8 + 0x18) != 0x7fffffff)) {
                    local_180 = *(void **)((int)pvVar8 + 0x24);
                    fStack_15c = local_17c;
                    cVar21 = '\0';
                    fStack_158 = local_174;
                    iStack_154 = *(int *)((int)pvVar8 + 0x18);
                    fVar15 = PlacementLocation_ReadYawWithRefresh(pvVar8);
                    FUN_00b09b00(pvVar7,piVar12,(undefined1 (*) [12])&fStack_15c,(float)local_180,
                                 fVar15,cVar21);
                    FUN_00c89960(pvVar8,1);
                  }
                }
              }
              (**(code **)(*local_16c + 0x30))(pvVar7);
              this_01 = local_184;
              puVar13 = local_178;
              if (bVar3) goto LAB_00ab4e5a;
            }
          } while (local_178 != local_164);
        }
      }
      puVar1 = *(ulonglong **)((int)objectIds + 4);
      for (puVar13 = *(ulonglong **)objectIds; puVar13 != puVar1; puVar13 = puVar13 + 1) {
        pvVar7 = ObjectRegistry_FindBorrowed(this_01,*puVar13);
        if ((pvVar7 != (void *)0x0) &&
           (pvVar7 = Object_GetComponentByMask(pvVar7,DAT_011ea158), pvVar7 != (void *)0x0)) {
          FUN_00955f10(pvVar7,'\0');
        }
      }
      if (local_130[0] != (void *)0x0) {
        Memory_FreeIfNonNull(local_130[0]);
      }
      if (local_140[0] != (void *)0x0) {
        Memory_FreeIfNonNull(local_140[0]);
      }
      return bVar5;
    }
  }
  return 0;
}

