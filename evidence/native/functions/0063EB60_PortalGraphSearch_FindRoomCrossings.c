/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst: original PC 1.67 portal contract. Original search has unsigned packed room/portal keys,
   float32 g/f priorities, closed-node filter, predecessor map; rejects edge>=1000000. Updates
   cheaper open nodes, does not reopen closed nodes. Success reconstructs only room-changing
   predecessor pairs and reverses result. AL true=goal found; no open node returnsAL0; outClosest
   tracks strictly smaller heuristic. */

bool __thiscall
PortalGraphSearch_FindRoomCrossings
          (void *this,void *routeContext,void *lotGraph,TS3WPortalXZLevel *start,
          TS3WPortalXZLevel *goal,uint startKey,uint goalKey,void *outCrossings,uint *outClosest,
          bool exclude,ushort startConnection,ushort goalConnection)

{
  int *piVar1;
  undefined2 *puVar2;
  undefined2 *puVar3;
  undefined2 *puVar4;
  uint *puVar5;
  undefined4 uVar6;
  uint *this_00;
  uint fromKey;
  uint toKey;
  undefined4 *puVar7;
  int iVar8;
  undefined4 *******pppppppuVar9;
  undefined4 *******pppppppuVar10;
  float **ppfVar11;
  float *pfVar12;
  undefined4 *******pppppppuVar13;
  undefined4 *puVar14;
  undefined4 ******ppppppuVar15;
  undefined4 ******ppppppuVar16;
  float *pfVar17;
  undefined3 in_stack_00000025;
  undefined4 *****local_114;
  undefined4 *****local_110;
  float local_10c;
  undefined4 *****local_108;
  ulonglong local_104;
  undefined4 *****local_fc;
  uint *local_f8;
  uint local_f4;
  undefined1 local_f0 [4];
  undefined4 *local_ec;
  uint local_e8;
  undefined4 local_e4;
  undefined4 local_e0;
  undefined4 local_dc;
  undefined4 local_d8;
  char *local_d4;
  undefined4 local_d0;
  uint *local_cc;
  undefined4 local_c8;
  char *local_c4;
  undefined4 local_c0;
  undefined4 local_bc;
  float *local_b8;
  undefined4 *local_b4;
  float *local_b0;
  undefined4 *local_ac;
  undefined1 local_a8 [4];
  undefined4 *local_a4;
  uint local_a0;
  undefined4 local_9c;
  undefined4 local_98;
  undefined4 local_94;
  undefined4 local_90;
  char *local_8c;
  undefined1 local_88 [4];
  undefined4 ******local_84;
  undefined4 ******local_80;
  undefined4 ******local_7c;
  undefined4 local_78;
  undefined4 local_74;
  char *local_70;
  undefined4 local_6c;
  int local_68;
  undefined4 local_64;
  undefined4 local_60;
  char *local_5c;
  int local_58;
  int local_54;
  uint local_50;
  undefined2 *local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  float *local_30 [2];
  char local_28;
  undefined4 *****local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8 [2];
  
  toKey = goalKey;
  fromKey = startKey;
  local_98 = DAT_00f998f8;
  *(ushort *)((int)this + 4) = startConnection;
  local_84 = &local_84;
  local_54 = -1;
  local_58 = -1;
  *(ushort *)((int)this + 6) = goalConnection;
  *(float *)((int)this + 8) = start->x;
  *(float *)((int)this + 0xc) = start->z;
  *(int *)((int)this + 0x10) = start->level;
  *(float *)((int)this + 0x14) = goal->x;
  local_94 = DAT_0103fd88;
  *(float *)((int)this + 0x18) = goal->z;
  *(int *)((int)this + 0x1c) = goal->level;
  local_70 = "Routing/closedlist";
  local_7c = (undefined4 *******)0x0;
  local_78 = 0;
  local_74 = 0;
  local_68 = 0;
  local_64 = 0;
  local_60 = 0;
  local_5c = "Routing/OpenList/mBuckets";
  local_6c = 0;
  local_8c = "Routing/opennodes";
  local_a0 = 1;
  local_a4 = &DAT_0114d900;
  local_9c = 0;
  local_90 = 0;
  *(short *)((int)this + 0x20) = (short)(goalKey >> 0x10);
  local_d0 = (uint *)CONCAT22((short)startKey,(short)(startKey >> 0x10));
  local_cc = (uint *)0x0;
  local_c8 = 0;
  local_80 = local_84;
  puVar7 = (undefined4 *)FUN_0062a1a0(local_a8,&startKey);
  *puVar7 = local_d0;
  puVar7[1] = local_cc;
  puVar7[2] = local_c8;
  puVar7[3] = local_c4;
  puVar7[4] = local_c0;
  puVar7[5] = local_bc;
  iVar8 = FUN_0062a1a0(local_a8,&startKey);
  FUN_0062c6e0(&local_6c,iVar8);
  *outClosest = fromKey;
  local_110 = (undefined4 *****)
              PortalGraphSearch_EstimateDistance(this,routeContext,lotGraph,fromKey,toKey);
  local_e0 = DAT_00f998f8;
  local_dc = DAT_0103fd88;
  local_d4 = "Routing/came_from";
  local_e8 = 1;
  local_ec = &DAT_0114d900;
  local_e4 = 0;
  local_d8 = 0;
  local_104 = 0;
  iVar8 = thunk_FUN_00835d40();
  this_00 = outCrossings;
  if ((iVar8 != 0) &&
     (iVar8 = FUN_00828f00(*(int *)((int)routeContext + 0x40)), this_00 = outCrossings, iVar8 != 0))
  {
    local_104 = FUN_0081c570(iVar8);
    this_00 = outCrossings;
  }
  do {
    outCrossings = this_00;
    if (local_54 < 0) {
      FUN_0073ebe0((int)local_ec,local_e8);
      local_e4 = 0;
      if (1 < local_e8) {
        FUN_004e44e0((int)local_ec);
      }
      FUN_00626490((int)local_a4,local_a0);
      local_9c = 0;
      if (1 < local_a0) {
        FUN_004e44e0((int)local_a4);
      }
      pppppppuVar13 = (undefined4 *******)local_7c;
      if (local_68 != 0) {
        FUN_004e44e0(local_68);
        pppppppuVar13 = (undefined4 *******)local_7c;
      }
      while (pppppppuVar13 != (undefined4 *******)0x0) {
        FUN_008b19b0(*pppppppuVar13);
        pppppppuVar9 = (undefined4 *******)pppppppuVar13[1];
        FUN_004e44e0((int)pppppppuVar13);
        pppppppuVar13 = pppppppuVar9;
      }
      return false;
    }
    puVar2 = *(undefined2 **)(local_68 + local_58 * 0xc);
    piVar1 = (int *)(local_68 + local_58 * 0xc);
    ppppppuVar15 = (undefined4 ******)CONCAT22(*puVar2,puVar2[1]);
    local_4c = puVar2;
    local_108 = ppppppuVar15;
    if (ppppppuVar15 == (undefined4 ******)goalKey) {
      if (ppppppuVar15 != (undefined4 ******)startKey) {
        do {
          for (pfVar12 = (float *)local_ec[(uint)ppppppuVar15 % local_e8]; pfVar12 != (float *)0x0;
              pfVar12 = (float *)pfVar12[2]) {
            if (ppppppuVar15 == (undefined4 ******)*pfVar12) {
              local_b0 = pfVar12;
              local_ac = local_ec + (uint)ppppppuVar15 % local_e8;
              ppfVar11 = &local_b0;
              goto LAB_0063f2b9;
            }
          }
          local_b4 = local_ec + local_e8;
          local_b8 = (float *)local_ec[local_e8];
          ppfVar11 = &local_b8;
LAB_0063f2b9:
          pfVar12 = *ppfVar11;
          local_fc = ppppppuVar15;
          if (*ppfVar11 == (float *)local_ec[local_e8]) {
            local_f4 = local_f4 & 0xffffff00;
            local_104 = ZEXT48(ppppppuVar15);
            FUN_007f4270(local_f0,local_30,(uint *)&local_104);
            pfVar12 = local_30[0];
          }
          ppppppuVar16 = (undefined4 ******)pfVar12[1];
          local_114 = ppppppuVar16;
          if ((((uint)ppppppuVar15 ^ (uint)ppppppuVar16) & 0xffff0000) != 0) {
            puVar7 = (undefined4 *)this_00[1];
            if (puVar7 < (undefined4 *)this_00[2]) {
              this_00[1] = (uint)(puVar7 + 1);
              if (puVar7 != (undefined4 *)0x0) {
                *puVar7 = ppppppuVar15;
              }
            }
            else {
              FUN_00982420(this_00,puVar7,&local_fc);
            }
            puVar5 = (uint *)this_00[1];
            if (puVar5 < (uint *)this_00[2]) {
              this_00[1] = (uint)(puVar5 + 1);
              if (puVar5 != (uint *)0x0) {
                *puVar5 = (uint)ppppppuVar16;
              }
            }
            else {
              FUN_00982420(this_00,puVar5,&local_114);
              ppppppuVar16 = (undefined4 ******)local_114;
            }
          }
          ppppppuVar15 = ppppppuVar16;
        } while (ppppppuVar16 != (undefined4 ******)startKey);
      }
      puVar7 = (undefined4 *)*this_00;
      if ((puVar7 != (undefined4 *)this_00[1]) &&
         (puVar14 = (undefined4 *)this_00[1] + -1, puVar7 < puVar14)) {
        do {
          uVar6 = *puVar7;
          *puVar7 = *puVar14;
          *puVar14 = uVar6;
          puVar7 = puVar7 + 1;
          puVar14 = puVar14 + -1;
        } while (puVar7 < puVar14);
      }
      FUN_0073ebe0((int)local_ec,local_e8);
      local_e4 = 0;
      if (1 < local_e8) {
        FUN_004e44e0((int)local_ec);
      }
      FUN_00626490((int)local_a4,local_a0);
      local_9c = 0;
      if (1 < local_a0) {
        FUN_004e44e0((int)local_a4);
      }
      pppppppuVar13 = (undefined4 *******)local_7c;
      if (local_68 != 0) {
        FUN_004e44e0(local_68);
        pppppppuVar13 = (undefined4 *******)local_7c;
      }
      while (pppppppuVar13 != (undefined4 *******)0x0) {
        FUN_008b19b0(*pppppppuVar13);
        pppppppuVar9 = (undefined4 *******)pppppppuVar13[1];
        FUN_004e44e0((int)pppppppuVar13);
        pppppppuVar13 = pppppppuVar9;
      }
      return true;
    }
    if (-1 < local_58) {
      puVar3 = (undefined2 *)piVar1[2];
      if (puVar2 != puVar3) {
        puVar4 = *(undefined2 **)(puVar2 + 8);
        *piVar1 = (int)puVar4;
        if (puVar4 == puVar3) {
          piVar1[1] = (int)puVar3;
        }
        else {
          *(undefined2 **)(puVar4 + 6) = puVar3;
        }
      }
      if (*piVar1 == piVar1[2]) {
        FUN_0061c1c0((int)&local_6c);
      }
    }
    local_50 = local_50 & 0xffffff00;
    *(undefined4 *)(puVar2 + 10) = 0xffffffff;
    FUN_004a4550(local_88,local_8,(uint *)&local_108);
    local_d0 = (uint *)0x0;
    local_cc = (uint *)0x0;
    local_c8 = 0;
    local_c4 = "Routing/neighborList";
    PortalGraphSearch_AppendNeighbors
              (this,routeContext,lotGraph,(uint)ppppppuVar15,&local_d0,SUB41(_exclude,0));
    local_f8 = local_d0;
    if (local_d0 != local_cc) {
      do {
        ppppppuVar15 = (undefined4 ******)*local_f8;
        pppppppuVar13 = &local_84;
        pppppppuVar9 = (undefined4 *******)local_7c;
        local_114 = ppppppuVar15;
        if ((undefined4 *******)local_7c == (undefined4 *******)0x0) {
LAB_0063ef06:
          local_fc = (undefined4 *****)
                     PortalGraphSearch_EvaluateEdgeCost
                               (this,routeContext,lotGraph,(uint)local_108,(uint)ppppppuVar15,
                                local_104);
          if ((float)local_fc < _DAT_00fec638) {
            local_10c = *(float *)(local_4c + 2) + (float)local_fc;
            for (pfVar12 = (float *)local_a4[(uint)ppppppuVar15 % local_a0]; pfVar12 != (float *)0x0
                ; pfVar12 = (float *)pfVar12[7]) {
              if (ppppppuVar15 == (undefined4 ******)*pfVar12) {
                local_b8 = pfVar12;
                local_b4 = local_a4 + (uint)ppppppuVar15 % local_a0;
                ppfVar11 = &local_b8;
                goto LAB_0063efa1;
              }
            }
            local_ac = local_a4 + local_a0;
            local_b0 = (float *)local_a4[local_a0];
            ppfVar11 = &local_b0;
LAB_0063efa1:
            pfVar12 = *ppfVar11;
            if (pfVar12 == (float *)local_a4[local_a0]) {
              local_48 = CONCAT22((short)ppppppuVar15,(short)((uint)ppppppuVar15 >> 0x10));
              local_44 = 0;
              local_20 = local_48;
              local_1c = 0;
              local_40 = 0;
              local_18 = 0;
              local_14 = local_3c;
              local_10 = local_38;
              local_f4 = local_f4 & 0xffffff00;
              local_c = local_34;
              local_24 = ppppppuVar15;
              FUN_00628e90(local_a8,local_30,(uint *)&local_24);
              pfVar12 = local_30[0];
              if (local_28 != '\0') {
                pfVar17 = local_30[0] + 1;
                puVar7 = (undefined4 *)FUN_00654810(local_f0,(uint *)&local_114);
                *puVar7 = local_108;
                pfVar12[2] = local_10c;
                local_114 = (undefined4 *****)
                            PortalGraphSearch_EstimateDistance
                                      (this,routeContext,lotGraph,(uint)ppppppuVar15,goalKey);
                pfVar12[3] = (float)local_114 + local_10c;
                FUN_0062c6e0(&local_6c,(int)pfVar17);
LAB_0063f147:
                if ((float)local_114 < (float)local_110) {
                  local_110 = local_114;
                  *outClosest = (uint)ppppppuVar15;
                }
              }
            }
            else if ((-1 < (int)pfVar12[6]) && (local_10c < pfVar12[2])) {
              puVar7 = (undefined4 *)FUN_00654810(local_f0,(uint *)&local_114);
              *puVar7 = local_108;
              pfVar12[2] = local_10c;
              local_114 = (undefined4 *****)
                          PortalGraphSearch_EstimateDistance
                                    (this,routeContext,lotGraph,(uint)ppppppuVar15,goalKey);
              pfVar12[3] = (float)local_114 + local_10c;
              FUN_0062c740(&local_6c,(int)(pfVar12 + 1));
              goto LAB_0063f147;
            }
          }
        }
        else {
          do {
            if (pppppppuVar9[4] < ppppppuVar15) {
              pppppppuVar10 = (undefined4 *******)*pppppppuVar9;
            }
            else {
              pppppppuVar10 = (undefined4 *******)pppppppuVar9[1];
              pppppppuVar13 = pppppppuVar9;
            }
            pppppppuVar9 = pppppppuVar10;
          } while (pppppppuVar10 != (undefined4 *******)0x0);
          if ((pppppppuVar13 == &local_84) || (ppppppuVar15 < pppppppuVar13[4])) goto LAB_0063ef06;
        }
        local_f8 = local_f8 + 1;
      } while (local_f8 != local_cc);
    }
    this_00 = outCrossings;
    if (local_d0 != (uint *)0x0) {
      FUN_004e44e0((int)local_d0);
      this_00 = outCrossings;
    }
  } while( true );
}

