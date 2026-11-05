/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GameObject_GetAnimationComponent. Export
   ordinal(s): 1819. Entry VA: 0x10076070. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000BF4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl GameObject_GetAnimationComponent(void *param_1)

{
  undefined4 uVar1;
  
                    /* 0x76070  1819  GameObject_GetAnimationComponent */
  if (param_1 != (void *)0x0) {
    uVar1 = FUN_10726da0(param_1,DAT_10c80cc4);
    return uVar1;
  }
  return 0;
}

