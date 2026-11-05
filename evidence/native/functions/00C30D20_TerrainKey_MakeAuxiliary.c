/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: cdecl outputKey,x,y,selector; RET. Wrap selector+2 in32bits, CDQ then
   multiply by2^48; add zero-extended low32 coordinate y*65536+x. Store type0x00B2D882/group0x1.
   Distinct from blend-mask key and layer ID; no checked widening. Role name is descriptive, not a
   recovered original symbol. */

void __cdecl TerrainKey_MakeAuxiliary(longlong *param_1,int param_2,int param_3,int param_4)

{
  longlong lVar1;
  
  lVar1 = __allmul(param_4 + 2U,(int)(param_4 + 2U) >> 0x1f,0,0x10000);
  *param_1 = lVar1 + (ulonglong)(uint)(param_3 * 0x10000 + param_2);
  *(undefined4 *)(param_1 + 1) = 0xb2d882;
  *(undefined4 *)((int)param_1 + 0xc) = 1;
  return;
}

