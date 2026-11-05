/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x1055ef3f) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_LoadXmlAsDocument. Export ordinal(s):
   763. Entry VA: 0x1055eeb0. Original managed P/Invoke MethodDef(s): none located in the shipped
   managed assemblies. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
Simulator_LoadXmlAsDocument(uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  int *piVar2;
  int *piVar3;
  undefined4 uVar4;
  int *unaff_ESI;
  
                    /* 0x55eeb0  763  Simulator_LoadXmlAsDocument */
  bVar1 = FUN_1055e700(param_1,param_2,param_3,param_4);
  if (bVar1) {
    piVar2 = (int *)FUN_1055b120();
    piVar3 = (int *)(**(code **)(_DAT_00000000 + 0x18))();
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 4))();
      uVar4 = (**(code **)(*piVar2 + 0xb8))(piVar3);
      (**(code **)(*piVar3 + 0x18))();
      (**(code **)(*piVar3 + 8))();
      if (unaff_ESI != (int *)0x0) {
        (**(code **)(*unaff_ESI + 8))();
      }
      return uVar4;
    }
  }
  return 0;
}

