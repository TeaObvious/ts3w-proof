/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* UI effect ownership/original comparison (PC 1.67, pristine SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3):
   Complete 16-instruction/67-byte constructor-shaped initialization selected by bounded NewEffect
   dispatch input kind 6. Final primary vtable=00FBBD20, whole+4 vtable=00FBBD08, whole+0x10
   interface vtable=00FBBC40; earlier stores to +4/+0x10 are overwritten. Initialize whole+8
   count=0, +0xC byte=0, +0x14=0, +0x18=1, +0x1C/+0x1D bytes=0 and +0x20/+0x24 words=0. Kind number
   and physical layout do not prove a managed concrete class ID. */

void __fastcall UiEffectKind6_InitializeInterfaces(undefined4 *param_1)

{
  param_1[1] = &PTR_LAB_00fbb1fc;
  param_1[2] = 0;
  *(undefined1 *)(param_1 + 3) = 0;
  param_1[4] = &PTR_LAB_00fbbc10;
  *param_1 = &PTR_CountedReference_Retain_00fbbd20;
  param_1[1] = &PTR_LAB_00fbbd08;
  param_1[4] = &PTR_LAB_00fbbc40;
  param_1[5] = 0;
  param_1[6] = 1;
  *(undefined1 *)(param_1 + 7) = 0;
  *(undefined1 *)((int)param_1 + 0x1d) = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  return;
}

