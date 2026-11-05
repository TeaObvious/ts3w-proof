/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_SetOnStairs. Export ordinal(s): 302. Entry
   VA: 0x1052fc50. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A30. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void Camera_SetOnStairs(void)

{
  int iVar1;
  int *piVar2;
  void *this;
  undefined1 unaff_retaddr;
  
                    /* 0x52fc50  302  Camera_SetOnStairs */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_1075c950(iVar1);
      if (piVar2 != (int *)0x0) {
        this = (void *)(**(code **)(*piVar2 + 0xc))(0x110fdd89);
        if (this != (void *)0x0) {
          FUN_10762e20(this,unaff_retaddr);
        }
      }
    }
  }
  return;
}

