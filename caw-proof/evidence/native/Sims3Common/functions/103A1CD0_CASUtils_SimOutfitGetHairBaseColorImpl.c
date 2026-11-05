/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimOutfitGetHairBaseColorImpl. Export
   ordinal(s): 218. Entry VA: 0x103a1cd0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600046C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

float * __cdecl CASUtils_SimOutfitGetHairBaseColorImpl(float *param_1,uint param_2)

{
  float fVar1;
  float *pfVar2;
  float local_c [3];
  
                    /* 0x3a1cd0  218  CASUtils_SimOutfitGetHairBaseColorImpl */
  pfVar2 = FUN_103a0240(local_c,param_2);
  *param_1 = *pfVar2;
  fVar1 = pfVar2[2];
  param_1[1] = pfVar2[1];
  param_1[2] = fVar1;
  return param_1;
}

