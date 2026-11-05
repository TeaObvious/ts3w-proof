/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetNumSegments. Export ordinal(s): 644.
   Entry VA: 0x10548480. Original managed P/Invoke MethodDef(s): ScriptCore:0x060001AE. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl Route_GetNumSegments(uint param_1)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  undefined4 uVar4;
  int *piVar5;
  
  piVar3 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
  if (piVar3 == (int *)0x0) {
    return 0;
  }
  (**(code **)(*piVar3 + 0x10))();
  if ((char)piVar3[0x3d] == '\0') {
    piVar5 = piVar3 + 0x38;
    if ((int *)*piVar5 == piVar5) goto LAB_10545aaf;
    piVar5 = *(int **)(*piVar5 + 8);
  }
  else {
    piVar5 = (int *)piVar3[0x3b];
  }
  if (piVar5 != (int *)0x0) {
    piVar1 = piVar5 + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    uVar4 = (**(code **)(*piVar5 + 0x4c))();
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*piVar5)(1);
    }
    (**(code **)(*piVar3 + 0x14))();
    return uVar4;
  }
LAB_10545aaf:
  (**(code **)(*piVar3 + 0x14))();
  return 0;
}

