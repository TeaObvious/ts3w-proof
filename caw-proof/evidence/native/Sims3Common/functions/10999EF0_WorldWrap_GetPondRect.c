/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetPondRect. Export ordinal(s): 2647.
   Entry VA: 0x10999ef0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004D0. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl WorldWrap_GetPondRect(void *param_1,uint param_2,float *param_3,float *param_4)

{
  uint in_EAX;
  int local_20;
  int iStack_1c;
  int iStack_18;
  int iStack_14;
  
                    /* 0x999ef0  2647  WorldWrap_GetPondRect */
  if (param_1 != (void *)0x0) {
    in_EAX = FUN_10234db0((int)param_1);
    if (param_2 < in_EAX) {
      in_EAX = FUN_10234dc0(param_1,param_2,&local_20);
      if ((char)in_EAX != '\0') {
        *param_3 = (float)local_20;
        param_3[1] = (float)iStack_1c;
        *param_4 = (float)iStack_18;
        param_4[1] = (float)iStack_14;
        return CONCAT31((int3)((uint)param_4 >> 8),1);
      }
    }
  }
  return in_EAX & 0xffffff00;
}

