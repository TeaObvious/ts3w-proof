/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GraphicsUtilWrap_DrawWorldLine. Export
   ordinal(s): 1862. Entry VA: 0x10986210. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000EE3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
GraphicsUtilWrap_DrawWorldLine
          (undefined4 *param_1,undefined4 *param_2,undefined4 param_3,int param_4)

{
  undefined1 local_30 [16];
  undefined1 local_20 [28];
  
                    /* 0x986210  1862  GraphicsUtilWrap_DrawWorldLine */
  local_20._8_4_ = param_2[2];
  local_20._0_4_ = *param_2;
  local_20._4_4_ = param_2[1];
  local_30._8_4_ = param_1[2];
  local_30._4_4_ = param_1[1];
  local_30._0_4_ = *param_1;
  local_30._12_4_ = local_30._0_4_;
  local_20._12_4_ = local_20._0_4_;
  FUN_105c2980((undefined1 (*) [12])local_30,(undefined1 (*) [12])local_20,(float *)0x0,param_3,
               param_4 != 0);
  return;
}

