/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Physical ECX collector plus five stack DWORDs, RET14h; only AL success is established. Sorts
   candidate rows, looks up full validation under host GUID low/high, slot index and heading
   ordinal, otherwise invokes CCDD60. Rule bit2 suppresses cache storage. After successful
   validation applies the PlacementOnly heading gate against float0107F33C, returns native host
   pointer, slot INDEX, distance and yaw, then clears candidate count. Slot name hashes are distinct
   callback inputs; no interchangeable index/hash claim. */

uint __thiscall
SlotCandidates_SelectFirstValidated
          (void *this,uint *param_1,uint *param_2,uint *param_3,uint *param_4,void *param_5)

{
  int *piVar1;
  byte bVar2;
  bool bVar3;
  uint uVar4;
  uint extraout_EAX;
  uint *puVar5;
  float10 fVar6;
  uint local_88;
  uint local_84;
  undefined1 local_80 [12];
  undefined4 *local_74;
  undefined4 *local_58;
  undefined4 *local_3c;
  undefined4 *local_20;
  
  piVar1 = *(int **)((int)this + 0x30);
  if (piVar1 == *(int **)((int)this + 0x34)) {
    return (uint)piVar1 & 0xffffff00;
  }
  uVar4 = FUN_00cca380(piVar1,*(int **)((int)this + 0x34));
  puVar5 = *(uint **)((int)this + 0x30);
  if (puVar5 != *(uint **)((int)this + 0x34)) {
    do {
      if ((puVar5[6] != 0) && (puVar5[7] != 0)) {
        local_84 = 0;
        local_88 = local_88 & 0xffffff00;
        uVar4 = SlotValidationCache_TryGetCandidate
                          (this,*puVar5,puVar5[1],puVar5[2],puVar5[3],(char *)&local_88,&local_84,
                           param_5);
        if ((char)uVar4 == '\0') {
          FUN_00ad7740((int)local_80);
          bVar2 = HandTool_ValidateSlotPlacementAndFloor
                            (*(void **)((int)this + 8),(void *)puVar5[6],(int *)puVar5[7],
                             (float)puVar5[8],(float *)0x0,*(char *)((int)this + 0xc),&local_84,
                             local_80);
          local_88 = CONCAT31(local_88._1_3_,bVar2);
          if ((~(byte)(local_84 >> 1) & 1) != 0) {
            SlotValidationCache_StoreCandidate
                      (this,*puVar5,puVar5[1],puVar5[2],puVar5[3],bVar2,local_84,(int)local_80);
          }
          if (((bVar2 == 0) && (param_5 != (void *)0x0)) &&
             (bVar3 = FUN_00ad6f10((int)local_80), bVar3)) {
            FUN_00ad8740(param_5,(int)local_80);
          }
          FUN_00a527c0(local_20);
          FUN_00a527c0(local_3c);
          FUN_00a527c0(local_58);
          uVar4 = FUN_00a52780(local_74);
        }
        else {
          bVar2 = (byte)local_88;
        }
        if ((bVar2 != 0) &&
           (((puVar5[7] == 0 || ((*(uint *)(puVar5[7] + 0x18) & 0x4000000) == 0)) ||
            (fVar6 = FUN_00cc92e0((float)puVar5[8],*(float *)((int)this + 0x2c)),
            uVar4 = extraout_EAX, fVar6 < (float10)_DAT_0107f33c)))) {
          if (param_1 != (uint *)0x0) {
            *param_1 = puVar5[6];
          }
          if (param_2 != (uint *)0x0) {
            *param_2 = puVar5[2];
          }
          if (param_3 != (uint *)0x0) {
            *param_3 = puVar5[4];
          }
          if (param_4 != (uint *)0x0) {
            *param_4 = puVar5[8];
          }
          *(undefined4 *)((int)this + 0x34) = *(undefined4 *)((int)this + 0x30);
          return CONCAT31((int3)((uint)*(undefined4 *)((int)this + 0x30) >> 8),1);
        }
      }
      puVar5 = puVar5 + 10;
    } while (puVar5 != *(uint **)((int)this + 0x34));
  }
  *(undefined4 *)((int)this + 0x34) = *(undefined4 *)((int)this + 0x30);
  return uVar4 & 0xffffff00;
}

