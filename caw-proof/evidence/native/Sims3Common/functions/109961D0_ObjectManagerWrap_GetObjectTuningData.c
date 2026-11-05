/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_GetObjectTuningData. Export
   ordinal(s): 1974. Entry VA: 0x109961d0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000271. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl ObjectManagerWrap_GetObjectTuningData(void *param_1)

{
  int iVar1;
  int iVar2;
  
                    /* 0x9961d0  1974  ObjectManagerWrap_GetObjectTuningData */
  if (param_1 != (void *)0x0) {
    iVar1 = FUN_10243ef0(param_1,(uint *)&stack0x00000008);
    if (iVar1 != 0) {
      iVar1 = Ordinal_411(0x11,0);
      if (iVar1 != 0) {
        iVar2 = Ordinal_21(iVar1);
        if (-1 < iVar2) {
          FUN_10243e60(param_1,(uint *)&stack0xfffffff8,(int *)&stack0xfffffff4);
          Ordinal_22(iVar1);
          return iVar1;
        }
      }
    }
  }
  return 0;
}

