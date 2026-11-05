/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetCenter. Export ordinal(s): 2630.
   Entry VA: 0x10999d30. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004E0. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl WorldWrap_GetCenter(void *param_1,float *param_2)

{
  float fVar1;
  float fVar2;
  float *pfVar3;
  float local_20 [7];
  
                    /* 0x999d30  2630  WorldWrap_GetCenter */
  pfVar3 = FUN_1023f590(param_1,local_20,'\x01');
  fVar1 = pfVar3[1];
  fVar2 = pfVar3[2];
  *param_2 = *pfVar3;
  param_2[1] = fVar1;
  param_2[2] = fVar2;
  return;
}

