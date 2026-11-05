/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_GetObjectAtIndex. Export
   ordinal(s): 1972. Entry VA: 0x10996000. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000264. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ObjectManagerWrap_GetObjectAtIndex(void *param_1,uint param_2)

{
  undefined4 uVar1;
  
                    /* 0x996000  1972  ObjectManagerWrap_GetObjectAtIndex */
  if (param_1 != (void *)0x0) {
    uVar1 = FUN_10243160(param_1,param_2);
    return uVar1;
  }
  return 0;
}

