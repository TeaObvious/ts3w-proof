/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_GetHairHaloLowColor. Export
   ordinal(s): 2327. Entry VA: 0x109909a0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000C5E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SimBuilderWrap_GetHairHaloLowColor(int param_1,float *param_2)

{
  uint uVar1;
  float fVar2;
  float fVar3;
  
                    /* 0x9909a0  2327  SimBuilderWrap_GetHairHaloLowColor */
  uVar1 = *(uint *)(param_1 + 0x48);
  fVar2 = (float)(uVar1 >> 8 & 0xff) * _DAT_10ab832c;
  fVar3 = (float)(uVar1 & 0xff) * _DAT_10ab832c;
  *param_2 = (float)(uVar1 >> 0x10 & 0xff) * _DAT_10ab832c;
  param_2[1] = fVar2;
  param_2[2] = fVar3;
  return;
}

