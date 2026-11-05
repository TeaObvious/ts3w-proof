/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_SetFurParameterBool. Export
   ordinal(s): 2350. Entry VA: 0x109903f0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000C84. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SimBuilderWrap_SetFurParameterBool(void *param_1,uint param_2,char param_3)

{
  int local_40 [4];
  undefined4 local_30;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
                    /* 0x9903f0  2350  SimBuilderWrap_SetFurParameterBool */
  if (param_1 != (void *)0x0) {
    local_20 = 0;
    local_1c = 0;
    local_18 = 0;
    local_14 = 0;
    local_40[0] = 5;
    local_30 = DAT_10acb0d4;
    if (param_3 == '\0') {
      local_30 = 0;
    }
    FUN_103db5c0(param_1,param_2,local_40);
  }
  return;
}

