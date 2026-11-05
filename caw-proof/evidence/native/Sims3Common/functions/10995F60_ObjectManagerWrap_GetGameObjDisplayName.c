/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_GetGameObjDisplayName. Export
   ordinal(s): 1968. Entry VA: 0x10995f60. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000263. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ObjectManagerWrap_GetGameObjDisplayName(void *param_1,int param_2)

{
  undefined4 uVar1;
  
                    /* 0x995f60  1968  ObjectManagerWrap_GetGameObjDisplayName */
  if (param_1 == (void *)0x0) {
    return 0;
  }
  uVar1 = FUN_10246550(param_1,param_2);
  return uVar1;
}

