/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction-qualified semantics. cdecl six words outLocator/localXZlevel/lot/three low-byte flags, plainRET/void. AF7DB0 first writes original onehot seed. Last flag chooses floor/ceiling-like partition branch, previous-level admission and masks09/06 or03/0C viaB49740/B49720; part-preservation flag controls expansion. Final flag5 reads original seed four-key pattern then visits candidate bits and clears only A8AE70-different patterns, skipping original bit. This preserves AF7BC0 tie choice for a tile with four distinct designs. Full region/support/diagonal/flags domain remains child scope. */

void __cdecl
FUN_00b04090(short *param_1,float *param_2,void *param_3,char param_4,char param_5,char param_6)

{
  void *pvVar1;
  bool bVar2;
  char cVar3;
  char cVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  byte bVar8;
  undefined2 local_9c;
  char local_9a;
  undefined1 local_99;
  byte local_95;
  short local_94;
  char local_92;
  byte local_91;
  undefined4 local_90;
  undefined4 local_8c;
  int local_88;
  short local_84;
  char local_82;
  char local_81;
  int local_80 [16];
  undefined4 local_40 [16];
  
  LotLocation_EncodeCellAndQuadrant(param_2,(char *)param_1);
  bVar8 = *(byte *)((int)param_1 + 3);
  local_95 = bVar8;
  if (param_6 == '\0') {
    if (param_4 == '\0') {
      *(undefined1 *)((int)param_1 + 3) = 0xf;
    }
    local_9c = *param_1;
    local_9a = (char)param_1[1] + -1;
    *(byte *)((int)param_1 + 3) = *(byte *)((int)param_1 + 3) | 0x10;
    local_99 = *(undefined1 *)((int)param_1 + 3);
    if (*(int *)((int)param_3 + 0x17c) <= (int)local_9a) {
      pvVar1 = *(void **)((int)param_3 + 0x298);
      uVar5 = FUN_00b49740(pvVar1,&local_9c);
      if ((char)uVar5 != '\0') {
        local_90._0_3_ = CONCAT12(local_9a,local_9c);
        local_8c = 0x10;
        bVar2 = FUN_00b49720(pvVar1,&local_90);
        if (bVar2) {
          local_9c = 0x609;
        }
        else {
          local_9c = 0xc03;
        }
        iVar6 = 0;
        do {
          if ((*(byte *)((int)local_80 + iVar6 + -0x1c) & local_95) != 0) {
            *(byte *)((int)param_1 + 3) = *(byte *)((int)local_80 + iVar6 + -0x1c) | 0x10;
            break;
          }
          iVar6 = iVar6 + 1;
        } while (iVar6 < 2);
      }
    }
    goto LAB_00b04381;
  }
  pvVar1 = *(void **)((int)param_3 + 0x298);
  uVar5 = FUN_00b49740(pvVar1,param_1);
  if ((char)uVar5 != '\0') {
    local_90 = CONCAT13(local_90._3_1_,*(undefined3 *)param_1);
    local_8c = 0x10;
    bVar2 = FUN_00b49720(pvVar1,&local_90);
    if (bVar2) {
      local_9c = 0x609;
    }
    else {
      local_9c = 0xc03;
    }
    iVar6 = 0;
    do {
      if ((*(byte *)((int)local_80 + iVar6 + -0x1c) & bVar8) != 0) {
        *(undefined1 *)((int)param_1 + 3) = *(undefined1 *)((int)local_80 + iVar6 + -0x1c);
        break;
      }
      iVar6 = iVar6 + 1;
    } while (iVar6 < 2);
    goto LAB_00b04381;
  }
  if ((char)param_1[1] + -1 < *(int *)((int)param_3 + 0x17c)) {
    if (param_4 == '\0') {
      *(undefined1 *)((int)param_1 + 3) = 0xf;
    }
    goto LAB_00b04381;
  }
  local_94 = *param_1;
  local_91 = *(undefined1 *)((int)param_1 + 3);
  local_92 = (char)param_1[1] + -1;
  iVar6 = Lot_ResolveCompatibleCellRegion(param_3,(char *)&local_94,'\0');
  if (((iVar6 == -1) || (iVar7 = FUN_00c8bbb0(DAT_011ee034,iVar6), iVar7 == 0)) ||
     (*(int *)(iVar7 + 0x88) != 1)) {
    cVar3 = FUN_00aceb60(iVar6);
    if (cVar3 != '\0') goto LAB_00b0427c;
    cVar3 = FUN_00aceba0(iVar6);
    local_9c = (ushort)local_9c._1_1_ << 8;
    if (cVar3 != '\0') goto LAB_00b0427c;
  }
  else {
LAB_00b0427c:
    local_9c = CONCAT11(local_9c._1_1_,1);
  }
  local_90 = 0;
  FUN_00af64f0(&local_88);
  bVar2 = FUN_00af6520(&local_88);
  while (!bVar2) {
    cVar3 = FUN_00500db0((undefined1 *)&local_88);
    local_82 = local_92;
    local_84 = local_94;
    local_81 = cVar3;
    iVar6 = Lot_ResolveCompatibleCellRegion(param_3,(char *)&local_84,'\0');
    if ((iVar6 == -1) ||
       ((((iVar7 = FUN_00c8bbb0(DAT_011ee034,iVar6), iVar7 == 0 || (*(int *)(iVar7 + 0x88) != 1)) &&
         ((iVar7 = FUN_00c8bbb0(DAT_011ee034,iVar6), iVar7 == 0 || (*(int *)(iVar7 + 0x88) != 2))))
        && ((iVar6 = FUN_00c8bbb0(DAT_011ee034,iVar6), iVar6 == 0 || (*(int *)(iVar6 + 0x88) != 4)))
        ))) {
      cVar4 = '\0';
    }
    else {
      cVar4 = '\x01';
    }
    if ((char)local_9c == cVar4) {
      local_90 = local_90 | (int)cVar3;
    }
    FUN_00af6510(&local_88);
    bVar2 = FUN_00af6520(&local_88);
  }
  if (param_4 == '\0') {
    *(undefined1 *)((int)param_1 + 3) = (undefined1)local_90;
  }
LAB_00b04381:
  if (param_5 != '\0') {
    local_94 = *param_1;
    local_92 = (char)param_1[1];
    local_91 = local_95;
    FUN_00afba70(local_80);
    FloorManager_CopyPatternKeysAtCellPart
              (*(void **)((int)param_3 + 0x290),(char *)&local_94,local_80);
    FUN_00afba70(local_40);
    iVar6 = 0;
    do {
      bVar8 = '\x01' << ((byte)iVar6 & 0x1f);
      if (((*(byte *)((int)param_1 + 3) & bVar8) != 0) && (local_95 != bVar8)) {
        local_91 = bVar8;
        FloorManager_CopyPatternKeysAtCellPart
                  (*(void **)((int)param_3 + 0x290),(char *)&local_94,local_40);
        uVar5 = FUN_00a8ae70(local_40,local_80);
        if ((char)uVar5 != '\0') {
          *(byte *)((int)param_1 + 3) = *(byte *)((int)param_1 + 3) ^ bVar8;
        }
      }
      iVar6 = iVar6 + 1;
    } while (iVar6 < 4);
  }
  return;
}
