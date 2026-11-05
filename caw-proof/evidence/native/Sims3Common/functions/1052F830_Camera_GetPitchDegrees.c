/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_GetPitchDegrees. Export ordinal(s): 284.
   Entry VA: 0x1052f830. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A27. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

float10 Camera_GetPitchDegrees(void)

{
  int iVar1;
  int *piVar2;
  float10 fVar3;
  
                    /* 0x52f830  284  Camera_GetPitchDegrees */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_1075c950(iVar1);
      if (piVar2 != (int *)0x0) {
        iVar1 = (**(code **)(*piVar2 + 0xc))(0x110fdd89);
        if (iVar1 != 0) {
          fVar3 = FUN_10763800(iVar1);
          return fVar3;
        }
      }
    }
  }
  return (float10)0;
}

