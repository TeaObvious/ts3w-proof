/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 paired source-room state refresh. Require target+24 and service+14/pointee. Preserve old
   room, initialize query byte1 and query this interest; only in the target virtual+18 enabled
   branch initialize companion byte1 and query a present companion+28. Conditional bytes,
   external+50/+88 and target flags select 6BDE10 state updates; flag08 also transfers the companion
   target dimmer through 6BDE80. After an actual state-update call notify 6C72C0 for changed old
   room then current room; no-update early return bypasses notifications. This does not establish
   source-list insertion/removal, CEBF30 AL meaning or a universal room0/floor0 policy. */

void __fastcall LightInterest_RefreshPairedSourceRoomState(void *param_1)

{
  int *this;
  int iVar1;
  bool bVar2;
  char cVar3;
  byte bVar4;
  char local_27;
  char cStack_26;
  char cStack_25;
  uint local_24;
  float fStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  if (*(int *)((int)param_1 + 0x24) == 0) {
    return;
  }
  if (*(int **)((int)param_1 + 0x14) == (int *)0x0) {
    return;
  }
  if (**(int **)((int)param_1 + 0x14) == 0) {
    return;
  }
  local_24 = *(uint *)((int)param_1 + 0x1c);
  local_27 = '\x01';
  LightInterest_QuerySourceRoomRecord(param_1,&local_27);
  this = *(int **)((int)param_1 + 0x24);
  cVar3 = (**(code **)(*this + 0x18))();
  if (cVar3 == '\0') {
    bVar4 = *(byte *)(*(int *)((int)param_1 + 0x20) + 0x90) >> 1 & 1;
    goto LAB_006c7e16;
  }
  FUN_006c78f0((int)param_1);
  cStack_26 = *(int *)(**(int **)(*(int *)((int)param_1 + 0x14) + 4) + 0x50) == 0;
  cStack_25 = '\x01';
  bVar2 = true;
  if (local_27 == '\0') {
    (**(code **)(*this + 0x38))();
  }
  if ((*(void **)((int)param_1 + 0x28) != (void *)0x0) &&
     (LightInterest_QuerySourceRoomRecord(*(void **)((int)param_1 + 0x28),&cStack_25),
     (*(byte *)(this + 0x40) & 8) != 0)) {
    iVar1 = *(int *)(*(int *)((int)param_1 + 0x28) + 0x24);
    fStack_20 = *(float *)(iVar1 + 0x10);
    uStack_1c = *(undefined4 *)(iVar1 + 0x14);
    uStack_18 = *(undefined4 *)(iVar1 + 0x18);
    uStack_14 = *(undefined4 *)(iVar1 + 0x1c);
    LightSource_SetDimmerAboveThreshold(this,fStack_20,0);
  }
  if (local_27 == '\0') {
    if (cStack_26 != '\0') goto LAB_006c7dde;
  }
  else if ((cStack_26 == '\0') || (0 < *(int *)(**(int **)((int)param_1 + 0x14) + 0x88))) {
LAB_006c7dde:
    bVar2 = false;
  }
  if ((cStack_25 == local_27) || (!bVar2)) {
    if ((*(byte *)(this + 0x40) & 0x20) == 0) {
      return;
    }
    bVar4 = 0;
  }
  else {
    bVar4 = 1;
  }
LAB_006c7e16:
  FUN_006bde10(this,bVar4);
  if (local_24 != *(uint *)((int)param_1 + 0x1c)) {
    FUN_006c72c0(*(void **)((int)param_1 + 0x14),local_24);
  }
  FUN_006c72c0(*(void **)((int)param_1 + 0x14),*(uint *)((int)param_1 + 0x1c));
  return;
}

