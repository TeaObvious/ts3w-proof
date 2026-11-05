/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. If flags+0x2c bit0x800 unset,
   activate once using bit0x100: insert into global animation service (different list selected by
   signed high bit), set0x100 and EnsureRuntime. Then ensures owner service component selected by
   global011dd47c. Bits named by observed behavior only. */

void __fastcall AnimationComponent_EnsureActiveRuntime(int param_1)

{
  uint uVar1;
  
  uVar1 = *(uint *)(param_1 + 0x2c);
  if ((uVar1 & 0x800) == 0) {
    if ((uVar1 & 0x100) == 0) {
      if (DAT_011ce800 != (void *)0x0) {
        if ((int)uVar1 < 0) {
          FUN_00571a30(DAT_011ce800,param_1);
        }
        else {
          FUN_005719c0(DAT_011ce800,param_1);
        }
      }
      *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 0x100;
      AnimationComponent_EnsureRuntime(param_1);
    }
    Object_MarkUpdateFlags(*(void **)(param_1 + 4),DAT_011dd47c);
  }
  return;
}

