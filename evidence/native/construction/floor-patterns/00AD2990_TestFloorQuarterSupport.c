/* Tests selected floor support with signed lot bounds, immediate level-zero admission,
   negative-level support/basement alternatives, and positive-level direct plus neighborhood support
   paths. cdecl four stack words; only AL is a general Boolean contract. Third word selects a
   quarter; fourth is an excluded borrowed Object pointer. Analyst-assigned name. */

uint __cdecl TestFloorQuarterSupport(void *param_1,char *param_2,undefined4 param_3,uint param_4)

{
  bool bVar1;
  byte bVar2;
  char cVar3;
  char cVar4;
  uint uVar5;
  undefined4 uVar6;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  uint3 extraout_var_01;
  undefined3 extraout_var_02;
  uint3 extraout_var_03;
  int iVar7;
  undefined3 extraout_var_04;
  uint3 extraout_var_05;
  char *pcVar8;
  undefined3 extraout_var_06;
  uint3 extraout_var_07;
  uint3 uVar9;
  char cVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  undefined4 local_2c;
  char local_28;
  char local_27;
  char local_26;
  char local_24;
  char local_23;
  char local_22;
  int local_20;
  undefined2 local_1c;
  char local_1a;
  char local_19;
  undefined2 local_18;
  char local_16;
  undefined1 local_15;
  undefined4 local_14;
  undefined4 local_10;
  undefined1 local_c [12];

  pcVar8 = param_2;
  uVar5 = (uint)*param_2;
  /* 00AD2998: Validate signed X/Z/level before level-zero admission. Valid level 0 returns true; invalid level-0 coordinates still return false. */
  if ((((-1 < (int)uVar5) && ((int)uVar5 < *(int *)((int)param_1 + 0x174))) && (-1 < param_2[1])) &&
     ((int)param_2[1] < *(int *)((int)param_1 + 0x178))) {
    cVar3 = param_2[2];
    uVar5 = CONCAT31((int3)(uVar5 >> 8),cVar3);
    if ((*(int *)((int)param_1 + 0x17c) <= (int)cVar3) &&
       ((int)cVar3 <= *(int *)((int)param_1 + 0x180))) {
      if (cVar3 == '\0') {
LAB_00ad29de:
        return CONCAT31((int3)(uVar5 >> 8),1);
      }
      local_1c = *(undefined2 *)param_2;
      local_1a = param_2[2];
      /* 00AD29F5: Construct local mask 1<<(quarterIndex & 31), narrowed to a byte. The refresh caller proves q=0..3; this body has no independent quarter-index range guard. */
      local_19 = '\x01' << ((byte)param_3 & 0x1f);
      /* 00AD2A05: For negative levels, ACF820 first forces full mask 0F and strict region selection, admitting kind 3 or optional kind 6 (third argument 1). If false, test all requested basement parts using the single-quarter local cell. */
      if (cVar3 < '\0') {
        uVar6 = Lot_TestCellSupportRegionType(param_1,param_2,'\x01',(undefined1 *)0x0);
        if (((char)uVar6 == '\0') &&
           (bVar1 = LotBasement_TestAllRequestedParts(param_1,(char *)&local_1c), !bVar1)) {
          return 0;
        }
        return 1;
      }
      /* 00AD2A3A: Positive level first requires ACFF30 and the live lot bounds predicate, then tests direct support with a full-mask 0F copy and the excluded Object pointer. */
      uVar5 = TestFloorCellCornerHeightAgreement((int)param_1,param_2);
      if ((char)uVar5 != '\0') {
        bVar1 = Lot_IsSignedTileInBounds(param_1,pcVar8);
        uVar5 = CONCAT31(extraout_var,bVar1);
        if (bVar1) {
          param_2 = (char *)CONCAT13(0xf,*(undefined3 *)pcVar8);
          bVar1 = Lot_TestChimneyCellSupport(param_1,(char *)&param_2,(undefined *)param_4);
          uVar5 = CONCAT31(extraout_var_00,bVar1);
          if (!bVar1) {
            param_2 = (char *)CONCAT31(param_2._1_3_,bVar1);
            FUN_00af64f0(&local_20);
            bVar1 = FUN_00af6520(&local_20);
            uVar9 = extraout_var_01;
            if (!bVar1) {
              do {
                bVar2 = FUN_00500db0((undefined1 *)&local_20);
                local_14 = CONCAT31(local_14._1_3_,bVar2);
                local_2c = CONCAT13(local_2c._3_1_,0xffff);
                FUN_00af7480((undefined2 *)pcVar8,bVar2,(char *)&local_2c);
                bVar1 = Lot_IsSignedTileInBounds(param_1,(char *)&local_2c);
                if (bVar1) {
                  uVar6 = FUN_00af7410(bVar2);
                  local_18 = (undefined2)local_2c;
                  local_15 = (undefined1)uVar6;
                  local_10 = CONCAT31(local_10._1_3_,local_15);
                  local_16 = local_2c._2_1_;
                  if (local_2c._2_1_ < '\x01') goto LAB_00ad2d12;
                  bVar1 = Lot_HasLoadBearingRoomFloorSupport(param_1,(char *)&local_18);
                  uVar6 = CONCAT31(extraout_var_02,bVar1);
                  if (bVar1) goto LAB_00ad2d12;
                  cVar3 = FUN_00a8e0b0(*(void **)((int)param_1 + 0x290),(char *)&local_2c,
                                       (byte)local_10,'\x01');
                  if (cVar3 != '\0') {
                    param_2 = (char *)CONCAT31(param_2._1_3_,1);
                  }
                }
                FUN_00af6510(&local_20);
                bVar1 = FUN_00af6520(&local_20);
              } while (!bVar1);
              uVar9 = extraout_var_03;
              /* 00AD2B68: The wider neighborhood searches run only after the first iterator observed A8E0B0 true at least once. A true direct or first-neighbor support result returned earlier. */
              if ((char)param_2 != '\0') {
                local_2c = 0xfffffffe;
                do {
                  /* 00AD2B80: Enumerate byte-wrapped X/Z offsets -2..2 whose Manhattan distance is exactly 2 or 3. Each candidate is independently signed-bounds checked and uses full mask 0F for room/floor support. */
                  uVar11 = (int)local_2c >> 0x1f;
                  uVar13 = local_2c ^ uVar11;
                  uVar12 = 0xfffffffe;
                  uVar5 = local_2c;
                  do {
                    iVar7 = ((uVar12 ^ (int)uVar12 >> 0x1f) - ((int)uVar12 >> 0x1f)) +
                            (uVar13 - uVar11);
                    if ((iVar7 == 2) || (iVar7 == 3)) {
                      cVar3 = pcVar8[2];
                      cVar4 = *pcVar8 + (char)uVar5;
                      cVar10 = pcVar8[1] + (char)uVar12;
                      param_2._0_2_ = CONCAT11(cVar10,cVar4);
                      if (((-1 < cVar4) &&
                          ((((int)cVar4 < *(int *)((int)param_1 + 0x174) && (-1 < cVar10)) &&
                           ((int)cVar10 < *(int *)((int)param_1 + 0x178))))) &&
                         ((iVar7 = (int)cVar3, *(int *)((int)param_1 + 0x17c) <= iVar7 &&
                          (iVar7 <= *(int *)((int)param_1 + 0x180))))) {
                        uVar6 = CONCAT22((short)((uint)iVar7 >> 0x10),param_2._0_2_);
                        local_18 = param_2._0_2_;
                        local_15 = 0xf;
                        if (cVar3 < '\x01') goto LAB_00ad2d12;
                        local_16 = cVar3;
                        bVar1 = Lot_HasLoadBearingRoomFloorSupport(param_1,(char *)&local_18);
                        uVar6 = CONCAT31(extraout_var_04,bVar1);
                        if (bVar1) goto LAB_00ad2d12;
                      }
                      uVar5 = local_2c;
                    }
                    uVar12 = uVar12 + 1;
                  } while ((int)uVar12 < 3);
                  local_2c = uVar5 + 1;
                } while ((int)local_2c < 3);
                local_24 = *pcVar8 + -1;
                local_28 = *pcVar8 + '\x01';
                local_27 = pcVar8[1] + '\x01';
                local_23 = pcVar8[1] + -1;
                local_26 = pcVar8[2];
                local_22 = local_26;
                FUN_00af6450(local_c,(undefined2 *)&local_24,(undefined2 *)&local_28);
                bVar1 = TilePartRectangleIterator_IsDone((int)local_c);
                uVar9 = extraout_var_05;
                while (!bVar1) {
                  pcVar8 = (char *)TilePartRectangleIterator_Current((int)local_c);
                  if (((-1 < *pcVar8) && ((int)*pcVar8 < *(int *)((int)param_1 + 0x174))) &&
                     ((-1 < pcVar8[1] &&
                      ((((int)pcVar8[1] < *(int *)((int)param_1 + 0x178) &&
                        (*(int *)((int)param_1 + 0x17c) <= (int)pcVar8[2])) &&
                       ((int)pcVar8[2] <= *(int *)((int)param_1 + 0x180))))))) {
                    param_2 = (char *)CONCAT13(0xf,*(undefined3 *)pcVar8);
                    bVar1 = Lot_HasLowerPartitionSupport(param_1,(char *)&param_2);
                    uVar6 = CONCAT31(extraout_var_06,bVar1);
                    if (bVar1) {
/* 00AD2D12: Successful support returns AL=1; several other returns preserve upper EAX. Compare only AL. No runtime support or geometry execution is claimed by this static predicate. */
LAB_00ad2d12:
                      return CONCAT31((int3)((uint)uVar6 >> 8),1);
                    }
                  }
                  FUN_00af6610(local_c);
                  bVar1 = TilePartRectangleIterator_IsDone((int)local_c);
                  uVar9 = extraout_var_07;
                }
              }
            }
            return (uint)uVar9 << 8;
          }
          goto LAB_00ad29de;
        }
      }
    }
  }
  return uVar5 & 0xffffff00;
}
