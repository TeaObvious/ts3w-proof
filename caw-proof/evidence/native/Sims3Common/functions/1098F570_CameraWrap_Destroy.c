/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CameraWrap_Destroy. Export ordinal(s): 1744.
   Entry VA: 0x1098f570. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000851. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CameraWrap_Destroy(undefined4 *param_1)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x98f570  1744  CameraWrap_Destroy */
  piVar1 = param_1 + 1;
  LOCK();
  iVar2 = *piVar1;
  *piVar1 = *piVar1 + -1;
  UNLOCK();
  if (iVar2 == 1) {
    LOCK();
    *piVar1 = 1;
    UNLOCK();
    if (param_1 != (undefined4 *)0x0) {
      (**(code **)*param_1)(1);
    }
  }
  return;
}

