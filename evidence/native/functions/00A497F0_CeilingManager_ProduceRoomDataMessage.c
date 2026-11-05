/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC 1.67: Read live core-owner rooms/levels, construct response
   carrying[receiver+18]+48/+4C, call selected room/outside builders then submit047E6F04. No version
   snapshot, bus timing or rendered-completion claim.
   
   PC1.67 original static instructions. Selected child closure: signed min<=level<top traversal can
   skip underside levels; room enumeration then A49100 with false flag, exterior A493C0 afterward.
   Source enumeration is native span order; this parent alone does not prove managed x-major
   room-first order. Message submit is not delivery or GPU completion. */

void __fastcall CeilingManager_ProduceRoomDataMessage(void *param_1)

{
  int iVar1;
  char *pcVar2;
  undefined4 *puVar3;
  ushort *puVar4;
  char *pcVar5;
  int *piVar6;
  char cVar7;
  uint uVar8;
  ushort *puVar9;
  char local_25;
  undefined4 *local_24;
  uint local_20;
  void *local_1c;
  int local_18;
  ushort *local_14;
  ushort *local_10;
  undefined4 local_c;
  char *local_8;
  
  local_1c = *(void **)(*(int *)((int)param_1 + 0x18) + 0x298);
  local_24 = FUN_00adf150();
  if (local_24 == (undefined4 *)0x0) {
    local_24 = (undefined4 *)0x0;
  }
  else {
    *local_24 = &PTR_FUN_01065f8c;
    LOCK();
    local_24[1] = 0;
    UNLOCK();
    *local_24 = &PTR_FUN_01060578;
    local_24[4] = 0;
    local_24[5] = 0;
    local_24[6] = 0;
    local_24[7] = "Lot/LotMessageData/tCeilingMsgData/mRoomDataArray";
  }
  iVar1 = *(int *)((int)param_1 + 0x18);
  local_24[2] = *(undefined4 *)(iVar1 + 0x48);
  local_24[3] = *(undefined4 *)(iVar1 + 0x4c);
  local_18 = *(int *)(*(int *)((int)param_1 + 0x18) + 0x180);
  local_20 = *(uint *)(*(int *)((int)param_1 + 0x18) + 0x17c);
  if ((int)local_20 < local_18) {
    do {
      iVar1 = *(int *)(*(int *)((int)param_1 + 0x18) + 0x290);
      if ((iVar1 == 0) || (*(int *)(iVar1 + 0x48) == 0)) {
LAB_00a498c3:
        uVar8 = local_20;
        local_14 = (ushort *)0x0;
        local_10 = (ushort *)0x0;
        local_c = 0;
        local_8 = "LotRenderer/CeilingManager/roomIDSet";
        FUN_00b47120(local_1c,local_20,0,&local_14,'\x01');
        puVar4 = local_10;
        for (puVar9 = local_14; puVar9 != puVar4; puVar9 = puVar9 + 1) {
          CeilingManager_CollectRoomTileParts(param_1,(uint)*puVar9,(int)local_24,'\0');
        }
        if (local_14 != (ushort *)0x0) {
          Memory_FreeIfNonNull(local_14);
        }
      }
      else {
        pcVar2 = *(char **)(iVar1 + 0x38);
        cVar7 = (char)local_20 + '\x01';
        local_25 = cVar7;
        pcVar5 = (char *)FUN_00d73250(*(int *)(iVar1 + 0x34),(int)pcVar2,&local_25);
        if ((pcVar5 == pcVar2) || ((cVar7 < *pcVar5 || (pcVar5 == pcVar5 + 1)))) {
          pcVar5 = pcVar2;
        }
        uVar8 = local_20;
        if (pcVar5 == pcVar2) goto LAB_00a498c3;
      }
      local_20 = uVar8 + 1;
    } while ((int)local_20 < local_18);
  }
  puVar3 = local_24;
  CeilingManager_CollectExteriorPartsByElevation(param_1,(int)local_24);
  piVar6 = (int *)FUN_0044c4f0();
  (**(code **)(*piVar6 + 0x1c))(0x47e6f04,puVar3,0,0);
  return;
}

