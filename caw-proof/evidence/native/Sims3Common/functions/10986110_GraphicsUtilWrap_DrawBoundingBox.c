/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GraphicsUtilWrap_DrawBoundingBox. Export
   ordinal(s): 1859. Entry VA: 0x10986110. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000EE1. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
GraphicsUtilWrap_DrawBoundingBox(void *param_1,undefined4 *param_2,undefined4 param_3,int param_4)

{
  float *pfVar1;
  char cVar2;
  float *pfVar3;
  undefined4 local_70 [8];
  float local_50 [19];
  
                    /* 0x986110  1859  GraphicsUtilWrap_DrawBoundingBox */
  FUN_10980160(local_50,param_2);
  cVar2 = param_4 != 0;
  pfVar3 = local_50;
  pfVar1 = (float *)FUN_10986b60(param_1,local_70);
  FUN_105c3000(pfVar1,pfVar3,param_3,cVar2);
  return;
}

