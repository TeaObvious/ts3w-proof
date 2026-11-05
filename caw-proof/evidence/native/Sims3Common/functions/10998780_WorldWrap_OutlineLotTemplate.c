/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_OutlineLotTemplate. Export ordinal(s):
   2684. Entry VA: 0x10998780. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004C4. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
WorldWrap_OutlineLotTemplate(int param_1,void *param_2,float *param_3,float param_4,int param_5)

{
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
                    /* 0x998780  2684  WorldWrap_OutlineLotTemplate */
  if ((param_1 != 0) && (param_2 != (void *)0x0)) {
    fStack_18 = param_3[2];
    local_20 = *param_3;
    fStack_1c = param_3[1];
    fStack_14 = local_20;
    FUN_10236e80(param_2,&local_20,param_4,param_5 != 0);
  }
  return;
}

