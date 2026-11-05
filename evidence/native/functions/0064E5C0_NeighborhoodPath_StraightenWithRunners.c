/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* ECX filter context and one stack path; RET4. Clears context+70/+71, prepares constraint anchors,
   compacts eligible near-tail nodes, then invokes pair-offset, tail-demotion and sharp-turn
   helpers. Initializes anchor/probe runners and performs ordered sweep/visibility/cut decisions
   using node floor, usage and flag metadata. End-cluster comparisons use00FEDE8C. The completion
   leaf writes AL1; no general null/short-path admission is supplied by this body. */

undefined4 __thiscall NeighborhoodPath_StraightenWithRunners(void *this,int param_1)

{
  int iVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  float *pfVar7;
  int *this_00;
  int iVar8;
  int iVar9;
  undefined4 *puVar10;
  uint uVar11;
  float *pfVar12;
  undefined4 *puVar13;
  float fVar14;
  float fVar15;
  char local_91;
  uint local_90;
  int local_8c;
  float local_88;
  float local_84;
  uint local_80;
  float local_7c;
  float local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  int local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  float *local_58;
  uint local_54;
  uint local_50;
  int local_4c;
  float local_48;
  float local_44;
  float local_40 [16];
  
  *(undefined1 *)((int)this + 0x70) = 0;
  *(undefined1 *)((int)this + 0x71) = 0;
  local_91 = '\0';
  iVar3 = thunk_FUN_00835d40();
  if (iVar3 != 0) {
    local_91 = *(char *)(iVar3 + 0x51);
  }
  local_58 = *(float **)(param_1 + 8);
  this_00 = (int *)(param_1 + 8);
  iVar3 = *(int *)(param_1 + 0xc) - *(int *)(param_1 + 8) >> 6;
  uVar11 = 1;
  uVar5 = iVar3 - 1;
  bVar2 = false;
  local_54 = 0xffffffff;
  if (1 < uVar5) {
    iVar8 = 0x40;
    do {
      iVar9 = *(int *)(*this_00 + 0x1c + iVar8);
      iVar4 = *this_00 + iVar8;
      if (((iVar9 == 0) || (iVar9 == 8)) || (iVar9 == 9)) {
        iVar9 = *(int *)(iVar8 + *this_00 + -0x24);
        iVar1 = *(int *)(iVar8 + *this_00 + 0x5c);
        if (((*(int *)(iVar4 + 0x38) == 9) || (iVar9 == 1)) ||
           ((iVar1 == 1 || ((iVar1 == 0xb || (iVar9 == 0xb)))))) {
          *(undefined4 *)(iVar4 + 0x1c) = 10;
        }
      }
      iVar9 = *(int *)(iVar4 + 0x1c);
      if ((iVar9 == 1) || (iVar9 == 0xb)) {
        bVar2 = true;
      }
      else if (iVar9 == 10) {
        local_54 = uVar11;
      }
      uVar11 = uVar11 + 1;
      iVar8 = iVar8 + 0x40;
    } while (uVar11 < uVar5);
  }
  if (((local_91 != '\0') && (-1 < (int)local_54)) && (!bVar2)) {
    NeighborhoodPath_DemoteEligibleTailConstraints(param_1,local_54 + 1,4,0.0);
  }
  bVar2 = false;
  if (1 < uVar5) {
    iVar8 = 0x40;
    iVar3 = iVar3 + -2;
    do {
      iVar9 = *this_00 + iVar8;
      if (*(int *)(iVar9 + 0x1c) == 10) {
        iVar4 = *(int *)(iVar8 + *this_00 + -0x24);
        iVar1 = *(int *)(iVar8 + *this_00 + 0x5c);
        if (bVar2) {
          if (((iVar1 != 10) && (bVar2 = false, iVar4 == 10)) &&
             ((iVar1 != 1 && ((iVar1 != 0xb && ((*(byte *)(iVar9 + 0xe) & 0x20) == 0)))))) {
            *(undefined4 *)(iVar9 + 0x1c) = 0;
          }
        }
        else {
          if (((iVar4 == 10) || (iVar4 == 1)) || (iVar4 == 0xb)) {
LAB_0064e733:
            if (iVar1 != 10) goto LAB_0064e756;
LAB_0064e738:
            if (((iVar4 != 1) && (iVar4 != 0xb)) && ((*(byte *)(iVar9 + 0xe) & 0x20) == 0))
            goto LAB_0064e748;
          }
          else {
            if (iVar1 == 10) goto LAB_0064e738;
            if ((iVar1 == 1) || (iVar1 == 0xb)) goto LAB_0064e733;
LAB_0064e748:
            *(undefined4 *)(iVar9 + 0x1c) = 0;
          }
          if (iVar1 == 10) {
            bVar2 = true;
          }
        }
      }
LAB_0064e756:
      iVar8 = iVar8 + 0x40;
      iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
  }
  iVar3 = *(int *)(param_1 + 0xc) - *this_00;
  pfVar7 = (float *)(*(int *)(param_1 + 0xc) + -0x40);
  pfVar12 = local_40;
  for (iVar8 = 0x10; iVar8 != 0; iVar8 = iVar8 + -1) {
    *pfVar12 = *pfVar7;
    pfVar7 = pfVar7 + 1;
    pfVar12 = pfVar12 + 1;
  }
  while (uVar11 = iVar3 >> 6, 3 < uVar11) {
    iVar3 = *this_00;
    iVar8 = (uVar11 - 2) * 0x40;
    if ((((*(int *)(iVar8 + 0x1c + iVar3) != 0) ||
         (fVar15 = local_40[0] - *(float *)(iVar8 + iVar3),
         fVar14 = local_40[2] - *(float *)(iVar8 + 8 + iVar3),
         DAT_00fede8c <= fVar15 * fVar15 + fVar14 * fVar14)) ||
        (pfVar7 = (float *)((uVar11 - 3) * 0x40 + iVar3), pfVar7[7] != 0.0)) ||
       (DAT_00fede8c <=
        (local_40[0] - *pfVar7) * (local_40[0] - *pfVar7) +
        (local_40[2] - pfVar7[2]) * (local_40[2] - pfVar7[2]))) break;
    puVar10 = (undefined4 *)(uVar11 * 0x40 + -0x40 + iVar3);
    puVar13 = (undefined4 *)(iVar3 + iVar8);
    for (iVar9 = 0x10; iVar9 != 0; iVar9 = iVar9 + -1) {
      *puVar13 = *puVar10;
      puVar10 = puVar10 + 1;
      puVar13 = puVar13 + 1;
    }
    FUN_0064e4f0(this_00,uVar11 - 1);
    iVar3 = *(int *)(param_1 + 0xc) - *this_00;
  }
  NeighborhoodPath_OffsetEligibleConstraintPairs(this,param_1);
  NeighborhoodPath_DemoteEligibleTailConstraints
            (param_1,(*(int *)(param_1 + 0xc) - *this_00 >> 6) + -1,2,_DAT_00fedef4);
  NeighborhoodPath_ProjectEligibleSharpTurns(this,param_1,_DAT_00fedef0);
  local_40[0] = 0.0;
  local_40[1] = 0.0;
  local_40[2] = 0.0;
  local_40[3] = 0.0;
  local_40[4] = 0.0;
  local_40[5] = 0.0;
  local_40[6] = 0.0;
  local_40[7] = 0.0;
  local_40[8] = 0.0;
  local_40[9] = 0.0;
  local_80 = 0;
  local_7c = 0.0;
  local_78 = 0.0;
  local_74 = 0;
  local_70 = 0;
  local_6c = 0;
  local_68 = 0;
  local_64 = 0;
  local_60 = 0;
  local_5c = 0;
  NeighborhoodPathRunner_InitializeSpan(local_40,*(void **)this,param_1,0,'\0',(void *)0x0);
  NeighborhoodPathRunner_InitializeSpan(&local_80,*(void **)this,param_1,1,'\0',(void *)0x0);
  uVar11 = local_80;
  local_8c = local_68;
  local_88 = local_7c;
  local_90 = local_80;
  local_84 = local_78;
  NeighborhoodPathRunner_AdvanceSubstep(&local_80,*(void **)this,param_1);
  while( true ) {
    while( true ) {
      uVar5 = NeighborhoodPathRunner_CanSweepNode(param_1,&local_90,*(char *)((int)this + 0x72));
      if (((char)uVar5 != '\0') &&
         (((*local_58 - local_88) * (*local_58 - local_88) +
           (local_58[2] - local_84) * (local_58[2] - local_84) < DAT_00fede8c ||
          (uVar6 = FUN_00644de0(local_40,this,param_1,(int)&local_80), (char)uVar6 != '\0'))))
      break;
      local_50 = local_80;
      local_4c = local_68;
      local_48 = local_7c;
      local_44 = local_78;
      NeighborhoodPathRunner_AdvanceSubstep(&local_80,*(void **)this,param_1);
      if ((((char)uVar5 == '\0') || (local_80 == (*(int *)(param_1 + 0xc) - *this_00 >> 6) - 1U)) ||
         ((uVar5 = NeighborhoodPathRunner_CanSweepNode
                             (param_1,&local_50,*(char *)((int)this + 0x72)), (char)uVar5 == '\0' ||
          ((DAT_00fede8c <=
            (*local_58 - local_48) * (*local_58 - local_48) +
            (local_58[2] - local_44) * (local_58[2] - local_44) &&
           (uVar5 = FUN_00644de0(local_40,this,param_1,(int)&local_80), (char)uVar5 == '\0')))))) {
        if ((uVar11 == (int)local_40[0] + 1U) && (local_8c == 0)) {
          NeighborhoodPathRunner_AdvanceSubstep(local_40,*(void **)this,param_1);
        }
        else {
          NeighborhoodPathRunner_CutTowardAnchor(local_40,*(void **)this,param_1,(int *)&local_90);
        }
        if (local_40[0] == (float)((*(int *)(param_1 + 0xc) - *this_00 >> 6) + -1))
        goto LAB_0064ebee;
        NeighborhoodPathRunner_InitializeSpan
                  (&local_80,*(void **)this,param_1,(int)local_40[0] + 1,'\0',(void *)0x0);
        uVar11 = local_80;
        local_8c = local_68;
        local_88 = local_7c;
        local_90 = local_80;
        local_84 = local_78;
        NeighborhoodPathRunner_AdvanceSubstep(&local_80,*(void **)this,param_1);
      }
      else {
        uVar11 = local_80;
        local_88 = local_7c;
        local_90 = local_80;
        local_8c = local_68;
        local_84 = local_78;
        NeighborhoodPathRunner_AdvanceSubstep(&local_80,*(void **)this,param_1);
      }
    }
    uVar11 = local_80;
    local_88 = local_7c;
    local_8c = local_68;
    local_90 = local_80;
    local_84 = local_78;
    if (local_80 == (*(int *)(param_1 + 0xc) - *this_00 >> 6) - 1U) break;
    NeighborhoodPathRunner_AdvanceSubstep(&local_80,*(void **)this,param_1);
  }
  local_40[0] = (float)NeighborhoodPathRunner_CutTowardAnchor
                                 (local_40,*(void **)this,param_1,(int *)&local_90);
LAB_0064ebee:
  return CONCAT31((int3)((uint)local_40[0] >> 8),1);
}

