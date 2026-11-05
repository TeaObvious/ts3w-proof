/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_FrameAllImpl. Export ordinal(s): 96.
   Entry VA: 0x103a3b50. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000434. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CASUtils_FrameAllImpl(uint param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 *this;
  int *piVar3;
  
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)FUN_1055b120();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0xc))(0x39a436f);
      if (puVar2 != (undefined4 *)0x0) {
        piVar1 = (int *)FUN_108835e0();
        this = FUN_1055c9d0();
        if (this == (undefined4 *)0x0) {
          piVar3 = (int *)0x0;
        }
        else {
          piVar3 = FUN_103a0ce0(this,puVar2,0);
        }
        (**(code **)(*piVar3 + 4))();
        (**(code **)(*piVar1 + 0x1c))(0x30290f0,piVar3,0,0);
                    /* WARNING: Could not recover jumptable at 0x103a2e48. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        (**(code **)(*piVar3 + 8))();
        return;
      }
    }
  }
  return;
}

