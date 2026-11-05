/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_GetCenterPos. Export ordinal(s): 1906.
   Entry VA: 0x10986860. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A8B. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl LotWrap_GetCenterPos(void *param_1,float *param_2)

{
  float local_30;
  float fStack_2c;
  float fStack_28;
  
                    /* 0x986860  1906  LotWrap_GetCenterPos */
  if (param_1 != (void *)0x0) {
    FUN_1007b000(param_1,&local_30);
    *param_2 = local_30;
    param_2[1] = fStack_2c;
    param_2[2] = fStack_28;
  }
  return;
}

