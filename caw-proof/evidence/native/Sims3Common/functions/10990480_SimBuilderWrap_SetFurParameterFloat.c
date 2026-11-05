/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_SetFurParameterFloat. Export
   ordinal(s): 2351. Entry VA: 0x10990480. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000C85. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SimBuilderWrap_SetFurParameterFloat(void *param_1,uint param_2,undefined4 param_3)

{
  int local_40 [4];
  undefined4 local_30;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
                    /* 0x990480  2351  SimBuilderWrap_SetFurParameterFloat */
  if (param_1 != (void *)0x0) {
    local_20 = 0;
    local_1c = 0;
    local_18 = 0;
    local_14 = 0;
    local_40[0] = 1;
    local_30 = param_3;
    FUN_103db5c0(param_1,param_2,local_40);
  }
  return;
}

