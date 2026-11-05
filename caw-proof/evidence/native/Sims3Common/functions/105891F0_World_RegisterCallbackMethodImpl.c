/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_RegisterCallbackMethodImpl. Export
   ordinal(s): 1566. Entry VA: 0x105891f0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000B9A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_RegisterCallbackMethodImpl(uint param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  undefined4 uVar2;
  
                    /* 0x5891f0  1566  World_RegisterCallbackMethodImpl */
  if (param_1 < 0x4c) {
    piVar1 = (int *)FUN_1055b120();
    uVar2 = (**(code **)(*piVar1 + 0x58))(param_3);
    (**(code **)(*piVar1 + 0x58))(param_1,uVar2);
    FUN_105891b0(param_1);
  }
  return;
}

