/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GameObject_GetTransformComponent. Export
   ordinal(s): 1827. Entry VA: 0x1009d030. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000BF1. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl GameObject_GetTransformComponent(void *param_1)

{
  undefined4 uVar1;
  
                    /* 0x9d030  1827  GameObject_GetTransformComponent */
  if (param_1 != (void *)0x0) {
    uVar1 = FUN_10726da0(param_1,DAT_10c8d998);
    return uVar1;
  }
  return 0;
}

