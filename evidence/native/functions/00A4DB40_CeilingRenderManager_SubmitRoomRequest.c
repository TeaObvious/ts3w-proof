/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Original PC 1.67: Allocate16byte message, copy two words from[receiver+18]+10/+14 into
   payload+8/+C, call service+1C with0487B4AF. Pair alias as lotGUID is inferred unless producer
   mapping closes. Allocation-null path is not normalized; submission is not completion. */

void __fastcall CeilingRenderManager_SubmitRoomRequest(int param_1)

{
  int iVar1;
  undefined4 *puVar2;
  int *piVar3;
  
  puVar2 = FUN_00adf150();
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_FUN_01065f8c;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_FUN_01065f8c;
  }
  iVar1 = *(int *)(param_1 + 0x18);
  puVar2[2] = *(undefined4 *)(iVar1 + 0x10);
  puVar2[3] = *(undefined4 *)(iVar1 + 0x14);
  piVar3 = (int *)FUN_007693a0();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x1c))(0x487b4af,puVar2,0,0);
  }
  return;
}

