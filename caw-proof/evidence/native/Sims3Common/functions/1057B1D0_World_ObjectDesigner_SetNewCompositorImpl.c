/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectDesigner_SetNewCompositorImpl. Export
   ordinal(s): 1508. Entry VA: 0x1057b1d0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C58. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_ObjectDesigner_SetNewCompositorImpl(undefined4 param_1,undefined4 param_2)

{
  void *this;
  int *piVar1;
  uint auStack_8 [2];
  
  this = (void *)FUN_100f8460();
  piVar1 = (int *)FUN_1055b120();
  auStack_8[0] = 0;
  auStack_8[1] = 0;
  (**(code **)(*piVar1 + 0x70))(param_2);
  if (0 < (int)(auStack_8 + 1)) {
    FUN_100fd780(this,auStack_8[0],auStack_8,(size_t)(auStack_8 + 1));
  }
  return;
}

