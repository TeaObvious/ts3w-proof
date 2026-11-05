/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX LotTerrain + key pointer/status-record pointer RET8; EAX full UInt32 layer index.
   Existing key lookup in map+40 returns recorded index,status1. Otherwise scan 18hex-byte rows in
   vector30/34, first SIGNED usage+10 <=0 is reused,status3: there is NO cliff-index exclusion on
   this first scan. If none and UNSIGNED rowcount < maximum+E8, append,status2. At cap call AE9F20
   for least eligible usage,status3. Status record also retains previous16byte key at+8 for
   rekey/undo. Rekey erases old key, clears alpha backing to zero (block descriptors8000), zeros
   usage, writes new key and map index, then AEA080 refreshes. Dynamic vectors are not a
   fixed16-layer mark bank. No safe fallback is established for least-used FFFFFFFF under
   malformed/unsatisfiable cap. */

uint __thiscall LotTerrain_SelectPaintLayer(void *this,uint *textureKey,uint *selectionRecord)

{
  int *this_00;
  int iVar1;
  undefined2 *puVar2;
  undefined4 *puVar3;
  undefined2 *puVar4;
  uint *puVar5;
  uint uVar6;
  uint uVar7;
  bool bVar8;
  int local_20 [2];
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  *selectionRecord = 0;
  FUN_005ed9e0((void *)((int)this + 0x40),local_20,textureKey);
  if (local_20[0] != *(int *)(*(int *)((int)this + 0x44) + *(int *)((int)this + 0x48) * 4)) {
    *selectionRecord = 1;
    return *(uint *)(local_20[0] + 0x10);
  }
  if ((*(int *)((int)this + 0x74) * *(int *)((int)this + 0x70) == 0) &&
     (*(int *)((int)this + 0x74) * *(int *)((int)this + 0x70) == 0)) {
    ByteBlockGrid_SetDimensions
              ((int *)((int)this + 0x70),*(int *)((int)this + 0x1c),*(int *)((int)this + 0x20));
    LotTerrain_RebuildTotalPaintAlpha((int)this);
  }
  this_00 = (int *)((int)this + 0x30);
  uVar7 = (*(int *)((int)this + 0x34) - *(int *)((int)this + 0x30)) / 0x18;
  uVar6 = 0;
  if (uVar7 != 0) {
    puVar5 = (uint *)*this_00;
    do {
      if ((int)puVar5[4] < 1) {
        *selectionRecord = 3;
        selectionRecord[2] = *puVar5;
        selectionRecord[3] = puVar5[1];
        selectionRecord[4] = puVar5[2];
        selectionRecord[5] = puVar5[3];
        if (uVar6 != 0xffffffff) goto LAB_00af003b;
        break;
      }
      uVar6 = uVar6 + 1;
      puVar5 = puVar5 + 6;
    } while (uVar6 < uVar7);
  }
  if (uVar7 < *(uint *)((int)this + 0xe8)) {
    *selectionRecord = 2;
  }
  else {
    uVar6 = LotTerrain_SelectLeastUsedPaint(this);
    *selectionRecord = 3;
    puVar5 = (uint *)(*this_00 + uVar6 * 0x18);
    selectionRecord[2] = *puVar5;
    selectionRecord[3] = puVar5[1];
    selectionRecord[4] = puVar5[2];
    selectionRecord[5] = puVar5[3];
LAB_00af003b:
    FUN_00aeb3a0((void *)((int)this + 0x40),selectionRecord + 2);
    iVar1 = *(int *)(*(int *)((int)this + 0x60) + uVar6 * 4);
    puVar2 = *(undefined2 **)(iVar1 + 0x34);
    for (puVar4 = *(undefined2 **)(iVar1 + 0x30); puVar4 != puVar2; puVar4 = puVar4 + 1) {
      *puVar4 = 0x8000;
    }
    memset(*(void **)(iVar1 + 0x10),0,*(int *)(iVar1 + 0x14) - (int)*(void **)(iVar1 + 0x10));
    *(undefined4 *)(iVar1 + 0x24) = *(undefined4 *)(iVar1 + 0x20);
    *(undefined1 *)(iVar1 + 0x40) = 0;
    bVar8 = uVar6 != uVar7;
    *(undefined4 *)(*this_00 + 0x10 + uVar6 * 0x18) = 0;
    uVar7 = uVar6;
    if (bVar8) goto LAB_00af00fa;
  }
  LotTerrain_EnsurePaintAlphaMaps(this,uVar7);
  puVar3 = *(undefined4 **)((int)this + 0x34);
  local_18 = 0;
  local_14 = 0;
  local_10 = 0;
  local_c = 0;
  if (puVar3 < *(undefined4 **)((int)this + 0x38)) {
    *(undefined4 **)((int)this + 0x34) = puVar3 + 6;
    if (puVar3 != (undefined4 *)0x0) {
      *puVar3 = 0;
      puVar3[1] = 0;
      puVar3[2] = 0;
      puVar3[3] = 0;
      puVar3[4] = local_8;
      puVar3[5] = local_4;
    }
  }
  else {
    FUN_00507490(this_00,puVar3,&local_18);
  }
LAB_00af00fa:
  puVar5 = (uint *)(*this_00 + uVar7 * 0x18);
  *puVar5 = *textureKey;
  puVar5[1] = textureKey[1];
  puVar5[2] = textureKey[2];
  puVar5[3] = textureKey[3];
  puVar5[4] = 0;
  puVar5 = (uint *)FUN_00aeb730((void *)((int)this + 0x40),textureKey);
  *puVar5 = uVar7;
  FUN_00aea080((int)this);
  return uVar7;
}

