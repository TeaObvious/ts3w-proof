/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x1055f224) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_LoadNthXmlAsString. Export ordinal(s):
   762. Entry VA: 0x1055f190. Original managed P/Invoke MethodDef(s): ScriptCore:0x060010E6. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl
Simulator_LoadNthXmlAsString
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 *******param_5)

{
  undefined4 uVar1;
  int *piVar2;
  int *piVar3;
  int *unaff_ESI;
  
                    /* 0x55f190  762  Simulator_LoadNthXmlAsString */
  uVar1 = FUN_1055f080(param_1,param_2,param_3,param_4,param_5);
  if ((char)uVar1 != '\0') {
    piVar2 = (int *)FUN_1055b120();
    piVar3 = (int *)(**(code **)(_DAT_00000000 + 0x18))();
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 4))();
      uVar1 = (**(code **)(*piVar2 + 0xb4))(piVar3);
      (**(code **)(*piVar3 + 0x18))();
      (**(code **)(*piVar3 + 8))();
      if (unaff_ESI != (int *)0x0) {
        (**(code **)(*unaff_ESI + 8))();
      }
      return uVar1;
    }
  }
  return 0;
}

