/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GraphicsUtilWrap_DrawLine. Export ordinal(s):
   1861. Entry VA: 0x10986160. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000EE2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
GraphicsUtilWrap_DrawLine
          (undefined4 *param_1,undefined4 *param_2,undefined4 *param_3,undefined4 param_4,
          int param_5)

{
  undefined1 local_70 [16];
  undefined1 local_60 [16];
  float local_50 [19];
  
                    /* 0x986160  1861  GraphicsUtilWrap_DrawLine */
  FUN_10980160(local_50,param_3);
  local_60._8_4_ = param_2[2];
  local_60._0_4_ = *param_2;
  local_60._4_4_ = param_2[1];
  local_70._8_4_ = param_1[2];
  local_70._4_4_ = param_1[1];
  local_70._0_4_ = *param_1;
  local_70._12_4_ = local_70._0_4_;
  local_60._12_4_ = local_60._0_4_;
  FUN_105c2980((undefined1 (*) [12])local_70,(undefined1 (*) [12])local_60,local_50,param_4,
               param_5 != 0);
  return;
}

