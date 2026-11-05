/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_AddDisplacement. Export
   ordinal(s): 1026. Entry VA: 0x10569ca0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000370. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
ThumbnailManager_AddDisplacement(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
                    /* 0x569ca0  1026  ThumbnailManager_AddDisplacement */
  if (DAT_10c71150 != (void *)0x0) {
    local_20 = param_1;
    uStack_1c = param_2;
    uStack_18 = param_3;
    uStack_14 = param_1;
    FUN_1032b110(DAT_10c71150,&local_20);
  }
  return;
}

