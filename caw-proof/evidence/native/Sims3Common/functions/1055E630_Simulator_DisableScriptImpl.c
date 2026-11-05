/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_DisableScriptImpl. Export ordinal(s):
   750. Entry VA: 0x1055e630. Original managed P/Invoke MethodDef(s): ScriptCore:0x060010DF. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Simulator_DisableScriptImpl(int param_1,int param_2)

{
  char cVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  
                    /* 0x55e630  750  Simulator_DisableScriptImpl */
  piVar2 = (int *)FUN_1055b120();
  if (piVar2 != (int *)0x0) {
    cVar1 = (**(code **)(*piVar2 + 0x114))(param_1,param_2);
    if (cVar1 == '\0') {
      if (param_1 != 0 || param_2 != 0) {
        (**(code **)(*piVar2 + 0x10c))(param_1,param_2);
      }
    }
    else {
      iVar3 = FUN_1072a1a0();
      if ((iVar3 != 0) && (uVar4 = FUN_1072abb0(iVar3), uVar4 != 0)) {
        FUN_107282f0(0x20,uVar4,0);
        return;
      }
    }
  }
  return;
}

