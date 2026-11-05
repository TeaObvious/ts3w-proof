/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectDesigner_GetPatternKeyImpl. Export
   ordinal(s): 1493. Entry VA: 0x1057b1e0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C5A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_ObjectDesigner_GetPatternKeyImpl(undefined4 *param_1)

{
  void *this;
  uint local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x57b1e0  1493  World_ObjectDesigner_GetPatternKeyImpl */
  this = (void *)FUN_100f8460();
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  FUN_100fed10(this,&local_20);
  *param_1 = local_18;
  param_1[1] = local_14;
  param_1[2] = local_20;
  param_1[3] = local_1c;
  return;
}

