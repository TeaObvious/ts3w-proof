/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GraphicsUtilWrap_DrawCircle. Export ordinal(s):
   1860. Entry VA: 0x109862a0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000EE4. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
GraphicsUtilWrap_DrawCircle(undefined4 *param_1,float param_2,undefined4 param_3,int param_4)

{
  float *pfVar1;
  char cVar2;
  undefined4 local_50 [19];
  
                    /* 0x9862a0  1860  GraphicsUtilWrap_DrawCircle */
  cVar2 = param_4 != 0;
  pfVar1 = (float *)FUN_10980160(local_50,param_1);
  FUN_105c25c0(pfVar1,param_2,param_3,cVar2);
  return;
}

