/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
/* Analyst note (PC1.67 LotLocation contract): Analyst name. ECX per-lot record; two stack slots
   RET8, AL status. Original unsigned header version1..11 admitted. Reads declared block length,
   imports scoped table via62CF90, reads second relative size and versioned state including
   identity, flags,transforms,footprint(s),connectivity/maps, then seeks remaining declared bytes.
   Writer621C00 emits11; current geometry bounds5/2/7 capability is narrower and is not original
   format completeness. Complete original body retained; type-propagation warning/pointer-cast
   comparisons are artifacts, instruction widths/branches authoritative. */

byte __thiscall LotRouting_ReadLotRecordHeader(void *this,void *stream,void *routingOwner)

{
  undefined1 *this_00;
  undefined4 uVar1;
  undefined4 uVar2;
  bool bVar3;
  bool bVar4;
  char cVar5;
  undefined4 *puVar6;
  int *piVar7;
  undefined4 uVar8;
  int **ppiVar9;
  int *piVar10;
  int iVar11;
  void *this_01;
  uint uVar12;
  int *local_d4;
  int *piStack_d0;
  int *local_cc;
  byte bStack_c5;
  int *piStack_c4;
  int *local_c0;
  uint local_bc;
  int *piStack_b8;
  uint local_b4;
  uint local_b0;
  undefined4 *puStack_ac;
  int *piStack_a8;
  int *piStack_a4;
  undefined4 uStack_a0;
  int *piStack_9c;
  undefined1 uStack_98;
  uint local_94;
  uint local_90;
  int *piStack_8c;
  int iStack_88;
  uint local_80 [4];
  char *pcStack_70;
  int aiStack_6c [3];
  char *pcStack_60;
  void *pvStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  char *pcStack_50;
  int aiStack_4c [3];
  char *pcStack_40;
  int *piStack_24;
  undefined4 *puStack_20;
  int *apiStack_1c [6];
  
  bVar3 = true;
  local_c0 = this;
  bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)&local_d4,
                            *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar4);
                    /* Unsigned comparison to11; preceding zero check bounds admitted versions1..11.
                        */
  if ((local_d4 < (int *)0xc) && (local_d4 != (int *)0x0)) {
    local_b0 = 0;
    bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),&local_b0,*(uint *)((int)stream + 0x10));
    StreamReader_AccumulateStatus(stream,bVar4);
    local_90 = local_b0;
    local_b4 = 1;
    cVar5 = FUN_0062cf90(routingOwner,stream,(int *)&local_90,'\x01',local_d4,&local_b4);
    if (cVar5 != '\0') {
      bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),&local_b0,*(uint *)((int)stream + 0x10))
      ;
      StreamReader_AccumulateStatus(stream,bVar4);
      local_94 = local_b0;
      bVar4 = Stream_ReadUInt64(*(void **)((int)stream + 8),this,*(uint *)((int)stream + 0x10));
      StreamReader_AccumulateStatus(stream,bVar4);
      bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)((int)this + 8),
                                *(uint *)((int)stream + 0x10));
      StreamReader_AccumulateStatus(stream,bVar4);
      bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)((int)this + 0xc),
                                *(uint *)((int)stream + 0x10));
      StreamReader_AccumulateStatus(stream,bVar4);
      bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)((int)this + 0x10),
                                *(uint *)((int)stream + 0x10));
      StreamReader_AccumulateStatus(stream,bVar4);
      bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)((int)this + 0x14),
                                *(uint *)((int)stream + 0x10));
      StreamReader_AccumulateStatus(stream,bVar4);
      if (local_d4 < &DAT_00000005) {
        *(undefined4 *)((int)this + 0x18) = 0xffffffff;
      }
      else {
        StreamReader_ReadUInt32Into(stream,(uint *)((int)this + 0x18));
      }
      if (local_d4 < &DAT_00000007) {
        *(undefined4 *)((int)this + 0x1c) = 0xffffffff;
      }
      else {
        StreamReader_ReadUInt32Into(stream,(uint *)((int)this + 0x1c));
      }
      bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)((int)this + 0x40),
                                *(uint *)((int)stream + 0x10));
      StreamReader_AccumulateStatus(stream,bVar4);
      bVar4 = Stream_ReadBoolean(*(void **)((int)stream + 8),(void *)((int)this + 0x8c));
      StreamReader_AccumulateStatus(stream,bVar4);
      bVar4 = Stream_ReadBoolean(*(void **)((int)stream + 8),(void *)((int)this + 0x8d));
      StreamReader_AccumulateStatus(stream,bVar4);
      if (*(char *)((int)this + 0x8d) != '\0') {
        *(undefined1 *)((int)this + 0x8d) = 0;
        *(undefined1 *)((int)this + 0x8c) = 0;
      }
      bVar4 = Stream_ReadBoolean(*(void **)((int)stream + 8),(void *)((int)this + 0x8e));
      StreamReader_AccumulateStatus(stream,bVar4);
      if (*(char *)((int)this + 0x8e) != '\0') {
        *(undefined1 *)((int)routingOwner + 0x10e) = 1;
      }
      if (local_d4 < (int *)0x2) {
        local_cc = FUN_00c62810(DAT_011edbc4,*(int *)this,*(int *)((int)this + 4),(int *)0x0);
        if (local_cc == (int *)0x0) goto LAB_00624898;
        puVar6 = (undefined4 *)FUN_00ab1610(local_cc,local_80);
        uVar8 = puVar6[1];
        uVar1 = puVar6[2];
        uVar2 = puVar6[3];
        *(undefined4 *)((int)this + 0xa0) = *puVar6;
        *(undefined4 *)((int)this + 0xa4) = uVar8;
        *(undefined4 *)((int)this + 0xa8) = uVar1;
        *(undefined4 *)((int)this + 0xac) = uVar2;
        uVar8 = puVar6[5];
        uVar1 = puVar6[6];
        uVar2 = puVar6[7];
        *(undefined4 *)((int)this + 0xb0) = puVar6[4];
        *(undefined4 *)((int)this + 0xb4) = uVar8;
        *(undefined4 *)((int)this + 0xb8) = uVar1;
        *(undefined4 *)((int)this + 0xbc) = uVar2;
        uVar8 = puVar6[9];
        uVar1 = puVar6[10];
        uVar2 = puVar6[0xb];
        *(undefined4 *)((int)this + 0xc0) = puVar6[8];
        *(undefined4 *)((int)this + 0xc4) = uVar8;
        *(undefined4 *)((int)this + 200) = uVar1;
        *(undefined4 *)((int)this + 0xcc) = uVar2;
        uVar8 = puVar6[0xd];
        uVar1 = puVar6[0xe];
        uVar2 = puVar6[0xf];
        *(undefined4 *)((int)this + 0xd0) = puVar6[0xc];
        *(undefined4 *)((int)this + 0xd4) = uVar8;
        *(undefined4 *)((int)this + 0xd8) = uVar1;
        *(undefined4 *)((int)this + 0xdc) = uVar2;
        puVar6 = (undefined4 *)FUN_00ab1540(local_cc,local_80);
        uVar8 = puVar6[1];
        uVar1 = puVar6[2];
        uVar2 = puVar6[3];
        *(undefined4 *)((int)this + 0xe0) = *puVar6;
        *(undefined4 *)((int)this + 0xe4) = uVar8;
        *(undefined4 *)((int)this + 0xe8) = uVar1;
        *(undefined4 *)((int)this + 0xec) = uVar2;
        uVar8 = puVar6[5];
        uVar1 = puVar6[6];
        uVar2 = puVar6[7];
        *(undefined4 *)((int)this + 0xf0) = puVar6[4];
        *(undefined4 *)((int)this + 0xf4) = uVar8;
        *(undefined4 *)((int)this + 0xf8) = uVar1;
        *(undefined4 *)((int)this + 0xfc) = uVar2;
        uVar8 = puVar6[9];
        uVar1 = puVar6[10];
        uVar2 = puVar6[0xb];
        *(undefined4 *)((int)this + 0x100) = puVar6[8];
        *(undefined4 *)((int)this + 0x104) = uVar8;
        *(undefined4 *)((int)this + 0x108) = uVar1;
        *(undefined4 *)((int)this + 0x10c) = uVar2;
        uVar8 = puVar6[0xd];
        uVar1 = puVar6[0xe];
        uVar2 = puVar6[0xf];
        *(undefined4 *)((int)this + 0x110) = puVar6[0xc];
        *(undefined4 *)((int)this + 0x114) = uVar8;
        *(undefined4 *)((int)this + 0x118) = uVar1;
        *(undefined4 *)((int)this + 0x11c) = uVar2;
      }
      else {
        FUN_007d7bc0(stream,(uint *)((int)this + 0xa0));
        FUN_007d7bc0(stream,(uint *)((int)this + 0xe0));
      }
      local_bc = 1;
      if ((int *)0x1 < local_d4) {
        StreamReader_ReadUInt32Into(stream,&local_bc);
      }
      puVar6 = (undefined4 *)FUN_004e4500(0x4c,"Routing/LotFootprint",0);
      if (puVar6 == (undefined4 *)0x0) {
        piVar7 = (int *)0x0;
      }
      else {
        piVar7 = FUN_00621200(puVar6);
      }
      FUN_006250f0((void *)((int)this + 0x84),piVar7);
      cVar5 = (**(code **)(**(int **)((int)this + 0x84) + 0xa0))(stream,routingOwner,1,local_bc);
      if (cVar5 == '\0') {
        return 0;
      }
      if ((int *)0xa < local_d4) {
        local_cc = (int *)0x0;
        StreamReader_ReadUInt32Into(stream,(uint *)&local_cc);
        if (local_cc != (int *)0x0) {
          puVar6 = (undefined4 *)FUN_004e4500(0x4c,"Routing/LotFootprint",0);
          if (puVar6 == (undefined4 *)0x0) {
            piVar7 = (int *)0x0;
          }
          else {
            piVar7 = FUN_00621200(puVar6);
          }
          FUN_006250f0((void *)((int)this + 0x88),piVar7);
          cVar5 = (**(code **)(**(int **)((int)this + 0x88) + 0xa0))(stream,routingOwner,2,local_bc)
          ;
          if (cVar5 == '\0') {
            return 0;
          }
        }
      }
      if (local_bc < 2) {
        (**(code **)(**(int **)((int)this + 0x84) + 0x68))((int)this + 0xe0);
      }
      if (local_d4 < (int *)0x2) {
        StreamReader_ReadUInt32Into(stream,&local_b4);
        if ((10 < local_b4) ||
           ((local_b4 < 10 && ((local_d4 == (int *)0x0 || (&DAT_00000005 < local_d4))))))
        goto LAB_00624898;
      }
      piStack_b8 = (int *)0x0;
      StreamReader_ReadUInt32Into(stream,(uint *)&piStack_b8);
      FUN_00d4d2a0((uint *)((int)this + 0x44));
      FUN_00622ac0((void *)((int)this + 0x44),(uint)piStack_b8);
      piStack_c4 = (int *)0x0;
      if (piStack_b8 != (int *)0x0) {
        do {
          local_cc = (int *)0x0;
          bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)&local_cc,
                                    *(uint *)((int)stream + 0x10));
          StreamReader_AccumulateStatus(stream,bVar4);
          piStack_d0 = (int *)FUN_006294d0(routingOwner,(uint)local_cc);
          if (piStack_d0 == (int *)0x0) goto LAB_00624898;
          (**(code **)*piStack_d0)();
          FUN_00b27450((void *)((int)this + 0x44),(int *)&piStack_d0);
          if (piStack_d0 != (int *)0x0) {
            (**(code **)(*piStack_d0 + 4))();
          }
          piStack_c4 = (int *)((int)piStack_c4 + 1);
        } while (piStack_c4 < piStack_b8);
      }
      piStack_a8 = (int *)0x0;
      bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)&piStack_a8,
                                *(uint *)((int)stream + 0x10));
      StreamReader_AccumulateStatus(stream,bVar4);
      FUN_006227d0(*(uint *)((int)this + 0x90),*(uint *)((int)this + 0x94));
      *(undefined4 *)((int)this + 0x94) = *(undefined4 *)((int)this + 0x90);
      FUN_00623dc0((void *)((int)this + 0x90),(uint)piStack_a8);
      piStack_d0 = (int *)0x0;
      do {
        if (piStack_a8 <= piStack_d0) break;
        local_80[0]._0_1_ = 0;
        local_80[1] = 0;
        local_80[2] = 0;
        local_80[3] = 0;
        pcStack_70 = "Routing/PathPlan/Portals";
        aiStack_6c[0] = 0;
        aiStack_6c[1] = 0;
        aiStack_6c[2] = 0;
        pcStack_60 = "Routing/PathPlan/InternalPortals";
        pvStack_5c = (void *)0x0;
        uStack_58 = 0;
        uStack_54 = 0;
        pcStack_50 = "Routing/PathPlan/ConnectivityComponents";
        aiStack_4c[0] = 0;
        aiStack_4c[1] = 0;
        aiStack_4c[2] = 0;
        pcStack_40 = "Routing/PathPlan/PortalConnectivity";
        if (bVar3) {
          uVar8 = FUN_006234a0(local_80,stream,routingOwner,(uint)local_d4);
          bVar3 = true;
          if ((char)uVar8 == '\0') goto LAB_00624461;
        }
        else {
LAB_00624461:
          bVar3 = false;
        }
        this_00 = *(undefined1 **)((int)this + 0x94);
        if (this_00 < *(undefined1 **)((int)this + 0x98)) {
          *(undefined1 **)((int)this + 0x94) = this_00 + 0x44;
          if (this_00 != (undefined1 *)0x0) {
            FUN_00622bb0(this_00,(undefined1 *)local_80);
          }
        }
        else {
          FUN_00623b00((void *)((int)this + 0x90),this_00,(undefined1 *)local_80);
        }
        FUN_00629730(aiStack_4c);
        if (pvStack_5c != (void *)0x0) {
          Memory_FreeIfNonNull(pvStack_5c);
        }
        FUN_00626e50(aiStack_6c);
        FUN_00626e50((int *)((int)local_80 + 4));
        piStack_d0 = (int *)((int)piStack_d0 + 1);
      } while (bVar3);
      if (local_d4 < (int *)0x3) {
        iVar11 = thunk_FUN_00835d40();
        piVar7 = this;
        if ((iVar11 != 0) && (this_01 = (void *)FUN_00829600(iVar11), this_01 != (void *)0x0)) {
          FUN_00656880(this_01,*(uint *)this,*(uint *)((int)this + 4));
        }
      }
      else {
        FUN_0073ebe0(*(int *)((int)this + 0x124),*(uint *)((int)this + 0x128));
        *(undefined4 *)((int)this + 300) = 0;
        local_cc = (int *)0x0;
        bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)&local_cc,
                                  *(uint *)((int)stream + 0x10));
        StreamReader_AccumulateStatus(stream,bVar4);
        piStack_c4 = (int *)0x0;
        piVar7 = local_c0;
        if (local_cc != (int *)0x0) {
          do {
            piStack_d0 = (int *)0x0;
            bStack_c5 = 0;
            bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)&piStack_d0,
                                      *(uint *)((int)stream + 0x10));
            StreamReader_AccumulateStatus(stream,bVar4);
            bVar4 = Stream_ReadByte(*(void **)((int)stream + 8),&bStack_c5);
            StreamReader_AccumulateStatus(stream,bVar4);
            UInt32PairMap_Find((void *)((int)this + 0x120),&piStack_a4,(uint *)&piStack_d0);
            piVar7 = piStack_a4;
            if (piStack_a4 ==
                *(int **)(*(int *)((int)this + 0x124) + *(int *)((int)this + 0x128) * 4)) {
              puStack_ac = (undefined4 *)((uint)puStack_ac & 0xffffff00);
              piStack_9c = piStack_d0;
              uStack_98 = 0;
              UInt32PairMap_InsertUnique
                        ((void *)((int)this + 0x120),&piStack_8c,(uint *)&piStack_9c,
                         (uint)puStack_ac);
              piVar7 = piStack_8c;
            }
            *(byte *)(piVar7 + 1) = bStack_c5;
            piStack_c4 = (int *)((int)piStack_c4 + 1);
            piVar7 = local_c0;
          } while (piStack_c4 < local_cc);
        }
      }
      FUN_0073ebe0(piVar7[0x51],piVar7[0x52]);
      piVar7[0x53] = 0;
      if (local_d4 < &DAT_00000004) {
        if ((uint)*(ushort *)(piVar7 + 0x5b) < (uint)((piVar7[0x25] - piVar7[0x24]) / 0x44)) {
          *(undefined1 *)(piVar7[0x24] + (uint)*(ushort *)(piVar7 + 0x5b) * 0x44) = 0;
          *(undefined1 *)(piVar7 + 0x23) = 0;
        }
      }
      else {
        local_c0 = (int *)0x0;
        bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)&local_c0,
                                  *(uint *)((int)stream + 0x10));
        StreamReader_AccumulateStatus(stream,bVar4);
        local_cc = (int *)0x0;
        if (local_c0 != (int *)0x0) {
          do {
            piStack_d0 = (int *)0x0;
            piStack_c4 = (int *)0x0;
            bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)&piStack_d0,
                                      *(uint *)((int)stream + 0x10));
            StreamReader_AccumulateStatus(stream,bVar4);
            bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)&piStack_c4,
                                      *(uint *)((int)stream + 0x10));
            StreamReader_AccumulateStatus(stream,bVar4);
            uVar12 = piVar7[0x52];
            puStack_ac = (undefined4 *)(piVar7[0x51] + ((uint)piStack_d0 % uVar12) * 4);
            for (piVar10 = (int *)*puStack_ac; piVar10 != (int *)0x0; piVar10 = (int *)piVar10[2]) {
              if (piStack_d0 == (int *)*piVar10) {
                piStack_24 = piVar10;
                ppiVar9 = &piStack_24;
                puStack_20 = puStack_ac;
                goto LAB_006246d7;
              }
            }
            iStack_88 = piVar7[0x51] + uVar12 * 4;
            piStack_8c = *(int **)(piVar7[0x51] + uVar12 * 4);
            ppiVar9 = &piStack_8c;
