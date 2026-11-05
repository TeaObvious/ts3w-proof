/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_LotGetCornersImpl. Export ordinal(s): 1440.
   Entry VA: 0x10580ea0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000BD0. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl World_LotGetCornersImpl(float *param_1,int param_2,int param_3)

{
  float *pfVar1;
  int iVar2;
  float local_30 [12];
  
                    /* 0x580ea0  1440  World_LotGetCornersImpl */
  pfVar1 = FUN_1057cba0(local_30,param_2,param_3);
  for (iVar2 = 0xc; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *pfVar1;
    pfVar1 = pfVar1 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

