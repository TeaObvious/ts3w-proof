/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Clears each of fourbanks' eight motion vectors, retaining their
   gain/modifier fields. Clears dragmask,anchor,current,previous,warp compensation. Input
   disable/reset calls this; ordinary rotation release does not. */

void __fastcall CameraInput_ClearMotionAndDrag(int param_1)

{
  undefined4 *puVar1;
  int iVar2;

  puVar1 = (undefined4 *)(param_1 + 0x90);
  iVar2 = 4;
  do {
    puVar1[-8] = 0;
    puVar1[-7] = 0;
    puVar1[-6] = 0;
    puVar1[-5] = 0;
    puVar1[-4] = 0;
    puVar1[-3] = 0;
    puVar1[-2] = 0;
    puVar1[-1] = 0;
    *puVar1 = 0;
    puVar1[-0x14] = 0;
    puVar1[-0x13] = 0;
    puVar1[-0x12] = 0;
    puVar1[-0x11] = 0;
    puVar1[-0x10] = 0;
    puVar1[-0xf] = 0;
    puVar1[-0xe] = 0;
    puVar1[-0xd] = 0;
    puVar1[-0xc] = 0;
    puVar1[0x10] = 0;
    puVar1[0x11] = 0;
    puVar1[0x12] = 0;
    puVar1[0x13] = 0;
    puVar1[0x14] = 0;
    puVar1[0x15] = 0;
    puVar1[0x16] = 0;
    puVar1[0x17] = 0;
    puVar1[0x18] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    puVar1[6] = 0;
    puVar1[7] = 0;
    puVar1[8] = 0;
    puVar1[9] = 0;
    puVar1[10] = 0;
    puVar1[0xb] = 0;
    puVar1[0xc] = 0;
    puVar1 = puVar1 + 0x40;
    iVar2 = iVar2 + -1;
  } while (iVar2 != 0);
  *(undefined4 *)(param_1 + 0x500) = 0;
  *(undefined4 *)(param_1 + 0x504) = 0;
  *(undefined4 *)(param_1 + 0x508) = 0;
  *(undefined4 *)(param_1 + 0x50c) = 0;
  *(undefined4 *)(param_1 + 0x4f0) = 0;
  *(undefined4 *)(param_1 + 0x4f4) = 0;
  *(undefined4 *)(param_1 + 0x4f8) = 0;
  *(undefined4 *)(param_1 + 0x4fc) = 0;
  *(undefined4 *)(param_1 + 0x510) = 0;
  *(undefined4 *)(param_1 + 0x514) = 0;
  *(undefined4 *)(param_1 + 0x518) = 0;
  *(undefined4 *)(param_1 + 0x51c) = 0;
  *(undefined4 *)(param_1 + 0x520) = 0;
  *(undefined4 *)(param_1 + 0x524) = 0;
  *(undefined4 *)(param_1 + 0x528) = 0;
  *(undefined4 *)(param_1 + 0x52c) = 0;
  *(undefined1 *)(param_1 + 0x4e0) = 0;
  return;
}