LAB_006246d7:
            piVar10 = *ppiVar9;
            if (*ppiVar9 == *(int **)(piVar7[0x51] + uVar12 * 4)) {
              piStack_9c = (int *)((uint)piStack_9c & 0xffffff00);
              piStack_a4 = piStack_d0;
              uStack_a0 = 0;
              UInt32PairMap_InsertUnique
                        (piVar7 + 0x50,apiStack_1c,(uint *)&piStack_a4,(uint)piStack_9c);
              piVar10 = apiStack_1c[0];
            }
            piVar10[1] = (int)piStack_c4;
            local_cc = (int *)((int)local_cc + 1);
          } while (local_cc < local_c0);
        }
      }
      if ((4 < local_b4) || (uVar12 = FUN_00621660(piVar7), (char)uVar12 != '\0')) {
        if (local_d4 < (int *)0x8) {
          piVar7[0x58] = 0;
        }
        else {
          bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)(piVar7 + 0x58),
                                    *(uint *)((int)stream + 0x10));
          StreamReader_AccumulateStatus(stream,bVar4);
        }
        if (local_d4 < (int *)0x9) {
          piVar7[0x59] = 0;
        }
        else {
          bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)(piVar7 + 0x59),
                                    *(uint *)((int)stream + 0x10));
          StreamReader_AccumulateStatus(stream,bVar4);
        }
        if (local_d4 < (int *)0xa) {
          piVar7[0x5a] = 0;
        }
        else {
          bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)(piVar7 + 0x5a),
                                    *(uint *)((int)stream + 0x10));
          StreamReader_AccumulateStatus(stream,bVar4);
        }
        StreamContext_SeekWithSignedAbsoluteGuard(stream,local_94,1);
        if ((bVar3) && (*(char *)((int)stream + 0x14) != '\0')) {
          return 1;
        }
        return 0;
      }
    }
  }
LAB_00624898:
  StreamReader_AccumulateStatus(stream,0);
  *(undefined1 *)((int)stream + 0x14) = 0;
  return 0;
}

