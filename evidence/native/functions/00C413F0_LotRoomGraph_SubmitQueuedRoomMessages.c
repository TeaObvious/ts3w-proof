/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Original PC 1.67: For each queued8byte ID/room row, construct owner two-word payload and
   sign-extend16bit room. Submit each via7D3210, clear vector afterward; category0 marks partition
   dirty. Preserve failure/order; no delivery timing claim. */

void __fastcall LotRoomGraph_SubmitQueuedRoomMessages(int param_1)

{
  undefined4 *puVar1;
  int iVar2;
  int *piVar3;
  uint uVar4;
  uint uVar5;
  
  uVar4 = *(int *)(param_1 + 0x50) - *(int *)(param_1 + 0x4c) >> 3;
  if ((uVar4 != 0) && (*(int *)(param_1 + 4) != 0)) {
    uVar5 = 0;
    if (uVar4 != 0) {
      do {
        puVar1 = (undefined4 *)(*(int *)(param_1 + 0x4c) + uVar5 * 8);
        piVar3 = FUN_00adf150();
        if (piVar3 == (int *)0x0) {
          piVar3 = (int *)0x0;
        }
        else {
          *piVar3 = (int)&PTR_FUN_01065f8c;
          LOCK();
          piVar3[1] = 0;
          UNLOCK();
          *piVar3 = (int)&PTR_FUN_01065f8c;
        }
        iVar2 = *(int *)(param_1 + 8);
        piVar3[2] = *(int *)(iVar2 + 0x48);
        piVar3[3] = *(int *)(iVar2 + 0x4c);
        piVar3[4] = (int)*(short *)(puVar1 + 1);
        FUN_007d3210(*puVar1,piVar3);
        uVar5 = uVar5 + 1;
      } while (uVar5 < uVar4);
    }
    *(undefined4 *)(param_1 + 0x50) = *(undefined4 *)(param_1 + 0x4c);
    if ((*(int *)(*(int *)(param_1 + 4) + 0xc) == 0) &&
       (iVar2 = *(int *)(*(int *)(param_1 + 8) + 0x298), iVar2 != 0)) {
      *(undefined1 *)(iVar2 + 500) = 1;
    }
  }
  return;
}

