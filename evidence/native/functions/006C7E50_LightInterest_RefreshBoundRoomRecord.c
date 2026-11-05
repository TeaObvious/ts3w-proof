/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Copies adjacent binding metadata, recomputes the interest, then, when the prebound service
   pointer is present, queries it with interest X/Z. No interest-Y argument is passed. Loads the
   returned record room identity at +0C and performs the existing room/state update callbacks. */

void __fastcall LightInterest_RefreshBoundRoomRecord(int param_1)

{
  byte *pbVar1;
  char cVar2;
  int iVar3;
  undefined *this;
  void *pvVar4;
  
  LightInterest_CopyBindingMetadata24
            (*(void **)(param_1 + 0x24),(byte *)(*(int *)(param_1 + 0x20) + 0x20));
  LightInterest_ApplyPortalStateOffset4(*(int *)(param_1 + 0x24));
  pvVar4 = *(void **)(param_1 + 0x24);
  if (**(int **)(param_1 + 0x14) == 0) {
    *(undefined4 *)(param_1 + 0x1c) = 0;
    FUN_006b7600(pvVar4,0,0);
    pvVar4 = *(void **)(param_1 + 0x24);
  }
  else {
    iVar3 = RoomPartition_QueryWorldXZ
                      ((void *)**(int **)(param_1 + 0x14),*(float *)((int)pvVar4 + 0x140),
                       *(float *)((int)pvVar4 + 0x148));
    cVar2 = '\x01';
    if (iVar3 == 0) {
      *(undefined4 *)(param_1 + 0x1c) = 0;
    }
    else {
      *(undefined4 *)(param_1 + 0x1c) = *(undefined4 *)(iVar3 + 0xc);
      cVar2 = FUN_00cebf30(iVar3);
    }
    FUN_006b7600(*(void **)(param_1 + 0x24),**(int **)(param_1 + 0x14),
                 *(undefined4 *)(param_1 + 0x1c));
    pvVar4 = *(void **)(param_1 + 0x24);
    if (*(int *)(param_1 + 0x1c) != 0) {
      FUN_006babe0(pvVar4,cVar2);
      goto LAB_006c7f0a;
    }
  }
  FUN_006bab40((int)pvVar4);
LAB_006c7f0a:
  pbVar1 = (byte *)(*(int *)(param_1 + 0x24) + 0x224);
  *pbVar1 = *pbVar1 | 0x80;
  FUN_006bc100(*(void **)(param_1 + 0x24));
  if (((*(byte *)(param_1 + 0x28) & 1) != 0) && (*(int *)(param_1 + 0x1c) != 0)) {
    FUN_006c61d0(*(int *)(param_1 + 0x14));
  }
  iVar3 = 3;
  this = FUN_006c36b0();
  FUN_006c24e0(this,iVar3);
  return;
}

