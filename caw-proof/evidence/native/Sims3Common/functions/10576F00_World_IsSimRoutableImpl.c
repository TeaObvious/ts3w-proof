/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_IsSimRoutableImpl. Export ordinal(s): 1428.
   Entry VA: 0x10576f00. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CD2. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl World_IsSimRoutableImpl(float param_1,float param_2)

{
  bool bVar1;
  
                    /* 0x576f00  1428  World_IsSimRoutableImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    bVar1 = FUN_10240400(DAT_10c700c4,param_1,param_2);
    return bVar1;
  }
  return false;
}

