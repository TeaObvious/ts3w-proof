/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. Receiver initialization calls0045EE80 then stores selected
   text-style defaults. Inferred undefined2 pointer indexing scales each offset by2: wrap field+250
   receives4, horizontal/vertical fields+244/+248 receive0, selected color fields receiveFFFFFFFF
   and scale field+268 receives binary32 one. Stores do not establish the complete source type or
   all higher-level CSS parser defaults. Actual instructions, body, ABI and original bytes
   unchanged. */

undefined2 * __fastcall TextStyle_Initialize(undefined2 *param_1)

{
  FUN_0045ee80(param_1);
  *(float *)(param_1 + 0x134) = 1.0;
  *(undefined4 *)(param_1 + 0x114) = 0;
  *(undefined4 *)(param_1 + 0x11a) = 0;
  *(undefined4 *)(param_1 + 0x11c) = 0;
  *(undefined4 *)(param_1 + 0x11e) = 0;
  *(undefined4 *)(param_1 + 0x120) = 0;
  *(undefined4 *)(param_1 + 0x122) = 0;
  *(undefined4 *)(param_1 + 0x124) = 0;
  *(undefined4 *)(param_1 + 0x126) = 0;
  *(undefined4 *)(param_1 + 0x12a) = 0;
  *(undefined4 *)(param_1 + 300) = 0;
  *(undefined4 *)(param_1 + 0x12e) = 0;
  *(undefined4 *)(param_1 + 0x130) = 0;
  *(undefined4 *)(param_1 + 0x132) = 0;
  *(undefined4 *)(param_1 + 0x112) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x116) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x118) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x128) = 4;
  *(undefined4 *)(param_1 + 0x136) = 0;
  *(undefined4 *)(param_1 + 0x138) = 0;
  *(undefined4 *)(param_1 + 0x13a) = 0;
  return param_1;
}

