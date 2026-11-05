/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 cdecl lot/packedcell plainRET ALbool. At signedbyte(level-1), tests BOTH diagonals
   regardless of selectedquartermask, then each selectedquarter orthogonal edge. Existing physical
   partition uses C5BF40 product BearsLoad bit200(defaulttrue if lookup misses). Finally checks all
   four corner incident counts in partition graph slot1 viaB47F00; ANY unsigned count>1 admits. Not
   equivalent to any wall, a positive room ID, or currentlevel triangle coverage. */

bool __cdecl Lot_HasLowerPartitionSupport(undefined *lot,char *cell)

{
  void *this;
  char cVar1;
  bool bVar2;
  byte bVar3;
  undefined4 *puVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  char *pcVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  char cStack_7b;
  char local_74;
  undefined1 local_70;
  undefined1 local_6c;
  undefined1 local_68;
  char local_5c;
  undefined1 local_5b;
  char local_5a;
  undefined1 local_59;
  undefined1 local_58;
  char local_57;
  char local_54 [3];
  undefined1 local_51 [3];
  undefined1 local_4e [3];
  undefined1 local_4b [3];
  LotXZLevel local_48;
  LotXZLevel local_3c;
  LotXZLevel local_30;
  LotXZLevel local_24;
  float local_18;
  float local_14;
  int local_10;
  float local_c;
  float local_8;
  int local_4;
  
  this = *(void **)(lot + 0x298);
  iVar6 = (int)(char)*(undefined2 *)cell;
  fVar9 = (float)(iVar6 + 1);
  cStack_7b = (char)((ushort)*(undefined2 *)cell >> 8);
  fVar10 = (float)(cStack_7b + 1);
  cVar1 = cell[2] + -1;
  iVar7 = (int)cVar1;
  fVar11 = (float)iVar6;
  fVar12 = (float)(int)cStack_7b;
  local_18 = fVar9;
  local_14 = fVar10;
  local_10 = iVar7;
  local_c = fVar11;
  local_8 = fVar12;
  local_4 = iVar7;
  FUN_00784da0(local_54,&local_c);
  FUN_00784da0(local_51,&local_18);
  local_18 = fVar11;
  local_14 = fVar10;
  local_10 = iVar7;
  local_c = fVar9;
  local_8 = fVar12;
  local_4 = iVar7;
  FUN_00784da0(local_4e,&local_c);
  FUN_00784da0(local_4b,&local_18);
  iVar6 = 0;
  pcVar8 = local_54;
  do {
    bVar2 = FUN_00b47d20(this,pcVar8);
    if (bVar2) {
      puVar4 = FUN_00b47df0(this,pcVar8,'\0');
      bVar2 = WallProduct_BearsLoadOrMissing((undefined *)puVar4);
      if (bVar2) {
        return true;
      }
    }
    iVar6 = iVar6 + 1;
    pcVar8 = pcVar8 + 6;
  } while (iVar6 < 2);
  iVar6 = 0;
  do {
    bVar3 = '\x01' << ((byte)iVar6 & 0x1f);
    if ((cell[3] & bVar3) == 0) goto LAB_00acef0d;
    local_18 = fVar11;
    local_14 = fVar12;
    local_c = fVar11;
    local_8 = fVar12;
    switch(bVar3) {
    case 1:
      local_c = fVar11 + 1.0;
      break;
    case 2:
      local_c = fVar11 + 1.0;
      goto LAB_00acee61;
    case 4:
      local_14 = fVar12 + 1.0;
LAB_00acee61:
      local_18 = fVar11 + 1.0;
      local_8 = fVar12 + 1.0;
      break;
    case 8:
      local_14 = fVar12 + 1.0;
    }
    local_74 = (char)(int)ROUND(local_18);
    local_5c = local_74;
    local_70 = (undefined1)(int)ROUND(local_14);
    local_5b = local_70;
    local_6c = (undefined1)(int)ROUND(local_c);
    local_59 = local_6c;
    local_68 = (undefined1)(int)ROUND(local_8);
    local_58 = local_68;
    local_5a = cVar1;
    local_57 = cVar1;
    local_10 = iVar7;
    local_4 = iVar7;
    bVar2 = FUN_00b47d20(this,&local_5c);
    if (bVar2) {
      puVar4 = FUN_00b47df0(this,&local_5c,'\0');
      bVar2 = WallProduct_BearsLoadOrMissing((undefined *)puVar4);
      if (bVar2) {
        return true;
      }
    }
LAB_00acef0d:
    iVar6 = iVar6 + 1;
    if (3 < iVar6) {
      local_48.x = fVar11;
      local_48.z = fVar12;
      local_48.level = iVar7;
      uVar5 = PartitionManager_CountIncidentEdges(this,&local_48,1);
      if (uVar5 < 2) {
        local_3c.x = fVar11;
        local_3c.z = fVar12 + 1.0;
        local_3c.level = iVar7;
        uVar5 = PartitionManager_CountIncidentEdges(this,&local_3c,1);
        if (uVar5 < 2) {
          local_30.x = fVar11 + 1.0;
          local_30.z = fVar12 + 1.0;
          local_30.level = iVar7;
          uVar5 = PartitionManager_CountIncidentEdges(this,&local_30,1);
          if (uVar5 < 2) {
            local_24.x = fVar11 + 1.0;
            local_24.z = fVar12;
            local_24.level = iVar7;
            uVar5 = PartitionManager_CountIncidentEdges(this,&local_24,1);
            return 1 < uVar5;
          }
        }
      }
      return true;
    }
  } while( true );
}

