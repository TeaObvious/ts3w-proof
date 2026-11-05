/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: cdecl outputKey,x,y,32-bit maskIndex; RET. Construct low64 instance from
   wrapping coordinate word and product by2^32; CDQ occurs before ADD0x100000/ADC, so do not infer
   unsigned source prototype. Type0x00B2D882/group0x1. No checked coordinate or range normalization.
   Role name is descriptive, not a recovered original symbol. */

void __cdecl TerrainKey_MakeBlendMask(longlong *param_1,int param_2,int param_3,uint param_4)

{
  longlong lVar1;
  
  lVar1 = __allmul(param_4 + 0x100000,((int)param_4 >> 0x1f) + (uint)(0xffefffff < param_4),0,1);
  *param_1 = lVar1 + (ulonglong)(uint)(param_3 * 0x10000 + param_2);
  *(undefined4 *)(param_1 + 1) = 0xb2d882;
  *(undefined4 *)((int)param_1 + 0xc) = 1;
  return;
}

