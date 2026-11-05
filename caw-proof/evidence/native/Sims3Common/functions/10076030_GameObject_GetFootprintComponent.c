/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GameObject_GetFootprintComponent. Export
   ordinal(s): 1822. Entry VA: 0x10076030. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000BFA. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl GameObject_GetFootprintComponent(void *param_1)

{
  undefined4 uVar1;
  
                    /* 0x76030  1822  GameObject_GetFootprintComponent */
  if (param_1 != (void *)0x0) {
    uVar1 = FUN_10726da0(param_1,DAT_10c8d7e8);
    return uVar1;
  }
  return 0;
}

