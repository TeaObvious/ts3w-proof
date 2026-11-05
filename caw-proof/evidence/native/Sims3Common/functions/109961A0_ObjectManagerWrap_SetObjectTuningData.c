/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_SetObjectTuningData. Export
   ordinal(s): 1994. Entry VA: 0x109961a0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000270. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
ObjectManagerWrap_SetObjectTuningData
          (void *param_1,undefined4 param_2,undefined4 param_3,void *param_4)

{
  uint in_EAX;
  
                    /* 0x9961a0  1994  ObjectManagerWrap_SetObjectTuningData */
  if (param_1 != (void *)0x0) {
    in_EAX = FUN_10247350(param_1,&param_2,param_4,(int *)&stack0x00000014);
    if ((char)in_EAX != '\0') {
      return CONCAT31((int3)(in_EAX >> 8),1);
    }
  }
  return in_EAX & 0xffffff00;
}

