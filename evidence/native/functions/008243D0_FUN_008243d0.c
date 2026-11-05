/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; analyst display name SocialPlacement_HasCollectedWallBetweenPositions.
   Original Ghidra database symbol: FUN_008243d0; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [008243d0,00824697); 0 envelope gap bytes are not owned instructions.
*/

/* 82452C..67 initializes an empty footprint pointer set, including count+14=0. At 82457C..A9 the local queryRecord+40 and +44 are zeroed and +54 selects the first lot. Thus 632640 passes NULL filtering context. The same set is reused for a different second lot only when the first AL is zero (8245B5..F0); a nonempty first set containing only non-walls suppresses fallback. Only after gathering does virtual+0C kind0C/17 yield true. Pervasive pointer-star types, local_b0 float typing and type-propagation warning are decompiler artifacts; physical offsets and the paired Listing govern. Caller cleanup releases set references on ordinary return, not an established exception guarantee. */

/* WARNING: Type propagation algorithm not settling */

undefined1 __cdecl SocialPlacement_HasCollectedWallBetweenPositions(float *param_1,float *param_2)

{
  int ******ppppppiVar1;
  char cVar2;
  int iVar3;
  void *pvVar4;
  void *pvVar5;
  uint uVar6;
  int *******pppppppiVar7;
  undefined1 local_d5;
  void *local_d4;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  int local_b4;
  float local_b0;
  int *******pppppppiStack_ac;
  int *******pppppppiStack_a8;
  undefined4 *puStack_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  char *local_98;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  LotXZLevel local_7c;
  undefined1 local_70 [32];
  void *local_50;
  uint local_4c;
  undefined4 local_48;
  undefined4 local_30;
  undefined4 local_2c;
  void *local_1c;
  
  iVar3 = thunk_FUN_00835d40();
  if (iVar3 == 0) {
    local_d4 = (void *)0x0;
  }
  else {
    local_d4 = (void *)FUN_008295c0(iVar3);
  }
  pvVar5 = DAT_011edbc4;
  local_d5 = 0;
  if (DAT_011edbc4 == (void *)0x0) {
    return 0;
  }
  if (local_d4 == (void *)0x0) {
    return 0;
  }
  local_7c.x = -1.0;
  local_7c.z = -1.0;
  local_d0 = *param_1;
  fStack_cc = param_1[1];
  fStack_c8 = param_1[2];
  fStack_c4 = param_1[3];
  local_b4 = 0;
  local_7c.level = 0;
  local_90 = local_d0;
  fStack_8c = fStack_cc;
  fStack_88 = fStack_c8;
  fStack_84 = fStack_c4;
  pvVar4 = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,local_d0,fStack_c8);
  local_d0 = *param_2;
  fStack_cc = param_2[1];
  fStack_c8 = param_2[2];
  fStack_c4 = param_2[3];
  local_90 = local_d0;
  fStack_8c = fStack_cc;
  fStack_88 = fStack_c8;
  fStack_84 = fStack_c4;
  pvVar5 = LotSpatialIndex_FindContainingLotAtWorldXZ(pvVar5,local_d0,fStack_c8);
  if (pvVar4 != (void *)0x0) {
    Lot_WorldPositionToLocalLocation(pvVar4,param_1,&local_7c);
    local_b4 = local_7c.level;
  }
  iVar3 = 0;
  if (pvVar5 != (void *)0x0) {
    Lot_WorldPositionToLocalLocation(pvVar5,param_2,&local_7c);
    iVar3 = local_7c.level;
  }
  if (local_b4 != iVar3) {
    return 0;
  }
  local_90 = *param_1;
  fStack_8c = param_1[2];
  fStack_84 = param_1[3];
  local_d0 = *param_2;
  fStack_cc = param_2[2];
  fStack_c4 = param_2[3];
  fStack_88 = (float)local_b4;
  pppppppiStack_ac = (int *******)&pppppppiStack_ac;
  local_98 = "Routing/SocialGroupPlacementRayCast/FootprintSet";
  puStack_a4 = (undefined4 *)0x0;
  local_a0 = 0;
  local_9c = 0;
  fStack_c8 = (float)iVar3;
  local_b0 = local_d0;
  pppppppiStack_a8 = pppppppiStack_ac;
  FUN_0062a020((int)local_70);
  local_2c = 0;
  local_30 = 0;
  local_1c = pvVar4;
  uVar6 = LotRouting_GatherSegmentFootprints(local_d4,(uint)local_70,&local_90,&local_d0,0.01,(int)&local_b0,'\x01');
  cVar2 = (char)uVar6;
  /* 008245B5..F0: only first gather AL0 permits different-lot fallback. */
  if (pvVar4 == pvVar5) {
LAB_008245ee:
    if (cVar2 == '\0') goto LAB_0082463d;
  }
  else {
    local_1c = pvVar5;
    if (cVar2 == '\0') {
      uVar6 = LotRouting_GatherSegmentFootprints(local_d4,(uint)local_70,&local_90,&local_d0,0.01,(int)&local_b0,'\x01');
      cVar2 = (char)uVar6;
      goto LAB_008245ee;
    }
  }
  /* 00824600..21: final kind test is later than pointer-set gathering. */
  if ((int ********)pppppppiStack_a8 != &pppppppiStack_ac) {
    pppppppiVar7 = pppppppiStack_a8;
    do {
      ppppppiVar1 = pppppppiVar7[4];
      if ((ppppppiVar1 != (int ******)0x0) &&
         ((iVar3 = (*(code *)(*ppppppiVar1)[3])(), iVar3 == 0xc ||
          (iVar3 = (*(code *)(*ppppppiVar1)[3])(), iVar3 == 0x17)))) {
        local_d5 = 1;
        break;
      }
      pppppppiVar7 = (int *******)FUN_004e1030((int *)pppppppiVar7);
    } while ((int ********)pppppppiVar7 != &pppppppiStack_ac);
  }
LAB_0082463d:
  FUN_009d67f0((int)local_50,local_4c);
  local_48 = 0;
  if (1 < local_4c) {
    Memory_FreeIfNonNull(local_50);
  }
  FootprintSet_ReleaseSubtree(puStack_a4);
  return local_d5;
}
