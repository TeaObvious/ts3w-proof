/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_DestroyGameObject. Export ordinal(s):
   2616. Entry VA: 0x10998200. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000508. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

bool __cdecl WorldWrap_DestroyGameObject(int param_1)

{
  int *piVar1;
  void *pvVar2;
  undefined4 uVar3;
  
                    /* 0x998200  2616  WorldWrap_DestroyGameObject */
  if (param_1 != 0) {
    piVar1 = (int *)FUN_10967620(param_1);
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x3c))(param_1,1);
      return true;
    }
    pvVar2 = (void *)FUN_1072a1a0();
    if (pvVar2 != (void *)0x0) {
      uVar3 = FUN_1072aa70(pvVar2);
      return (char)uVar3 != '\0';
    }
  }
  return false;
}

