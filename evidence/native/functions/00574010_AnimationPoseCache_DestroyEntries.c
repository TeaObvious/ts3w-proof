/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 destructor for the two-pointer cache subobject. Physical ECX is subobject base
   (state+10 when tail-called from00574050), no stack arguments, plain RET. ESI starts ECX+10; read
   minus8/subtract8 twice: actual state+18 pointer then state+10 pointer. Release each nonnull pose
   with the actual non-atomic count/deleting-virtual sequence. Do not clear keys or pointers here
   and do not confuse its relative addresses with render-state base or with forward reusable00573F80
   clear. */

void __fastcall AnimationPoseCache_DestroyEntries(int param_1)

{
  undefined4 *puVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = param_1 + 0x10;
  iVar4 = 1;
  do {
    puVar1 = *(undefined4 **)(iVar3 + -8);
    iVar3 = iVar3 + -8;
    if ((puVar1 != (undefined4 *)0x0) &&
       (iVar2 = puVar1[1], puVar1[1] = iVar2 + -1, iVar2 + -1 == 0)) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
    iVar4 = iVar4 + -1;
  } while (-1 < iVar4);
  return;
}

