/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LookAt_GetTargetObjectIdImpl. Export ordinal(s):
   449. Entry VA: 0x10535ff0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060002AB. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined8 __cdecl LookAt_GetTargetObjectIdImpl(uint param_1)

{
  undefined4 uVar1;
  int *piVar2;
  undefined4 *puVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  
  if ((param_1 & 0xff000000) == 0x46000000) {
    piVar2 = (int *)FUN_1055b120();
    puVar5 = (undefined4 *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (puVar5 != (undefined4 *)0x0) {
      puVar5[1] = puVar5[1] + 1;
      puVar3 = (undefined4 *)FUN_1058e220((int)puVar5);
      iVar4 = (**(code **)*puVar3)();
      if (iVar4 != 0) {
        uVar6 = *(undefined4 *)(iVar4 + 8);
        uVar1 = *(undefined4 *)(iVar4 + 0xc);
        goto LAB_10535358;
      }
    }
    uVar6 = 0;
    uVar1 = 0;
  }
  else {
    puVar5 = (undefined4 *)0x0;
    uVar6 = 0;
    uVar1 = 0;
  }
LAB_10535358:
  if ((puVar5 != (undefined4 *)0x0) && (iVar4 = puVar5[1], puVar5[1] = iVar4 + -1, iVar4 + -1 == 0))
  {
    puVar5[1] = 1;
    (**(code **)*puVar5)(1);
  }
  return CONCAT44(uVar1,uVar6);
}

