/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetNumInterestPoints. Export ordinal(s):
   641. Entry VA: 0x10548580. Original managed P/Invoke MethodDef(s): ScriptCore:0x060001C0. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl Route_GetNumInterestPoints(uint param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  undefined4 *puVar5;
  int *piVar6;
  int iVar7;
  
  piVar4 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
  if (piVar4 == (int *)0x0) {
    return 0;
  }
  (**(code **)(*piVar4 + 0x10))();
  if ((char)piVar4[0x3d] == '\0') {
    piVar6 = piVar4 + 0x38;
    if ((int *)*piVar6 == piVar6) goto LAB_105467b8;
    piVar6 = *(int **)(*piVar6 + 8);
  }
  else {
    piVar6 = (int *)piVar4[0x3b];
  }
  if (piVar6 != (int *)0x0) {
    piVar1 = piVar6 + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    puVar5 = (undefined4 *)(**(code **)(*piVar6 + 0x15c))();
    iVar7 = 0;
    for (puVar3 = (undefined4 *)*puVar5; puVar3 != puVar5; puVar3 = (undefined4 *)*puVar3) {
      iVar7 = iVar7 + 1;
    }
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*piVar6)(1);
    }
    (**(code **)(*piVar4 + 0x14))();
    return iVar7;
  }
LAB_105467b8:
  (**(code **)(*piVar4 + 0x14))();
  return 0;
}

