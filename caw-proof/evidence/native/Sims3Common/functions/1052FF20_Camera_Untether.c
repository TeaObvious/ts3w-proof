/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_Untether. Export ordinal(s): 311. Entry
   VA: 0x1052ff20. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A38. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void Camera_Untether(void)

{
  int iVar1;
  int *piVar2;
  
                    /* 0x52ff20  311  Camera_Untether */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_1075c950(iVar1);
      if (piVar2 != (int *)0x0) {
        iVar1 = (**(code **)(*piVar2 + 0xc))(0x110fdd89);
        if (iVar1 != 0) {
          FUN_10766770(iVar1);
          return;
        }
      }
    }
  }
  return;
}

