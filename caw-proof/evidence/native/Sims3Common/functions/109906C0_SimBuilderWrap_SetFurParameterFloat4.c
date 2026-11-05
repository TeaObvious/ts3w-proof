/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_SetFurParameterFloat4. Export
   ordinal(s): 2354. Entry VA: 0x109906c0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000C88. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
SimBuilderWrap_SetFurParameterFloat4
          (void *param_1,uint param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6)

{
  int local_40 [4];
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
                    /* 0x9906c0  2354  SimBuilderWrap_SetFurParameterFloat4 */
  if (param_1 != (void *)0x0) {
    local_20 = 0;
    local_1c = 0;
    local_18 = 0;
    local_14 = 0;
    local_40[0] = 4;
    local_30 = param_3;
    uStack_2c = param_4;
    uStack_28 = param_5;
    uStack_24 = param_6;
    FUN_103db5c0(param_1,param_2,local_40);
  }
  return;
}

