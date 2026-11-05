/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Rejects zero or duplicate GUID, allocates40-byte record, stores object
   GUID+0x10/+0x14 and compact location+0x18, increments insertion serial and stores low16 at+0x1c,
   computes overlap layer and optional notification.
   
   PC1.67 original static instructions. Live admission closure: zero/duplicateGUID rejected here;
   savedloaderC091C0 does NOT call this admission gate. Allocates0x28bytes (40decimal),
   compactlocation, UInt32manager serial increment stored low16+1C, layer initially0, byte+20
   category and flags; recompute/notify then link. Native serial wrap is independent of host
   supported owner count. */

undefined4 __thiscall
RugManager_AddRugRecord
          (void *this,uint param_1,int param_2,undefined1 *param_3,undefined1 param_4,
          undefined4 param_5)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  void *this_00;
  int iVar3;
  undefined4 **ppuVar4;
  undefined4 *local_8 [2];
  
  if (param_1 == 0 && param_2 == 0) {
    return 0;
  }
  U64PairMap_Find((void *)((int)this + 0xc),local_8,(ulonglong *)&param_1);
  if (local_8[0] != *(undefined4 **)(*(int *)((int)this + 0x10) + *(uint *)((int)this + 0x14) * 4))
  {
    return *(uint *)((int)this + 0x14) & 0xffffff00;
  }
  puVar2 = (undefined4 *)FUN_004e4500(0x28,"Lot/RugManager/AddRug",0);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    puVar2[1] = 0;
    *puVar2 = &PTR_FUN_0102bba4;
    puVar2[4] = 0;
    puVar2[5] = 0;
    *(undefined2 *)(puVar2 + 7) = 0;
    *(undefined2 *)((int)puVar2 + 0x1e) = 0;
    *(undefined1 *)(puVar2 + 8) = 0;
    *(undefined1 *)((int)puVar2 + 0x21) = 0;
    puVar2[2] = 0;
    puVar2[3] = 0;
  }
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = puVar2[1] + 1;
  }
  puVar2[4] = param_1;
  puVar2[5] = param_2;
  *(undefined1 *)(puVar2 + 6) = *param_3;
  *(undefined1 *)((int)puVar2 + 0x19) = param_3[1];
  *(undefined1 *)((int)puVar2 + 0x1a) = param_3[2];
  *(undefined1 *)((int)puVar2 + 0x1b) = param_3[3];
  *(int *)((int)this + 0x30) = *(int *)((int)this + 0x30) + 1;
  *(undefined2 *)(puVar2 + 7) = *(undefined2 *)((int)this + 0x30);
  ppuVar4 = local_8;
  *(undefined2 *)((int)puVar2 + 0x1e) = 0;
  *(undefined1 *)(puVar2 + 8) = param_4;
  *(undefined1 *)((int)puVar2 + 0x21) = 0;
  local_8[0] = puVar2;
  this_00 = (void *)RugManager_GetOrCreateOwnerSlot((void *)((int)this + 0xc),&param_1);
  FUN_00854d50(this_00,(int *)ppuVar4);
  uVar1 = *(undefined4 *)((int)this + 8);
  puVar2[2] = (int)this + 4;
  puVar2[3] = uVar1;
  *(undefined4 **)((int)this + 8) = puVar2 + 2;
  *(undefined4 **)puVar2[3] = puVar2 + 2;
  *(int *)((int)this + 0x2c) = *(int *)((int)this + 0x2c) + 1;
  RugManager_RecomputeOverlapLayer(this,(uint)puVar2,'\x01',(char)param_5);
  iVar3 = puVar2[1] + -1;
  puVar2[1] = iVar3;
  if (iVar3 == 0) {
    puVar2[1] = 1;
    iVar3 = (**(code **)*puVar2)(1);
  }
  return CONCAT31((int3)((uint)iVar3 >> 8),1);
}

