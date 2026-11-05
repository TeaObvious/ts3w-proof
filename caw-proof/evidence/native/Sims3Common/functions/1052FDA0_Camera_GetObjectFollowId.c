/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_GetObjectFollowId. Export ordinal(s): 283.
   Entry VA: 0x1052fda0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A33. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined8 Camera_GetObjectFollowId(void)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  
                    /* 0x52fda0  283  Camera_GetObjectFollowId */
  iVar1 = FUN_1075c630();
  if (((iVar1 == 0) || (iVar1 = FUN_10937a80(iVar1), iVar1 == 0)) ||
     (piVar2 = (int *)FUN_1075c950(iVar1), piVar2 == (int *)0x0)) {
    return 0;
  }
  iVar1 = (**(code **)(*piVar2 + 0xc))(0x110fdd89);
  iVar3 = (**(code **)(*piVar2 + 0xc))(0x4d394edb);
  if (iVar1 == 0) {
    if (iVar3 == 0) {
      return 0;
    }
    if (*(int *)(iVar3 + 0x664) != 0) {
      return *(undefined8 *)(*(int *)(iVar3 + 0x664) + 8);
    }
  }
  else if (*(int *)(iVar1 + 0x81c) != 0) {
    return *(undefined8 *)(*(int *)(iVar1 + 0x81c) + 8);
  }
  return 0;
}

