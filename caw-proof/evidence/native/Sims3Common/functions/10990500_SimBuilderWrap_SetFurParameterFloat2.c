/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_SetFurParameterFloat2. Export
   ordinal(s): 2352. Entry VA: 0x10990500. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000C86. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
SimBuilderWrap_SetFurParameterFloat2
          (void *param_1,uint param_2,undefined4 param_3,undefined4 param_4)

{
  int local_40 [4];
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
                    /* 0x990500  2352  SimBuilderWrap_SetFurParameterFloat2 */
  if (param_1 != (void *)0x0) {
    local_20 = 0;
    local_1c = 0;
    local_18 = 0;
    local_14 = 0;
    local_40[0] = 2;
    local_30 = param_3;
    uStack_2c = param_4;
    FUN_103db5c0(param_1,param_2,local_40);
  }
  return;
}

