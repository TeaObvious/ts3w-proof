/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Floor pattern key interning for change messages; descriptive label, not recovered original symbol.
   ECX manager plus64byte key pointer/outputUInt16 pointer, RET8 void. Global-null quad011EC8E0 returns0. Existing forward-map row returns low16 of node+40. New key is appended to manager+118 vector BEFORE A90E70 AddReference, then A8FA00 ID narrows to outputAX. No rollback/failure atomicity, ID-range guard or synchronization is established. */

void __thiscall FUN_00a911c0(void *this,byte *param_1,undefined2 *param_2)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  byte *pbVar4;
  undefined4 *puVar5;
  int local_8 [2];
  
  bVar1 = ResourceKeyQuad_Equals(param_1,(undefined *)&DAT_011ec8e0);
  if (bVar1) {
    *param_2 = 0;
    return;
  }
  FUN_00a8f320(*(void **)((int)this + 0xd8),local_8,param_1);
  if (local_8[0] !=
      *(int *)(*(int *)(*(int *)((int)this + 0xd8) + 4) +
              *(int *)(*(int *)((int)this + 0xd8) + 8) * 4)) {
    *param_2 = *(undefined2 *)(local_8[0] + 0x40);
    return;
  }
  puVar5 = *(undefined4 **)((int)this + 0x11c);
  if (puVar5 < *(undefined4 **)((int)this + 0x120)) {
    *(undefined4 **)((int)this + 0x11c) = puVar5 + 0x10;
    if (puVar5 != (undefined4 *)0x0) {
      pbVar4 = param_1;
      for (iVar3 = 0x10; iVar3 != 0; iVar3 = iVar3 + -1) {
        *puVar5 = *(undefined4 *)pbVar4;
        pbVar4 = pbVar4 + 4;
        puVar5 = puVar5 + 1;
      }
    }
  }
  else {
    FUN_00a8f4d0((void *)((int)this + 0x118),puVar5,(undefined4 *)param_1);
  }
  FloorKeyMap_AddReference(*(void **)((int)this + 0xd8),param_1);
  uVar2 = FloorKeyMap_FindStorageIdOrZero(*(void **)((int)this + 0xd8),param_1);
  *param_2 = (short)uVar2;
  return;
}
