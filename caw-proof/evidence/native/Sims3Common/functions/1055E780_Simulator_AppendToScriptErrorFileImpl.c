/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_AppendToScriptErrorFileImpl. Export
   ordinal(s): 740. Entry VA: 0x1055e780. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060010EA. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl Simulator_AppendToScriptErrorFileImpl(undefined4 param_1,int param_2)

{
  uint in_EAX;
  int *piVar1;
  int iVar2;
  uint uVar3;
  
                    /* 0x55e780  740  Simulator_AppendToScriptErrorFileImpl */
  if (param_2 != 0) {
    piVar1 = (int *)FUN_1055b120();
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    in_EAX = 0;
    if (iVar2 != 0) {
      uVar3 = (**(code **)(*piVar1 + 0x150))(iVar2,param_2);
      return uVar3;
    }
  }
  return in_EAX & 0xffffff00;
}

