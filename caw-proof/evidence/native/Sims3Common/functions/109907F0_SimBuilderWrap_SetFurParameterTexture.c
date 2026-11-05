/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_SetFurParameterTexture. Export
   ordinal(s): 2355. Entry VA: 0x109907f0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000C89. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
SimBuilderWrap_SetFurParameterTexture
          (void *param_1,uint param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6)

{
  int local_40 [8];
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
                    /* 0x9907f0  2355  SimBuilderWrap_SetFurParameterTexture */
  if (param_1 != (void *)0x0) {
    local_20 = param_5;
    local_1c = param_6;
    local_40[0] = 7;
    local_18 = param_3;
    local_14 = param_4;
    FUN_103db5c0(param_1,param_2,local_40);
  }
  return;
}

