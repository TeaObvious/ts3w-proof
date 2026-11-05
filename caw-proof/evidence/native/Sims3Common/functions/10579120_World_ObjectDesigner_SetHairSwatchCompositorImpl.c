/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectDesigner_SetHairSwatchCompositorImpl.
   Export ordinal(s): 1507. Entry VA: 0x10579120. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C5E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_ObjectDesigner_SetHairSwatchCompositorImpl(undefined4 param_1)

{
  void *this;
  int *piVar1;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x579120  1507  World_ObjectDesigner_SetHairSwatchCompositorImpl */
  this = (void *)FUN_100f8460();
  piVar1 = (int *)FUN_1055b120();
  local_8 = 0;
  local_4 = 0;
  (**(code **)(*piVar1 + 0x70))(param_1);
  FUN_100f85b0(this,&local_8,(size_t)&local_4);
  return;
}

