/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_DisableObjectFollow. Export ordinal(s):
   271. Entry VA: 0x1052fd40. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A32. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void Camera_DisableObjectFollow(void)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  
                    /* 0x52fd40  271  Camera_DisableObjectFollow */
  iVar1 = FUN_1075c630();
  if (((iVar1 != 0) && (iVar1 = FUN_10937a80(iVar1), iVar1 != 0)) &&
     (piVar2 = (int *)FUN_1075c950(iVar1), piVar2 != (int *)0x0)) {
    iVar1 = (**(code **)(*piVar2 + 0xc))(0x110fdd89);
    iVar3 = (**(code **)(*piVar2 + 0xc))(0x4d394edb);
    if (iVar1 != 0) {
      FUN_10766700(iVar1);
      return;
    }
    if (iVar3 != 0) {
      FUN_1076c6e0(iVar3);
      return;
    }
  }
  return;
}

