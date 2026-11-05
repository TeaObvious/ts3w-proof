/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetObjectsToIgnoreForRoute. Export
   ordinal(s): 645. Entry VA: 0x10540840. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060001A1. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl Route_GetObjectsToIgnoreForRoute(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  undefined4 unaff_EBP;
  uint uVar5;
  undefined4 auStack_c [3];
  
  piVar1 = (int *)FUN_1055b120();
  if (DAT_10c78944 != (void *)0x0) {
    piVar2 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x10))();
      piVar3 = (int *)FUN_1039b2a0((int)(piVar2 + 0x56));
      iVar4 = piVar3[1] - *piVar3 >> 3;
      if (iVar4 != 0) {
        (**(code **)(*piVar1 + 0x88))(auStack_c,iVar4);
        iVar4 = *piVar3;
        uVar5 = 0;
        if (piVar3[1] - iVar4 >> 3 != 0) {
          do {
            auStack_c[0] = *(undefined4 *)(iVar4 + 4 + uVar5 * 8);
            (**(code **)(*piVar1 + 0xa0))(&stack0xffffffec,&stack0xfffffff0,uVar5,1);
            iVar4 = *piVar3;
            uVar5 = uVar5 + 1;
          } while (uVar5 < (uint)(piVar3[1] - iVar4 >> 3));
        }
        (**(code **)(*piVar2 + 0x14))();
        return unaff_EBP;
      }
      (**(code **)(*piVar2 + 0x14))();
    }
  }
  return 0;
}

