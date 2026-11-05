/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: copies the main camera's base position vector from controller +770 to the
   caller's output buffer. The base vector is distinct from sky-mode effective render pose. Raw
   proof: evidence/native/functions/0096FEF0_MainCamera_GetBasePosition.asm */

void __thiscall MainCamera_GetBasePosition(void *this,undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar1 = *(undefined4 *)((int)this + 0x774);
  uVar2 = *(undefined4 *)((int)this + 0x778);
  uVar3 = *(undefined4 *)((int)this + 0x77c);
  *param_1 = *(undefined4 *)((int)this + 0x770);
  param_1[1] = uVar1;
  param_1[2] = uVar2;
  param_1[3] = uVar3;
  return;
}

