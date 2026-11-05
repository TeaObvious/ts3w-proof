/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: copies the main camera's base target vector from controller +780 to the
   caller's output buffer. Preset capture uses this base vector, including while the rendered sky
   view uses a derived target. Raw proof:
   evidence/native/functions/0096FED0_MainCamera_GetBaseTarget.asm */

void __thiscall MainCamera_GetBaseTarget(void *this,undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar1 = *(undefined4 *)((int)this + 0x784);
  uVar2 = *(undefined4 *)((int)this + 0x788);
  uVar3 = *(undefined4 *)((int)this + 0x78c);
  *param_1 = *(undefined4 *)((int)this + 0x780);
  param_1[1] = uVar1;
  param_1[2] = uVar2;
  param_1[3] = uVar3;
  return;
}

