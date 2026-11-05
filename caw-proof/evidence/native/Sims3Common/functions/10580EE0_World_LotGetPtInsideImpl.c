/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_LotGetPtInsideImpl. Export ordinal(s):
   1445. Entry VA: 0x10580ee0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000BD2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

float * __cdecl World_LotGetPtInsideImpl(float *param_1,int param_2,int param_3)

{
  float fVar1;
  float *pfVar2;
  float local_c [3];
  
                    /* 0x580ee0  1445  World_LotGetPtInsideImpl */
  pfVar2 = FUN_1057ccf0(local_c,param_2,param_3);
  *param_1 = *pfVar2;
  fVar1 = pfVar2[2];
  param_1[1] = pfVar2[1];
  param_1[2] = fVar1;
  return param_1;
}

