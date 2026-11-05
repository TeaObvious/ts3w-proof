/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_FinishTimeLerp. Export ordinal(s): 276.
   Entry VA: 0x1052fe90. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A36. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void Camera_FinishTimeLerp(void)

{
  int iVar1;
  int *piVar2;
  
                    /* 0x52fe90  276  Camera_FinishTimeLerp */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_1075c950(iVar1);
      if (piVar2 != (int *)0x0) {
        iVar1 = (**(code **)(*piVar2 + 0xc))(0x110fdd89);
        if (iVar1 != 0) {
          FUN_10762950(iVar1);
          return;
        }
      }
    }
  }
  return;
}

