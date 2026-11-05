/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CacheManager_ReadCachedData. Export ordinal(s):
   263. Entry VA: 0x1052f3a0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000B82. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 __cdecl CacheManager_ReadCachedData(int *param_1,undefined4 *param_2)

{
  undefined1 uVar1;
  
                    /* 0x52f3a0  263  CacheManager_ReadCachedData */
  if (DAT_10c786c0 == (void *)0x0) {
    return 0;
  }
  uVar1 = FUN_1052ee30(DAT_10c786c0,param_1,param_2);
  return uVar1;
}

